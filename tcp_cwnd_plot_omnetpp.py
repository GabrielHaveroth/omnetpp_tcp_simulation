import matplotlib.pyplot as plt
import pandas as pd

cwnd_data = pd.read_csv("cwnd_disabled.csv")
t_client, cwnd_client = cwnd_data.values[:, 0], cwnd_data.values[:, 1]
t_other_client, cwnd_other_client = cwnd_data.values[:, 2], cwnd_data.values[:, 3]

lenth_data_client = len(cwnd_client)
lenth_data_other_client = len(cwnd_other_client)
ax = plt.subplot()
ax.plot(t_client[0:int(lenth_data_client)],
        cwnd_client[0:int(lenth_data_client)], color='b', label='client')
ax.plot(t_other_client[0:int(lenth_data_other_client)],
        cwnd_other_client[0:int(lenth_data_other_client)], color='r', label="other_client")
plt.legend()
plt.ylabel("cwnd (bytes)", fontsize=7)
plt.xlabel("Tempo (s)", fontsize=7)
plt.savefig("cwnd_1.pdf")
plt.close()

ax = plt.subplot()
ax.plot(t_client[0:int(lenth_data_client * 0.4)],
        cwnd_client[0:int(lenth_data_client * 0.4)], color='b', label='client')
plt.legend()
plt.ylabel("cwnd (bytes)", fontsize=7)
plt.xlabel("Tempo (s)", fontsize=7)
plt.savefig("cwnd_2.pdf")
plt.close()

ax = plt.subplot()
ax.plot(t_other_client[0:int(lenth_data_client * 0.4)],
        cwnd_other_client[0:int(lenth_data_client * 0.4)], color='r', label='other_client')
plt.legend()
plt.ylabel("cwnd (bytes)", fontsize=7)
plt.xlabel("Tempo (s)", fontsize=7)
plt.savefig("cwnd_3.pdf")
plt.close()

lenth_data_client = len(cwnd_client)
lenth_data_other_client = len(cwnd_other_client)
ax = plt.subplot()
ax.plot(t_client[0:int(lenth_data_client)],
        cwnd_client[0:int(lenth_data_client)], color='b', label='client')
ax.plot(t_other_client[0:int(lenth_data_other_client)],
        cwnd_other_client[0:int(lenth_data_other_client)], color='r', label="other_client")
ax.set_xlim([5, 5.5])
ax.set_ylim([9000, 65000])
plt.legend()
plt.ylabel("cwnd (bytes)", fontsize=7)
plt.xlabel("Tempo (s)", fontsize=7)
plt.savefig("cwnd_4.pdf")
plt.close()
