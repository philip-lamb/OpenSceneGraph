To use this data in WebAssembly, add this to the final WebAssembly link command:

		-s FORCE_FILESYSTEM=1 \
		--preload-file share/gdal/pcs.csv@/usr/local/share/gdal/pcs.csv \
		--preload-file share/gdal/gcs.csv@/usr/local/share/gdal/gcs.csv \
		--preload-file share/gdal/gcs.override.csv@/usr/local/share/gdal/gcs.override.csv \
		--preload-file share/gdal/prime_meridian.csv@/usr/local/share/gdal/prime_meridian.csv \
		--preload-file share/gdal/unit_of_measure.csv@/usr/local/share/gdal/unit_of_measure.csv \
		--preload-file share/gdal/ellipsoid.csv@/usr/local/share/gdal/ellipsoid.csv \
		--preload-file share/gdal/coordinate_axis.csv@/usr/local/share/gdal/coordinate_axis.csv \
		--preload-file share/gdal/vertcs.override.csv@/usr/local/share/gdal/vertcs.override.csv \
		--preload-file share/gdal/vertcs.csv@/usr/local/share/gdal/vertcs.csv \
		--preload-file share/gdal/compdcs.csv@/usr/local/share/gdal/compdcs.csv \
		--preload-file share/gdal/geoccs.csv@/usr/local/share/gdal/geoccs.csv \
		--preload-file share/gdal/stateplane.csv@/usr/local/share/gdal/stateplane.csv \
