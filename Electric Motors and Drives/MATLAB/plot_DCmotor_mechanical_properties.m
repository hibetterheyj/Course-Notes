function plot_DCmotor_mechanical_properties(P_N, U_N, I_N, n_N)
    R_a = 0.5 * (U_N * I_N - P_N)/ (I_N * I_N)
    C_e_PhiN = (U_N - I_N * R_a)/n_N
    % unloaded speed;
    n0 = U_N / C_e_PhiN
    % rated torque
    T_N = 9.55 * C_e_PhiN * I_N
    % line the properties, line is different from plot
    line([0, T_N], [n0, n_N])
    % adding the label
    axis([0 750 2 1500]);
    xlabel('T/(N¡¤m)');
    ylabel('n/(r¡¤min^-1');
    title('DCmotor mechanical properties')
end