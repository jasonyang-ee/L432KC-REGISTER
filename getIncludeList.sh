# Run .\getIncludeList.sh in terminal to generate an updated list of source for CMake


SOURCE_INC="$(eval find * -type d -name 'Inc' -o -name 'CMSIS')"

# Print find result
printf "$SOURCE_INC" > cmake/IncludeList.txt

# Adding ${PROJ_PATH}/ to beginning of each line
sed -i 's/^/${PROJ_PATH}\//' cmake/IncludeList.txt