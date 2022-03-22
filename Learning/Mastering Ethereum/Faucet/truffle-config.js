module.exports = {
  networks: {
    localnode: { // Whatever network our local node connects to
      network_id: "*", // Match any network ID
      host: "http/kovan.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161",
      port: 8545,
    }
  }
};