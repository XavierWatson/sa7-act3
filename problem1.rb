
def extract_data(file)
 lines = File.readlines(file)
    lines.each do |line|
        unless line == lines[0]
            line = line.split(',')
            hash = {"Name" => line[0],"Age" => line[1], "City" => line[2]}
            puts hash
        end
    end
end

ARGV.each do |input|
    extract_data(input.to_s)
end
