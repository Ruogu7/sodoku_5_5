function flag = validation_checkExistingNum( potential_answer, existing_num )
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

[a b] = find(existing_num > 0)
flag = 1;
kkk = size(a);
for iii = 1:kkk
    once_flag = potential_answer(a(iii),b(iii)) == existing_num(a(iii),b(iii))
    flag = flag * once_flag
    if ~flag % 等于 0
        iii % 第几行
        existing_num(a(iii),b(iii)) % 哪个数字缺失
        break;
    end
end



