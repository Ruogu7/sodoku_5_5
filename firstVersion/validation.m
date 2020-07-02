function flag = validation(potential_answer,existing_num,matrix_4_4)
% existing_num = [ 0 0 2 0 0;
%     0 0 0 0 0;
%     0 4 0 0 0;
%     0 0 0 0 0;
%     0 0 0 2 0;]
% potential_answer = [ 1 3 2 4 5;
%     3 5 1 4 2;
%     2 4 3 3 1;
%     5 2 4 1 3;
%     4 1 3 2 5;]
% matrix_4_4 = [ 4 4 2 2 ;
%              4 2 3 4;
%              2 3 4 4;
%              2 4 4 4;]

% step 1����pre_condition���Ǻϣ�
% flag_Existing = validation_checkExistingNum( potential_answer, existing_num )
% 
% if ~flag_Existing % Ϊ0��
%     flag = flag_Existing;
%     return;
% end

% step 2�����ж���Ψһ���ҳ��ִ���Ψһ
flag_selfcheck = validation_selfCheck(potential_answer)
if ~flag_selfcheck % Ϊ0��
    flag = flag_selfcheck;
    return;
end

% step 3�����ж���Ψһ���ҳ��ִ���Ψһ
flag_44Matrix = validation_44Matrix( potential_answer, matrix_4_4 )

flag =  flag_Existing * flag_selfcheck * flag_44Matrix


