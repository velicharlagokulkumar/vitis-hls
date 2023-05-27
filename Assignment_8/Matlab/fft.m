file1 = fopen('/MATLAB Drive/imag2.txt','r')
file2 = fopen('/MATLAB Drive/real2.txt','r')
file3=fopen('output_fft.txt','w')

%cp_added=[]
cp_removed=[]
c=0

while ~feof(file1) && ~feof(file2)
    line1 = fgetl(file1);
    line2 = fgetl(file2);
    cp_removed = [cp_removed; complex(str2double(line2), str2double(line1))];
end

%cp_l = [320, 288];
%for i = 1:numel(cp_l)
 %   for j = 1:4096
  %      cp_removed = [cp_removed; cp_added(cp_l(i) + j + c)];
  %  end
   % c = c + 288;
%end

fft_result = fft(cp_removed);
for k = 1:numel(fft_result)

fprintf(file3, '%f +i%f\n', real(fft_result(k)), imag(fft_result(k)));
end


fclose(file1);
fclose(file2);
fclose(file3);