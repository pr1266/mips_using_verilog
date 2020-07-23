/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/pr1266/finalproject/alu32bit.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {7U, 0U};



static void Always_9_0(char *t0)
{
    char t9[8];
    char t22[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(9, ng0);
    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(10, ng0);

LAB5:    xsi_set_current_line(11, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(13, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    t7 = (t8 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 & 4294967295U);
    if (t14 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t7) != 0)
        goto LAB20;

LAB21:    t16 = (t9 + 4);
    t17 = *((unsigned int *)t9);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB22;

LAB23:    memcpy(t29, t9, 8);

LAB24:    t61 = (t0 + 1928);
    xsi_vlogvar_assign_value(t61, t29, 0, 0, 32);
    goto LAB17;

LAB9:    xsi_set_current_line(15, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t4 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (~(t10));
    t12 = *((unsigned int *)t4);
    t13 = (t12 & t11);
    t14 = (t13 & 4294967295U);
    if (t14 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t3) != 0)
        goto LAB34;

LAB35:    t8 = (t9 + 4);
    t17 = *((unsigned int *)t9);
    t18 = (!(t17));
    t19 = *((unsigned int *)t8);
    t23 = (t18 || t19);
    if (t23 > 0)
        goto LAB36;

LAB37:    memcpy(t29, t9, 8);

LAB38:    t43 = (t0 + 1928);
    xsi_vlogvar_assign_value(t43, t29, 0, 0, 32);
    goto LAB17;

LAB11:    xsi_set_current_line(17, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 32, t7, 32);
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 32);
    goto LAB17;

LAB13:    xsi_set_current_line(19, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_minus(t9, 32, t4, 32, t7, 32);
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t9, 0, 0, 32);
    goto LAB17;

LAB15:    xsi_set_current_line(21, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t29, 0, 8);
    t3 = (t4 + 4);
    if (*((unsigned int *)t3) != 0)
        goto LAB47;

LAB46:    t8 = (t7 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB47;

LAB50:    if (*((unsigned int *)t4) < *((unsigned int *)t7))
        goto LAB48;

LAB49:    memset(t22, 0, 8);
    t16 = (t29 + 4);
    t10 = *((unsigned int *)t16);
    t11 = (~(t10));
    t12 = *((unsigned int *)t29);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t16) != 0)
        goto LAB53;

LAB54:    t21 = (t22 + 4);
    t17 = *((unsigned int *)t22);
    t18 = *((unsigned int *)t21);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB55;

LAB56:    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (t24 || t25);
    if (t26 > 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t21) > 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t22) > 0)
        goto LAB61;

LAB62:    memcpy(t9, t34, 8);

LAB63:    t28 = (t0 + 1928);
    xsi_vlogvar_assign_value(t28, t9, 0, 0, 32);
    goto LAB17;

LAB18:    *((unsigned int *)t9) = 1;
    goto LAB21;

LAB20:    t15 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB21;

LAB22:    t20 = (t0 + 1208U);
    t21 = *((char **)t20);
    memset(t22, 0, 8);
    t20 = (t21 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (t25 & t24);
    t27 = (t26 & 4294967295U);
    if (t27 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t20) != 0)
        goto LAB27;

LAB28:    t30 = *((unsigned int *)t9);
    t31 = *((unsigned int *)t22);
    t32 = (t30 & t31);
    *((unsigned int *)t29) = t32;
    t33 = (t9 + 4);
    t34 = (t22 + 4);
    t35 = (t29 + 4);
    t36 = *((unsigned int *)t33);
    t37 = *((unsigned int *)t34);
    t38 = (t36 | t37);
    *((unsigned int *)t35) = t38;
    t39 = *((unsigned int *)t35);
    t40 = (t39 != 0);
    if (t40 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB24;

LAB25:    *((unsigned int *)t22) = 1;
    goto LAB28;

LAB27:    t28 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB28;

LAB29:    t41 = *((unsigned int *)t29);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t29) = (t41 | t42);
    t43 = (t9 + 4);
    t44 = (t22 + 4);
    t45 = *((unsigned int *)t9);
    t46 = (~(t45));
    t47 = *((unsigned int *)t43);
    t48 = (~(t47));
    t49 = *((unsigned int *)t22);
    t50 = (~(t49));
    t51 = *((unsigned int *)t44);
    t52 = (~(t51));
    t53 = (t46 & t48);
    t54 = (t50 & t52);
    t55 = (~(t53));
    t56 = (~(t54));
    t57 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t57 & t55);
    t58 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t58 & t56);
    t59 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t59 & t55);
    t60 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t60 & t56);
    goto LAB31;

