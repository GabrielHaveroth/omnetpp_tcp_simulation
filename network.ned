import inet.common.misc.ThruputMeter;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import inet.visualizer.integrated.IntegratedMultiVisualizer;
import ned.DatarateChannel;
import inet.common.misc.ThruputMeteringChannel;

network Network_two_clients
{
    @display("bgb=591,400");
    types:
        channel C1 extends DatarateChannel
        {
            parameters:
                datarate = 1Gbps;
                per = 0;
                ber = 0;
        }

        channel C2 extends ThruputMeteringChannel
        {
            parameters:
                datarate = 100Mbps;
                delay = 0;
                per = 0;
                ber = 0;
                thruputDisplayFormat = "U B";
        }

    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=87,57");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=87,130");
        }
        client: StandardHost {
            @display("p=169,217");
        }
        server: StandardHost {
            @display("p=490,220;i=device/server");
        }
        router1: Router {
            @display("p=267,217");
        }
        other_client: StandardHost {
            @display("p=169,300");
        }
        router2: Router {
            @display("p=345,217");
        }
        router3: Router {
            @display("p=419,217");
        }
    connections:
        client.pppg++ <--> C2 <--> router1.pppg++;
        other_client.pppg++ <--> C2 <--> router1.pppg++;
        router1.pppg++ <--> C1 <--> router2.pppg++;
        router2.pppg++ <--> C1 <--> router3.pppg++;
        router3.pppg++ <--> C2 <--> server.pppg++;
}


network Network_one_client
{
    @display("bgb=591,400");
    types:
        channel C1 extends DatarateChannel
        {
            parameters:
                datarate = 1Gbps;
                per = 0;
                ber = 0;
        }

        channel C2 extends ThruputMeteringChannel
        {
            parameters:
                datarate = 100Mbps;
                delay = 20ms;
                per = 0;
                ber = 0;
                thruputDisplayFormat = "U B";
        }

    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=87,57");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=87,130");
        }
        client: StandardHost {
            @display("p=169,217");
        }
        server: StandardHost {
            @display("p=490,220;i=device/server");
        }
        router1: Router {
            @display("p=267,217");
        }
        router2: Router {
            @display("p=345,217");
        }
        router3: Router {
            @display("p=419,217");
        }
    connections:
        client.pppg++ <--> C2 <--> router1.pppg++;
        router1.pppg++ <--> C1 <--> router2.pppg++;
        router2.pppg++ <--> C1 <--> router3.pppg++;
        router3.pppg++ <--> C2 <--> server.pppg++;
}


