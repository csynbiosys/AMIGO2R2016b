%averagefluo=nanmean(fluorescenceMatrix);
segments = LoadSegmentation(parameters);
for currIm=1:5
    fluorescence = ComputeFluorescence(segments, currIm, parameters);
end