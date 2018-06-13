function matr=QMeasure(resultList)

num=length(resultList.result);

solution=zeros(num,3);
cost=zeros(num,1);
dist=zeros(num,1);

for index=1:num
    tempResult=resultList.result{index};
    solution(index,:)=tempResult.nlpsol.vbest;
    cost(index)=tempResult.nlpsol.fbest;
    dist(index)=dist2Best(solution(index,:));
end

matr=[solution,cost,dist];

end

