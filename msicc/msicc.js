var container = document.getElementById("graph");

var data = vis.parseDOTNetwork('digraph undergraduate {         1003 [label="MATH1003\nAlgebra & Calculus Methods", url="http://programsandcourses.anu.edu.au/course/MATH1003", level=1, group="sem1"];         1005 [label="MATH1005\nDiscrete Mathematical Models", url="http://programsandcourses.anu.edu.au/course/MATH1005", level=1, group="sem1"];         1042 [label="MATH1042\nPhilosophy of the Cosmos", url="http://programsandcourses.anu.edu.au/course/MATH1042", level=1, group="sem1"];         1115 [label="MATH1115\nAdvanced Mathematics \n& Applications 1", url="http://programsandcourses.anu.edu.au/course/MATH1115", level=1, group="sem1"];         1013 [label="MATH1013\nMathematics & Applications 1", url="http://programsandcourses.anu.edu.au/course/MATH1013", level=1, group="sem12"];         1014 [label="MATH1014\nMathematics & Applications 2", url="http://programsandcourses.anu.edu.au/course/MATH1014", level=1.5, group="sem12"];         1113 [label="MATH1113\nMathematical Foundations for\nActuarial Studies", url="http://programsandcourses.anu.edu.au/course/MATH1113", level=1.5, group="sem2"];         1116 [label="MATH1116\nAdvanced Mathematics \n& Applications 2", url="http://programsandcourses.anu.edu.au/course/MATH1116", level=1.5, group="sem2"];         2222 [label="MATH2222\nIntroduction to Mathematical Thinking:\nProblem Solving and Proofs", url="http://programsandcourses.anu.edu.au/course/MATH2222", level=2, group="sem1"];         2305 [label="MATH2305\nApplied Mathematics 1", url="http://programsandcourses.anu.edu.au/course/MATH2305", level=2, group="sem1"];         2320 [label="MATH2320\nAdvanced Analysis 1:\nMetric Spaces & Applications", url="http://programsandcourses.anu.edu.au/course/MATH2320", level=2, group="sem1"];         2242 [label="MATH2242\nIntroduction to Geometry:\nCurves and Surfaces", url="http://programsandcourses.anu.edu.au/course/MATH2242", level=2.5, group="sem2"];         2301 [label="MATH2301\nGames, Graphs & Machines", url="http://programsandcourses.anu.edu.au/course/MATH2301", level=2.5, group="sem2"];         2306 [label="MATH2306\nApplied Mathematics 2", url="http://programsandcourses.anu.edu.au/course/MATH2306", level=2.5, group="sem2"];         2307 [label="MATH2307\nBioinformatics \n& Biological Modelling", url="http://programsandcourses.anu.edu.au/course/MATH2307", level=2.5, group="sem2"];         2322 [label="MATH2322\nAdvanced Algebra 1:\nGroups, Rings \n& Advanced Linear Algebra", url="http://programsandcourses.anu.edu.au/course/MATH2322", level=2.5, group="sem2"];         3029 [label="MATH3029\nProbability Modelling with Applications", url="http://programsandcourses.anu.edu.au/course/MATH3029", level=3, group="sem1"];         3062 [label="MATH3062\nFractal Geometry \n& Chaotic Dynamics", url="http://programsandcourses.anu.edu.au/course/MATH3062", level=3, group="sem1"];         3116 [label="MATH3116\nAdvanced Applied Analysis 1:\nMetric Spaces & Applications", url="http://programsandcourses.anu.edu.au/course/MATH3116", level=3, group="sem1"];         3320 [label="MATH3320\nAnalysis 2:\n Topology, Lebesgue Integration \n & Hilbert Spaces", url="http://programsandcourses.anu.edu.au/course/MATH3320", level=3, group="sem1"];         3342 [label="MATH3342\nDifferential Geometry", url="http://programsandcourses.anu.edu.au/course/MATH3342", level=3, group="sem1"];         3343 [label="MATH3343\nFoundations of Mathematics", url="http://programsandcourses.anu.edu.au/course/MATH3343", level=3, group="sem1"];         3345 [label="MATH3345\nAdvanced Algebra 2:\nField extensions and Galois Theory", url="http://programsandcourses.anu.edu.au/course/MATH3345", level=3.5, group="sem1"];         3351 [label="MATH3351\nSpecial Topics in \n Mathematical Physics", url="http://programsandcourses.anu.edu.au/course/MATH3351", level=3.5, group="sem1"];         3353 [label="MATH3353\nTopics in Bioinformatics", url="http://programsandcourses.anu.edu.au/course/MATH3353", level=3.5, group="sem1"];         3511 [label="MATH3511\nScientific Computing", url="http://programsandcourses.anu.edu.au/course/MATH3511", level=3.5, group="sem1"];         3349 [label="MATH3349\nSpecial Topics in Mathematics", url="https://maths.anu.edu.au/study/courses/math3349-special-topics-mathematics", level=3.0, group="sem12"];         3015 [label="MATH3015\nMathematics of Finance", url="http://programsandcourses.anu.edu.au/course/MATH3015", level=3.5, group="sem2"];         3104 [label="MATH3104\nAdvanced Applied Algebra 1:\nGroups, Rings \n& Advanced Linear Algebra", url="http://programsandcourses.anu.edu.au/course/MATH3104", level=3.5, group="sem2"];         3133 [label="MATH3133\nEnvironmental Mathematics", url="http://programsandcourses.anu.edu.au/course/MATH3133", level=3.5, group="sem2"];         3228 [label="MATH3228\nAdvanced Complex Analysis", url="http://programsandcourses.anu.edu.au/course/MATH3228", level=3.5, group="sem2"];         3301 [label="MATH3301\nNumber Theory & Cryptography", url="http://programsandcourses.anu.edu.au/course/MATH3301", level=3.9, group="sem2"];         3325 [label="MATH3325\nFunctional Analysis, Spectral Theory\n& Applications", url="http://programsandcourses.anu.edu.au/course/MATH3325", level=3.9, group="sem2"];         3354 [label="MATH3354\nAdvanced Topics in Algebra", url="http://programsandcourses.anu.edu.au/course/MATH3354", level=3.9, group="sem2"];         3501 [label="MATH3501\nScientific & Industrial Modelling", url="http://programsandcourses.anu.edu.au/course/MATH3501", level=3.9, group="sem2"];         3512 [label="MATH3512\nMatrix Computations\n(run in odd years)", url="http://programsandcourses.anu.edu.au/course/MATH3512", level=3.9, group="sem2"];         3514 [label="MATH3514\nNumerical Optimisation\n(run in even years)", url="http://programsandcourses.anu.edu.au/course/MATH3514", level=3.9, group="sem2"]; 	1115 -> 1116 [color=orange, label="60+"]; 	1113 -> 1116 [color=red, label="80+"]; 	1116 -> 2222 [color=orange, label="60+"]; 	1113 -> 2222 [color=orange, label="60+"]; 	1013 -> 2222 [color=red, label="80+"]; 	1014 -> 2222 [color=red, label="80+"]; 	1113 -> 2305 [color=red, label="80+ and coreq 1014"]; 	1116 -> 2305 [color=green]; 	1014 -> 2305 [color=green]; 	1116 -> 2320 [color=orange, label="60+"]; 	1116 -> 2242 [color=orange, label="60+"]; 	2305 -> 2242 [color=red, label="80+"]; 	1005 -> 2301 [color=green]; 	1013 -> 2301 [color=green]; 	1115 -> 2301 [color=green]; 	2305 -> 2306 [color=orange, label="60+"]; 	1014 -> 2307 [color=red, label="80+ and 12 units of 1000 level MATH"]; 	1116 -> 2307 [color=red, label="80+ and 12 units of 1000 level MATH"]; 	1116 -> 2322 [color=orange, label="60+"]; 	1115 -> 2322 [color=red, label="80+ and coreq 1116"]; 	2320 ->	3029 [color=green]; 	3116 ->	3029 [color=green]; 	1116 ->	3062 [color=red, label="80+"]; 	2306 -> 3116 [color=red, label="80+"]; 	2320 -> 3320 [color=orange, label="60+"]; 	2320 -> 3342 [color=orange, label="60+"]; 	1116 -> 3342 [color=orange, label="60+"]; 	2322 -> 3343 [color=orange, label="60+"]; 	3104 -> 3343 [color=orange, label="60+"]; 	2322 -> 3345 [color=orange, label="60+"]; 	3104 -> 3345 [color=orange, label="60+"]; 	2305 -> 3353 [color=red, label="80+ and STAT1003/1008"]; 	2307 -> 3353 [color=red, label="80+ and STAT1003/1008"]; 	1116 -> 3511 [color=green]; 	2305 -> 3511 [color=green]; 	2320 -> 3511 [color=green];  	3029 -> 3015 [color=green]; 	3320 -> 3015 [color=green]; 	2305 -> 3104 [color=red, label="80+"]; 	2306 -> 3104 [color=red, label="80+"]; 	2305 -> 3133 [color=green];  	2320 -> 3228 [color=orange, label="60+"]; 	2301 -> 3301 [color=orange, label="60+"]; 	1116 -> 3301 [color=orange, label="60+"]; 	1014 -> 3301 [color=orange, label="60+"]; 	3320 -> 3325 [color=orange, label="60+"]; 	3345 -> 3354 [color=green]; 	2305 -> 3501 [color=orange, label="60+"]; 	2305 -> 3512 [color=orange, label="60+"]; 	2320 -> 3512 [color=orange, label="60+"]; 	3116 -> 3512 [color=orange, label="60+"]; 	3511 -> 3512 [color=orange, label="60+"];  	2305 -> 3514 [color=orange, label="60+"]; 	2320 -> 3514 [color=orange, label="60+"]; 	3116 -> 3514 [color=orange, label="60+"]; 	3511 -> 3514 [color=orange, label="60+"];  }         ');
var allNodes = new vis.DataSet(data.nodes);
var allEdges = new vis.DataSet(data.edges);

