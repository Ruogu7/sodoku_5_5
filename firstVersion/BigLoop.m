% BigLoop
existing_num = [ 0 0 2 0 0;
    0 0 0 0 0;
    0 4 0 0 0;
    0 0 0 0 0;
    0 0 0 2 0;]
% potential_answer = [ 1 3 2 4 5;
%     3 5 1 4 2;
%     2 4 3 3 1;
%     5 2 4 1 3;
%     4 1 3 2 5;]
matrix_4_4 = [ 4 4 2 2 ;
    4 2 3 4;
    2 3 4 4;
    2 4 4 4;]

k = datetime
kkk = [num2str(k.Year),'-',num2str(k.Month),'-',num2str(k.Day),'-',num2str(k.Hour),'-',num2str(k.Minute),'-result.txt']


for ii_1_1 = 1:5
    for ii_1_2 = 1:5
        % for ii_1_3 = 1:5   (1,3)
            for ii_1_4 = 1:5
                for ii_1_5 = 1:5
                    for ii_2_1 = 1:5
                        for ii_2_2 = 1:5 % 
                            for ii_2_3 = 1:5
                                for ii_2_4 = 1:5
                                    for ii_2_5 = 1:5
                                        for ii_3_1 = 1:5
                                            % for ii_3_2 = 1:5  % (3,2)
                                                for ii_3_3 = 1:5
                                                    for ii_3_4 = 1:5
                                                        for ii_3_5 = 1:5
                                                            for ii_4_1 = 1:5
                                                                for ii_4_2 = 1:5
                                                                    for ii_4_3 = 1:5
                                                                        for ii_4_4 = 1:5
                                                                            for ii_4_5 = 1:5
                                                                                for ii_5_1 = 1:5
                                                                                    for ii_5_2 = 1:5
                                                                                        for ii_5_3 = 1:5
                                                                                            % for ii_5_4 = 1:5 (5,4)
                                                                                                for ii_5_5 = 1:5
                                                                                                    
                                                                                                    % ����potential_answer
                                                                                                    potential_answer = [ii_1_1 ii_1_2 2 ii_1_4 ii_1_5;
                                                                                                        ii_2_1 ii_2_2 ii_2_3 ii_2_4 ii_2_5;
                                                                                                        ii_3_1 4 ii_3_3 ii_3_4 ii_3_5;
                                                                                                        ii_4_1 ii_4_2 ii_4_3 ii_4_4 ii_4_5;
                                                                                                        ii_5_1 ii_5_2 ii_5_3 2 ii_5_5;]
                                                                                                    flag = validation(potential_answer,existing_num,matrix_4_4)
                                                                                                    
                                                                                                    if flag  % Ϊ1, �������txt
                                                                                                        result_file = fopen(kkk,'a');%'A.txt'Ϊ�ļ�����'a'Ϊ�򿪷�ʽ���ڴ򿪵��ļ�ĩ��������ݣ����ļ��������򴴽���
                                                                                                        fprintf(result_file,'%d%d%d%d%d',potential_answer(1,:));%fpΪ�ļ������ָ��Ҫд�����ݵ��ļ���ע�⣺%d���пո�
                                                                                                        fprintf(result_file,'%d%d%d%d%d',potential_answer(2,:));
                                                                                                        fprintf(result_file,'%d%d%d%d%d',potential_answer(3,:));
                                                                                                        fprintf(result_file,'%d%d%d%d%d',potential_answer(4,:));
                                                                                                        fprintf(result_file,'%d%d%d%d%d',potential_answer(5,:));
                                                                                                    end
                                                                                                end
                                                                                            % end
                                                                                        end
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            % end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        % end
    end
end




