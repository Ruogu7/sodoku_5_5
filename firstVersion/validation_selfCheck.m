function flag = validation_selfCheck(potential_answer)

% potential_answer = [ 1 3 2 4 5;
%     3 5 1 4 2;
%     2 4 3 3 1;
%     5 2 4 1 3;
%     4 1 3 2 5;]


% 行列都是唯一，且出现次数唯一
%% 行检测
row_flag = 1;
% kk = potential_answer(1,:)
% kk_1 = ismember(1,kk);
for ii_row = 1:5
    kk = potential_answer(ii_row,:)
    for ii_row_num = 1:5
        ii_row_flag = ismember(ii_row_num,kk)
        row_flag = ii_row_flag * row_flag
        if ~row_flag % 等于 0
            ii_row % 第几行
            ii_row_num % 哪个数字缺失
            break;
        end
    end
    if ~row_flag % 等于 0
        ii_row % 第几行
        ii_row_num % 哪个数字缺失
        break;
    end
end
flag = row_flag;

if row_flag
    %% 列检测
    col_flag = 1;
    for ii_col = 1:5
        kk = potential_answer(:,ii_col)
        for ii_col_num = 1:5
            ii_col_flag = ismember(ii_col_num,kk);
            col_flag = ii_col_flag * col_flag
            if ~col_flag % 等于 0
                ii_col % 第几列
                ii_col_num % 哪个数字缺失
                break;
            end
        end
        if ~col_flag % 等于 0
            ii_col % 第几行
            ii_col_num % 哪个数字缺失
            break;
        end
    end
    flag = row_flag * col_flag
end