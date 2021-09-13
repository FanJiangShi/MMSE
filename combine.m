clear;
for ii=1:100
is=num2str(ii);
name=strcat('newTn_minboot_B_4000GT_5000',is);%the datafile name need to be adjusted according to the output datafile name
load(name);

   allTn_boot(((ii-1)*block+1:ii*block)',1)=Tn_minboot(((ii-1)*block+1:ii*block)',1); 
    
    
    end
    
    


sum((allTn_boot>chi2inv(0.95,8)))/(100*block)     
%need to change the CV to chi2inv(0.95,7) to produce the second row of table 4, and to produce table 5 and 6   
    
    
    
    
    
    
    
    
    
    