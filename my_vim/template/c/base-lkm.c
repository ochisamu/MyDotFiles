#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");

static int {{_input_:ModuleName}}_init(void)
{
	printk("[INIT:%s]\n",__func__);
	return 0;
}

static void {{_input_:ModuleName}}_remove(void)
{
	printk("[EXIT:%s]\n",__func__);	
}

module_init({{_input_:ModuleName}}_init);
module_exit({{_input_:ModuleName}}_exit);
