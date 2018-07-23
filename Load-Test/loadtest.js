import http from "k6/http";

export default function() {
    http.get("http://a586387878dcd11e88c1a02bf966215f-406201839.us-west-2.elb.amazonaws.com:5000/kubernetes");
};