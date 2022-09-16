library(RGISTools)
library(sf)
library(sp)
library(raster)

user <- "jon_mikel"
pass <- "786B8usa2022"

roi.bbox <- st_bbox(c(xmin = -1.40, xmax = -1.30,
                      ymin = 42.79, ymax = 42.88), crs = 4326)

roi <- st_as_sf(st_as_sfc(roi.bbox))
toi <- as.Date("2021-07-01") + seq(0, 30, 1)

wdir <- "C:/i3/EMERAL/Sentinel/RGISTools"
wdir.sn2 <- file.path(wdir, "Sentinel-2")

sres.sn2 <- senSearch(plataform = "Sentinel-2",
                     product = "S2MSI1C",
                     dates = toi,
                     region = roi,
                     username = user,
                     password = pass)                   
                    #  cloudCover = c(0,80),

senDownload(searchres = sres.sn2,
            unzip = FALSE,
            username = user,
            password = pass,
            AppRoot = wdir.sn2,
            omit.md5.error=TRUE,
            nattempts = 3)
            # bFilter = c("B03_10m", "B08_10m", "CLDPRB_20m"),

# senDownSearch(dates = toi,
#               platform = "Sentinel-2",
#               region = roi,
#               product = "S2MSI1C",
#               username = user,
#               password = pass,
#               AppRoot = wdir,
#               omit.md5.error=TRUE,
#               verbose = TRUE,
#               nattempts = 4)

# files.sen.unzip <- list.files(wdir.sen.unzip,
#                               pattern = "\\TCI.jp2$",
#                               full.names = TRUE,
#                               recursive = TRUE)
# img.sen.rgb <- stack(files.sen.unzip[1])
# plotRGB(img.sen.rgb)

