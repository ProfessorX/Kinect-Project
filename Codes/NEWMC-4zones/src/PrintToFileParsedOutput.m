function PrintToFileParsedOutput(inputStruct, outputfilename)
% Prints to file the input struct in a specific format

fid = fopen(outputfilename, 'wt+');
for i = 1:size(inputStruct, 2)
    fprintf(fid, '%s', cell2mat(inputStruct{i}.date));
%     sprintf('%s', cell2mat(inputStruct{i}.date))
    fprintf(fid, '\n');
%     sprintf('\n')
    for j = 1:48
        fprintf(fid, '%s %d %d', cell2mat(inputStruct{i}.time(j)), inputStruct{i}.infinal(j), inputStruct{i}.outfinal(j));
%         sprintf('%s %d %d', cell2mat(inputStruct{i}.time(j)), inputStruct{i}.infinal(j), inputStruct{i}.outfinal(j))
        fprintf(fid, '\n');
%         sprintf('\n')
    end
    fprintf(fid, '\n');
end
fclose(fid);