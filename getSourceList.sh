
# Run .\getSourceList.sh in terminal to generate an updated list of source for CMake

# Prepare PATH to search
SOURCE_PATH='Src/*'

# Excute bash command find using PATH
SOURCE_SRC="$(eval find "$SOURCE_PATH" -type f -name '*.c' -o -name '*.cpp' -o -name '*.s')"

# Print find result
printf "$SOURCE_SRC" > cmake/SourceList.txt

# Adding ${PROJ_PATH}/ to beginning of each line
sed -i 's/^/${PROJ_PATH}\//' cmake/SourceList.txt