var nodeoptions = {
    shape: 'box',
    margin: 10,
    font: '14px Helvetica',
};

var edgeoptions = {
    font: {
	size: 0,
	align: 'top',
    },
    smooth: {
	type: 'continuous'
    },
};

var layoutoptions = {
    hierarchical: {
	direction: "UD",
	sortMethod: "directed",
	levelSeparation: 300,
	nodeSpacing: 300,
	treeSpacing: 70
    }
};

var physicsoptions = {
    enabled: false
}

var options = {
    autoResize: true,
    height: '100%',
    width: '100%',
    interaction: {
	selectConnectedEdges: false
    },
    nodes: nodeoptions,
    edges: edgeoptions,
    layout: layoutoptions,
    physics: physicsoptions
}

var network;
network = new vis.Network(container, {nodes: allNodes, edges: allEdges}, options);

function undimNode(nodeid){
    return {
	id: nodeid,
	opacity: 1.0,
	font:{
	    color: 'black'
	} 
    }
}

function dimNode(nodeid){
    return {
	id: nodeid,
	opacity: 0.01,
	font:{
	    color: 'rgb(225,225,225)'
	} 
    }
}

function undimEdge(edgeid){
    return {
	id: edgeid,
	font: {
	    size: 14,
	},
	width: 5,
    }
}

