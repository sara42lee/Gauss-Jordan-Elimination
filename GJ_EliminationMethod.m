%**
% *
% * @author Sara Chahardoli
% *
%A = input('Please enter the coefficient matrix:\n') ;
%b = input('Please enter the source vector:\n') ;
% or C = input('Please enter the augmented matrix:') ;
C = [4 -2 -3 6 12 ; -6 7 6.5 -6 -6.5 ;...
         1 7.5 6.25 5.5 16 ; -12 22 15.5 -1 17 ] ;
[r,~] = size(C) ;
%C = [A b]; % creating the augmented matrix

for i = 1:r
    C(i,:) = C(i,:)/C(i,i) ; % pivote equation row divided by pivote coefficient
    for j = 1:r
        if i == j % to prevent working with the current row
            continue ;
        else
            C(j,:) = C(j,:) - (C(i,:).*C(j,i)) ; % 
            % pivot equation row is subtracted 
            % from product of the remaining 
            % rows and the first element of each row
            disp(C) ; % to show C in every step
        end
    end
end
disp('The answer is:') ;
disp(C) ;
% or disp(C(:,end)) ;