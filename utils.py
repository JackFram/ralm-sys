import numpy as np

def async_spec_lat(a, b, gamma, k):
    return (gamma**k) * ((k-1) * a + max(a, b)) + (1 - gamma**k) * (k * a + b)

def sync_spec_lat(a, b, gamma, k):
    return k * a + b

def async_opt_step(a, b, gamma):
    k = 1
    while (1-gamma**(k+1))*async_spec_lat(a, b, gamma, k) >= (1-gamma**k)*async_spec_lat(a, b, gamma, k+1):
        k += 1
    return k

def sync_opt_step(a, b, gamma):
    k = 1
    while (1-gamma**(k+1))*sync_spec_lat(a, b, gamma, k) >= (1-gamma**k)*sync_spec_lat(a, b, gamma, k+1):
        k += 1
    return k

def estimate_gamma(spec_step_list, match_length_list, maximum=0.6):
    spec_step_list = np.array(spec_step_list)
    match_length_list = np.array(match_length_list)
    a = sum(match_length_list)
    b = (spec_step_list > match_length_list).sum()
    return min(a / (a+b), maximum)


if __name__ == "__main__":
    print(sync_opt_step(1, 40, 0.6))
    print(estimate_gamma([3, 4, 3, 2], [1, 4, 2, 0]))