function flag = validation_selfCheck(potential_answer)

% potential_answer = [ 1 3 2 4 5;
%     3 5 1 4 2;
%     2 4 3 3 1;
%     5 2 4 1 3;
%     4 1 3 2 5;]


% ���ж���Ψһ���ҳ��ִ���Ψһ
%% �м��
row_flag = 1;
% kk = potential_answer(1,:)
% kk_1 = ismember(1,kk);
for ii_row = 1:5
    kk = potential_answer(ii_row,:)
    for ii_row_num = 1:5
        ii_row_flag = ismember(ii_row_num,kk)
        row_flag = ii_row_flag * row_flag
        if ~row_flag % ���� 0
            ii_row % �ڼ���
            ii_row_num % �ĸ�����ȱʧ
            break;
        end
    end
    if ~row_flag % ���� 0
        ii_row % �ڼ���
        ii_row_num % �ĸ�����ȱʧ
        break;
    end
end
flag = row_flag;

if row_flag
    %% �м��
    col_flag = 1;
    for ii_col = 1:5
        kk = potential_answer(:,ii_col)
        for ii_col_num = 1:5
            ii_col_flag = ismember(ii_col_num,kk);
            col_flag = ii_col_flag * col_flag
            if ~col_flag % ���� 0
                ii_col % �ڼ���
                ii_col_num % �ĸ�����ȱʧ
                break;
            end
        end
        if ~col_flag % ���� 0
            ii_col % �ڼ���
            ii_col_num % �ĸ�����ȱʧ
            break;
        end
    end
    flag = row_flag * col_flag
end