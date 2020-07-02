function flag = validation_44Matrix( potential_answer, matrix_4_4 )
% potential_answer = [ 1 3 2 4 5;
%      5     1     2     4     3
%      1     5     4     3     2
%      2     4     3     1     5
%      3     2     1     5     4
%      4     3     5     2     1]
% 44matrix = [ 4 4 2 2 ;
%              4 2 3 4;
%              2 3 4 4;
%              2 4 4 4;]
flag_44matrix = 1;
flag = 1;
for ii = 1:4
    for jj = 1:4
        kkk = [potential_answer(ii,jj) potential_answer(ii,jj+1) potential_answer(ii+1,jj) potential_answer(ii+1,jj+1)  ];
        gap = max(kkk) - min(kkk);
        if gap ~= matrix_4_4(ii,jj)   % �����������������˳�����ѭ����������ѭ���У��ٴ��˳���
            flag_44matrix = 0;
            break;            
        end        
    end
    if ~flag_44matrix
        flag = flag_44matrix;
        break;
    end
end
