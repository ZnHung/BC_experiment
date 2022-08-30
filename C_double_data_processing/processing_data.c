# 将原始无法被Matlab直接读取的双精度型数据转换为Matlab可读的dat文件

#include <stdio.h>
#include <stdlib.h>

#define size 2048

int main()
{
	int i;
	double y[size];
	for(i = 0;i<size; i++)
	{
		y[i]=0;
	}
	printf("文件中双精度浮点数的字节为： %d\n",sizeof(double)); 
	FILE *fp;
	if((fp = fopen("azi180_elev0_dist160.dat","rb") )== NULL)
	{
		printf("原始相对应HRTF文件不存在!\n");
		exit(0);
	}
	
	for(i=0; i<size; i++)
	{
		fread(&y[i],sizeof(double), 1, fp);
		printf("%d*****%.15f\n",i, y[i]);
	}
	fclose(fp);
	
	
	FILE *fpWrite=fopen("C_azi180_elev0_dist160.dat","w");  
    if(fpWrite==NULL)  
    {  
        printf("输出产生文件signalLms时打开文件出错！\n"); 
    }  
    for(i=0;i<sizeof(y)/sizeof(y[0]);i++)  
    {
    	fprintf(fpWrite,"%.30lf\n ",y[i]);  
	}
    fclose(fpWrite);  
	//fclose(fp1);
	printf("程序运行已完成\n");
	return 0;
}
