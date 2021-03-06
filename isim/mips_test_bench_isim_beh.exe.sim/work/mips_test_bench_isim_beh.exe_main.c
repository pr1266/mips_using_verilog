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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004284943656_1733832700_init();
    work_m_00000000002998526721_0610666722_init();
    work_m_00000000001051404548_1553708346_init();
    work_m_00000000002506710941_2058220583_init();
    work_m_00000000001024733868_0278921292_init();
    work_m_00000000001461581809_3415651129_init();
    work_m_00000000002861392715_1947578403_init();
    work_m_00000000001112288111_3438971274_init();
    work_m_00000000003718920546_3258266500_init();
    work_m_00000000002665842958_3877310806_init();
    work_m_00000000002066425361_1155116833_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002066425361_1155116833");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
