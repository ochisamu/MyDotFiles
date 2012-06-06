#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("MIT");

static int {{_name_}}_module(void)
{
	printk("[INIT:%s]\n",__func__);
	return 0;
}

static void {{_name_}}_remove(void)
{
	printk("[REMOVE:%s]\n",__func__);	
}

module_init({{_name_}}_module);
module_exit({{_name_}}_remove);