LAB32:    *((unsigned int *)t9) = 1;
    goto LAB35;

LAB34:    t7 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB35;

LAB36:    t15 = (t0 + 1208U);
    t16 = *((char **)t15);
    memset(t22, 0, 8);
    t15 = (t16 + 4);
    t24 = *((unsigned int *)t15);
    t25 = (~(t24));
    t26 = *((unsigned int *)t16);
    t27 = (t26 & t25);
    t30 = (t27 & 4294967295U);
    if (t30 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t15) != 0)
        goto LAB41;

LAB42:    t31 = *((unsigned int *)t9);
    t32 = *((unsigned int *)t22);
    t36 = (t31 | t32);
    *((unsigned int *)t29) = t36;
    t21 = (t9 + 4);
    t28 = (t22 + 4);
    t33 = (t29 + 4);
    t37 = *((unsigned int *)t21);
    t38 = *((unsigned int *)t28);
    t39 = (t37 | t38);
    *((unsigned int *)t33) = t39;
    t40 = *((unsigned int *)t33);
    t41 = (t40 != 0);
    if (t41 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB38;

LAB39:    *((unsigned int *)t22) = 1;
    goto LAB42;

LAB41:    t20 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB42;

LAB43:    t42 = *((unsigned int *)t29);
    t45 = *((unsigned int *)t33);
    *((unsigned int *)t29) = (t42 | t45);
    t34 = (t9 + 4);
    t35 = (t22 + 4);
    t46 = *((unsigned int *)t34);
    t47 = (~(t46));
    t48 = *((unsigned int *)t9);
    t53 = (t48 & t47);
    t49 = *((unsigned int *)t35);
    t50 = (~(t49));
    t51 = *((unsigned int *)t22);
    t54 = (t51 & t50);
    t52 = (~(t53));
    t55 = (~(t54));
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t52);
    t57 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t57 & t55);
    goto LAB45;

LAB47:    t15 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB49;

LAB48:    *((unsigned int *)t29) = 1;
    goto LAB49;

LAB51:    *((unsigned int *)t22) = 1;
    goto LAB54;

LAB53:    t20 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB54;

LAB55:    t28 = (t0 + 1048U);
    t33 = *((char **)t28);
    goto LAB56;

LAB57:    t28 = (t0 + 1208U);
    t34 = *((char **)t28);
    goto LAB58;

LAB59:    xsi_vlog_unsigned_bit_combine(t9, 32, t33, 32, t34, 32);
    goto LAB63;

LAB61:    memcpy(t9, t33, 8);
    goto LAB63;

}

static void Cont_27_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    t2 = (t0 + 1208U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t2);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t2);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t7) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t7 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t34 = *((unsigned int *)t4);
    t35 = (~(t34));
    t36 = *((unsigned int *)t29);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t38, 8);

LAB20:    t39 = (t0 + 3512);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memset(t43, 0, 8);
    t44 = 1U;
    t45 = t44;
    t46 = (t3 + 4);
    t47 = *((unsigned int *)t3);
    t44 = (t44 & t47);
    t48 = *((unsigned int *)t46);
    t45 = (t45 & t48);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t50 | t44);
    t51 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t51 | t45);
    xsi_driver_vfirst_trans(t39, 0, 0);
    t52 = (t0 + 3432);
    *((int *)t52) = 1;

LAB1:    return;
LAB6:    t21 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = ((char*)((ng2)));
    goto LAB13;

LAB14:    t38 = ((char*)((ng1)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 1, t33, 1, t38, 1);
    goto LAB20;

LAB18:    memcpy(t3, t33, 8);
    goto LAB20;

}


extern void work_m_00000000002011743272_3438971274_init()
{
	static char *pe[] = {(void *)Always_9_0,(void *)Cont_27_1};
	xsi_register_didat("work_m_00000000002011743272_3438971274", "isim/mips_test_bench_isim_beh.exe.sim/work/m_00000000002011743272_3438971274.didat");
	xsi_register_executes(pe);
}
