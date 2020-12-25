#include <stdio.h>

extern int soma(int x, int y);
extern int subtracao(int x, int y);
extern int multiplicacao(int x, int y);
extern int divisao(int x, int y);
extern int resto(int x, int y);

int main ()
{
               register double i;
               int x,y;
               do{
                              printf("Digite dois numeros: (0 e 0 para sair) ");
                              scanf("%d %d",&x,&y);
                              fflush(stdin);
                              if(!x && !y)break;

                              printf("%d + %d = %d\n",x,y,soma(x,y));
                              printf("%d - %d = %d\n",x,y,subtracao(x,y));
                              printf("%d * %d = %d\n",x,y,multiplicacao(x,y));
                              printf("%d / %d = %d\n",x,y,divisao(x,y));
                              printf("%d %% %d = %d\n",x,y,resto(x,y));
               }while(1);
               return 0;
}
