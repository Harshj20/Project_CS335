public class test_16 {
    int x = 0;
    char y = 'c';
    int z = 0;

    public int hello(int a, int b){
        int x = 0;
        char y = 'c';
        int z = 0;
        return 0;
    }
    public static void main(String[] args) {
            int a = 0, b, c;
            b = a++;
            a = b = (a > 1)?c:(a+1);
            if(a < b){
                a = 1;
            }
            while(a < 3){
                b = a + b;
                for(;;){
                    if(b==5){
                        if(a==3){
                            break;
                        }
                    }
                }
                break;
            }
            a = hello(2+5*5, a++);
            // while(true){
            //     if(true)
            //         break;
            //     if(false)
            //         break;
            // }
    }
}