function dimEdge(edgeid, width=0){
    return {
	id: edgeid,
	font: {
	    size: 0
	},
	width: width,
    }
}

function dimOrUnDim(params){
    if (params.nodes.length > 0){
	var updateNodeArray = [];
	var keepNodes = Array.from(params.nodes);
	for (n of params.nodes)
	    for (nodeid of network.getConnectedNodes(n))
		keepNodes.push(nodeid);

	//Dim all the nodes except the selected ones
	for (nodeid of allNodes.getIds()){
	    if (keepNodes.includes(nodeid))
		updateNodeArray.push(undimNode(nodeid));
	    else
		updateNodeArray.push(dimNode(nodeid));
	}

	// Dim all the edges except the selected ones and the ones emnating from the selected nodes
	var updateEdgeArray = [];
	var keepEdges = Array.from(params.edges);
	for (nodeid of params.nodes)
	    for (edgeid of network.getConnectedEdges(nodeid))
		keepEdges.push(edgeid)

	for (edgeid of allEdges.getIds()){
	    if (keepEdges.includes(edgeid))
		updateEdgeArray.push(undimEdge(edgeid));
	    else
		updateEdgeArray.push(dimEdge(edgeid));
	}

    }else{
	//Undim all nodes
	var updateNodeArray = [];
	for (nodeid of allNodes.getIds())
	    updateNodeArray.push(undimNode(nodeid));

	//Dim all edges
	var updateEdgeArray = [];
	for (edgeid of allEdges.getIds())
	    updateEdgeArray.push(dimEdge(edgeid, 1));
    }
    allNodes.update(updateNodeArray);
    allEdges.update(updateEdgeArray);    
}

network.on('hold', dimOrUnDim);

network.on('doubleClick', function(params){
    if (params.nodes.length == 1){
	var node = allNodes.get(params.nodes[0]);
	if (node.url != null)
	    window.open(node.url, '_blank');
    };
})

setTimeout(()=>{
    network.setOptions({
	layout:{
	    hierarchical: false
	},
    });
},1000);
