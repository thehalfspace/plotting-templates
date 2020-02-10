## Python plotting templates


# line plots
fig = plt.figure(figsize=(8,6))
ax = fig.add_subplot(111)
plt.rcParams.update({'font.size': 12})

ax.plot(np.random.rand(10), lw=3, color="darkorange", label="Data 1")
ax.set_xlabel("x axis")
ax.set_ylabel(" y axis")
ax.get_yaxis().set_tick_params(which='both', direction='in')
ax.get_xaxis().set_tick_params(which='both', direction='in')
plt.rc('grid', linestyle="--", color='black', alpha=0.5)
plt.grid(True)
plt.legend()
plt.savefig("../plots/modelIIfit.pdf", dpi=300)
plt.show()
