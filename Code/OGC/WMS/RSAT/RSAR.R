library(rsat)
library(sf)
library(terra)
library(jpeg)
library(tiff)
library(future)

RGB = function(green, red, blue) {
    return(c(red, green, blue))
}

check_sentinel_data_in_db <- function(db_path, search_records) {

    n_img <- 0

    if (dir.exists(file.path(db_path, "Sentinel-2", "S2MSI2A"))) {
        for (image in names(search_records)) {
            if (dir.exists(file.path(db_path, image + ".zip"))) {
                n_img <- n_img + 1
            }
        }
    }

    print(paste(n_img, " descargadas de ", length(search_records)))
    return(n_img == length(search_records))
}

get_sentinel_image <- function(bbox, dates, path) {

    set_credentials("rsat.package", "UpnaSSG.2021")

    roi <- st_sf(st_as_sfc(st_bbox(c(xmin = bbox$lon_min, xmax = bbox$lon_max, ymin = bbox$lat_min, ymax = bbox$lat_max), crs = 4326)))
    toi <- dates

    search.records <- rsat_search(region = roi, product = c("S2MSI2A"), dates = toi, lvl=2)

    if (length(search.records) > 1) {

        db.path <- file.path(path, "DATABASE")
        rtoi.path <- file.path(path, "regions")
        if (!dir.exists(db.path)) { dir.create(db.path) }
        if (!dir.exists(rtoi.path)) { dir.create(rtoi.path) }

        if (dir.exists(file.path(rtoi.path, "rtoi"))) { unlink(file.path(rtoi.path, "rtoi"), recursive = TRUE) }
        rtoi <- new_rtoi("rtoi", roi, rtoi.path, db.path)
        
        future(rsat_download(rtoi))

        finish <- FALSE
        while (!finish) {
            print("Descargando imágenes...")
            finish <- check_sentinel_data_in_db(db.path, search.records)
            print(finish)
            Sys.sleep(5)  
        }
        
        print("Fin")

        # rsat_mosaic(rtoi, overwrite = TRUE, bfilter = c ("B02_10m", "B03_10m", "B04_10m"))

        # rsat_derive(rtoi, product = "S2MSI2A", variable = "rgb", fun = RGB)
        # suppressWarnings(rgb <- rsat_get_SpatRaster(rtoi, "S2MSI2A", "rgb"))

        # rgb.stretch <- stretch(rgb)
        # r <- rgb.stretch
        # RGB(r) <- 1:3
        # img <- colorize(r, to="col", alpha=FALSE, stretch=NULL, grays=FALSE)
        # writeRaster(img, filename = "images/rgbRaster.tif", overwrite=TRUE)
        # img <- readTIFF("images/rgbRaster.tif", native=TRUE)
        # writeJPEG(img, target = "images/arga1.jpeg", quality = 1)
    
    } else {
        print("No hay registros para la región y tiempo de interés")
    }  
}

tudela_coords <- list(lat_min = 42.05, lon_min = -1.61, lat_max = 42.07, lon_max = -1.58) 
arga_coords <- list(lat_min = 42.53, lon_min = -1.98, lat_max = 42.54, lon_max = -1.97)

range_dates <- seq(as.Date("2021-07-01"), as.Date("2021-07-31"),1)
base_path <- tempdir()

get_sentinel_image(tudela_coords, range_dates, base_path)
