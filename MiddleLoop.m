% MiddleLoop
% author: ruogu7
% email: 380545156@qq.com
% date: 07/01/2020
% latest update: 07/02/2020
% link: https://zhuanlan.zhihu.com/p/152489404

clear all; clc;
%% 初始条件
existing_num = [ 0 0 2 0 0;
    0 0 0 0 0;
    0 4 0 0 0;
    0 0 0 0 0;
    0 0 0 2 0;];
% potential_answer = [ 1 3 2 4 5;
%     3 5 1 4 2;
%     2 4 3 3 1;
%     5 2 4 1 3;
%     4 1 3 2 5;]
matrix_4_4 = [ 4 4 2 2 ;
    4 2 3 4;
    2 3 4 4;
    2 4 4 4;];
fullset = [1 2 3 4 5 ];

%% 结果文件
k = datetime;
kkk_file = [num2str(k.Year),'-',num2str(k.Month),'-',num2str(k.Day),'-',num2str(k.Hour),'-',num2str(k.Minute),'-result.txt']
%% 结果文件
% 已填数据集合

% for r_l_num = 1:25
%     rr = 1 + floor((r_l_num-1)/5)
%     ll = mod(r_l_num, 5)
%     if ll == 0
%         ll = 5
%     end
% end

%% 中型迭代
% (1,1)
v_1_1_set = unique([existing_num(1,:),existing_num(:,1)'])
v_1_1_set_avai = setdiff(fullset,v_1_1_set)
for ii_1_1 = v_1_1_set_avai
    % 取得先前的干净数据
    v_existing_num_1 = existing_num;
    % 更新已有数据
    v_existing_num_1(1,1) = ii_1_1
    
    % (1，2)
    v_1_2_set = unique([v_existing_num_1(1,:),v_existing_num_1(:,2)']);
    v_1_2_set_avai = setdiff(fullset,v_1_2_set)
    for ii_1_2 = v_1_2_set_avai
        % 取得先前的干净数据
        v_existing_num_2 = v_existing_num_1;
        % 更新已有数据
        v_existing_num_2(1,2) = ii_1_2
        
        % (1，3)
        % 数据已经有了，不用做改变
        % (1，4)
        v_1_4_set = unique([v_existing_num_2(1,:),v_existing_num_2(:,4)']);
        v_1_4_set_avai = setdiff(fullset,v_1_4_set)
        for ii_1_4 = v_1_4_set_avai
            % 取得先前的干净数据
            v_existing_num_4 = v_existing_num_2;
            % 更新已有数据
            v_existing_num_4(1,4) = ii_1_4
            
            % (1，5)
            v_1_5_set = unique([v_existing_num_4(1,:),v_existing_num_4(:,5)']);
            v_1_5_set_avai = setdiff(fullset,v_1_5_set)
            for ii_1_5 = v_1_5_set_avai
                % 取得先前的干净数据
                v_existing_num_5 = v_existing_num_4;
                % 更新已有数据
                v_existing_num_5(1,5) = ii_1_5
                
                % (2，1)
                v_2_1_set = unique([v_existing_num_5(2,:),v_existing_num_5(:,1)']);
                v_2_1_set_avai = setdiff(fullset,v_2_1_set)
                for ii_2_1 = v_2_1_set_avai
                    % 取得先前的干净数据
                    v_existing_num_6 = v_existing_num_5;
                    % 更新已有数据
                    v_existing_num_6(2,1) = ii_2_1
                    
                    % (2，2)
                    v_2_2_set = unique([v_existing_num_6(2,:),v_existing_num_6(:,2)']);
                    v_2_2_set_avai = setdiff(fullset,v_2_2_set)
                    for ii_2_2 = v_2_2_set_avai %
                        % 取得先前的干净数据
                        v_existing_num_7 = v_existing_num_6;
                        % 更新已有数据
                        v_existing_num_7(2,2) = ii_2_2
                        
                        % (2，3)
                        v_2_3_set = unique([v_existing_num_7(2,:),v_existing_num_7(:,3)']);
                        v_2_3_set_avai = setdiff(fullset,v_2_3_set)
                        for ii_2_3 = v_2_3_set_avai
                            % 取得先前的干净数据
                            v_existing_num_8 = v_existing_num_7;
                            % 更新已有数据
                            v_existing_num_8(2,3) = ii_2_3
                            
                            % (2，4)
                            v_2_4_set = unique([v_existing_num_8(2,:),v_existing_num_8(:,4)']);
                            v_2_4_set_avai = setdiff(fullset,v_2_4_set)
                            
                            for ii_2_4 = v_2_4_set_avai
                                % 取得先前的干净数据
                                v_existing_num_9 = v_existing_num_8;
                                % 更新已有数据
                                v_existing_num_9(2,4) = ii_2_4
                                
                                % (2，5)
                                v_2_5_set = unique([v_existing_num_9(2,:),v_existing_num_9(:,5)']);
                                v_2_5_set_avai = setdiff(fullset,v_2_5_set)
                                
                                for ii_2_5 = v_2_5_set_avai
                                    % 取得先前的干净数据
                                    v_existing_num_10 = v_existing_num_9;
                                    % 更新已有数据
                                    v_existing_num_10(2,5) = ii_2_5
                                    
                                    % (3，1)
                                    v_3_1_set = unique([v_existing_num_10(3,:),v_existing_num_10(:,1)']);
                                    v_3_1_set_avai = setdiff(fullset,v_3_1_set)
                                    for ii_3_1 = v_3_1_set_avai
                                        % 取得先前的干净数据
                                        v_existing_num_11 = v_existing_num_10;
                                        
                                        % 更新已有数据
                                        v_existing_num_11(3,1) = ii_3_1
                                        
                                        % (3，2)
                                        % 数据已经有了，不用做改变
                                        % (3，3)
                                        v_3_3_set = unique([v_existing_num_11(3,:),v_existing_num_11(:,3)']);
                                        v_3_3_set_avai = setdiff(fullset,v_3_3_set)
                                        for ii_3_3 = v_3_3_set_avai
                                            % 取得先前的干净数据
                                            v_existing_num_13 = v_existing_num_11;
                                            
                                            % 更新已有数据
                                            v_existing_num_13(3,3) = ii_3_3
                                            
                                            % (3，4)
                                            v_3_4_set = unique([v_existing_num_13(3,:),v_existing_num_13(:,4)']);
                                            v_3_4_set_avai = setdiff(fullset,v_3_4_set)
                                            for ii_3_4 = v_3_4_set_avai
                                                % 取得先前的干净数据
                                                v_existing_num_14 = v_existing_num_13;
                                                
                                                % 更新已有数据
                                                v_existing_num_14(3,4) = ii_3_4
                                                
                                                % (3，5)
                                                v_3_5_set = unique([v_existing_num_14(3,:),v_existing_num_14(:,5)']);
                                                v_3_5_set_avai = setdiff(fullset,v_3_5_set)
                                                for ii_3_5 = v_3_5_set_avai
                                                    % 取得先前的干净数据
                                                    v_existing_num_15 = v_existing_num_14;
                                                    
                                                    % 更新已有数据
                                                    v_existing_num_15(3,5) = ii_3_5
                                                    
                                                    % (4,1)
                                                    v_4_1_set = unique([v_existing_num_15(4,:),v_existing_num_15(:,1)']);
                                                    v_4_1_set_avai = setdiff(fullset,v_4_1_set)
                                                    for ii_4_1 = v_4_1_set_avai
                                                        % 取得先前的干净数据
                                                        v_existing_num_16 = v_existing_num_15;
                                                        
                                                        % 更新已有数据
                                                        v_existing_num_16(4,1) = ii_4_1
                                                        % (4,2)
                                                        v_4_2_set = unique([v_existing_num_16(4,:),v_existing_num_16(:,2)']);
                                                        v_4_2_set_avai = setdiff(fullset,v_4_2_set)
                                                        for ii_4_2 = v_4_2_set_avai
                                                            % 取得先前的干净数据
                                                            v_existing_num_17 = v_existing_num_16;
                                                            
                                                            % 更新已有数据
                                                            v_existing_num_17(4,2) = ii_4_2
                                                            % (4,3)
                                                            v_4_3_set = unique([v_existing_num_17(4,:),v_existing_num_17(:,3)']);
                                                            v_4_3_set_avai = setdiff(fullset,v_4_3_set)
                                                            
                                                            for ii_4_3 = v_4_3_set_avai
                                                                % 取得先前的干净数据
                                                                v_existing_num_18 = v_existing_num_17;
                                                                % 更新已有数据
                                                                v_existing_num_18(4,3) = ii_4_3
                                                                % (4,4)
                                                                v_4_4_set = unique([v_existing_num_18(4,:),v_existing_num_18(:,4)']);
                                                                v_4_4_set_avai = setdiff(fullset,v_4_4_set)
                                                                for ii_4_4 = v_4_4_set_avai
                                                                    % 取得先前的干净数据
                                                                    v_existing_num_19 = v_existing_num_18;
                                                                    % 更新已有数据
                                                                    v_existing_num_19(4,4) = ii_4_4
                                                                    % (4,5)
                                                                    v_4_5_set = unique([v_existing_num_19(4,:),v_existing_num_19(:,5)']);
                                                                    v_4_5_set_avai = setdiff(fullset,v_4_5_set)
                                                                    for ii_4_5 = v_4_5_set_avai
                                                                        % 取得先前的干净数据
                                                                        v_existing_num_20 = v_existing_num_19;
                                                                        
                                                                        % 更新已有数据
                                                                        v_existing_num_20(4,5) = ii_4_5
                                                                        % (5,1)
                                                                        v_5_1_set = unique([v_existing_num_20(5,:),v_existing_num_20(:,1)']);
                                                                        v_5_1_set_avai = setdiff(fullset,v_5_1_set)
                                                                        for ii_5_1 = v_5_1_set_avai
                                                                            % 取得先前的干净数据
                                                                            v_existing_num_21 = v_existing_num_20;
                                                                            
                                                                            % 更新已有数据
                                                                            v_existing_num_21(5,1) = ii_5_1
                                                                            % (5,2)
                                                                            v_5_2_set = unique([v_existing_num_21(5,:),v_existing_num_21(:,2)']);
                                                                            v_5_2_set_avai = setdiff(fullset,v_5_2_set)
                                                                            
                                                                            for ii_5_2 = v_5_2_set_avai
                                                                                % 取得先前的干净数据
                                                                                v_existing_num_22 = v_existing_num_21;
                                                                                % 更新已有数据
                                                                                v_existing_num_22(5,2) = ii_5_2
                                                                                % (5,3)
                                                                                v_5_3_set = unique([v_existing_num_22(5,:),v_existing_num_22(:,3)']);
                                                                                v_5_3_set_avai = setdiff(fullset,v_5_3_set)
                                                                                for ii_5_3 = v_5_3_set_avai
                                                                                    % 取得先前的干净数据
                                                                                    v_existing_num_23 = v_existing_num_22;
                                                                                    % 更新已有数据
                                                                                    v_existing_num_23(5,3) = ii_5_3
                                                                                    % (5,4)
                                                                                    % 已经有数据了
                                                                                    % (5,5)
                                                                                    v_5_5_set = unique([v_existing_num_23(5,:),v_existing_num_23(:,5)']);
                                                                                    v_5_5_set_avai = setdiff(fullset,v_5_5_set)
                                                                                    for ii_5_5 = v_5_5_set_avai
                                                                                        % 取得先前的干净数据
                                                                                        v_existing_num_25 = v_existing_num_23;
                                                                                        % 更新已有数据
                                                                                        v_existing_num_25(5,5) = ii_5_5
                                                                                        
                                                                                        flag = validation_44Matrix( v_existing_num_25, matrix_4_4 )
                                                                                        
                                                                                        if flag  % 为1, 则输出到txt
                                                                                            result_file = fopen(kkk_file,'a');%'A.txt'为文件名；'a'为打开方式：在打开的文件末端添加数据，若文件不存在则创建。
                                                                                            fprintf(result_file,'%8d%8d%8d%8d%8d \n',v_existing_num_25(1,:));%fp为文件句柄，指定要写入数据的文件。注意：%d后有空格。
                                                                                            fprintf(result_file,'%8d%8d%8d%8d%8d \n',v_existing_num_25(2,:));
                                                                                            fprintf(result_file,'%8d%8d%8d%8d%8d \n',v_existing_num_25(3,:));
                                                                                            fprintf(result_file,'%8d%8d%8d%8d%8d \n',v_existing_num_25(4,:));
                                                                                            fprintf(result_file,'%8d%8d%8d%8d%8d \n',v_existing_num_25(5,:));
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
