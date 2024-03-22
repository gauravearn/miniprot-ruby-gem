#!/usr/bin/ruby
# Author Gaurav Sablok
# Universitat Potsdam
# Date 2024-3-22
def filtergff(inputfile)
=BEGIN
a function to parse the gff output from the minprot 
and extract the unique ids and filter them according 
to the score
=END
        input = open(inputfile), column)
        ids = []
        status = []
        sequence = []
        score = []
        length = []
        input.each { | it | ids.push(it.strip().split()[1].to_s) }
        input.each { | it | status.push(it.strip().split()[2].to_s) }
        input.each { | it | sequence.push(it.strip().split()[3].to_s) }
        input.each { | it | score.push(it.strip().split()[4].to_i) }
        input.each { | it | length.push(it.strip().split()[5].to_i) }
        return(ids)
end
