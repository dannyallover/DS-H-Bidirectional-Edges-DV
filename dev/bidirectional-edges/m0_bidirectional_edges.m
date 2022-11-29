(* ::Package:: *)

(* ::Title:: *)
(*Bidirectional Edges*)


(* ::Section:: *)
(*In our network, lopsided bidirectional edges are particularly telling of potential erroneous data. Here, we pinpoint bidirectional edges in our network along with their frequencies to later investigate for spurious edges.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** all edges in the graph (including duplicates) **)*)


(* ::Input:: *)
(*edges=Flatten[ToExpression[Import["data/base/xxx_all_edges.csv","CSV"]]];*)


(* ::Input:: *)
(*edges[[1]]*)


(* ::Input:: *)
(*(** number of edges in our network **)*)


(* ::Input:: *)
(*Length[edges]*)


(* ::Input:: *)
(*(** number of unique edges in our network **)*)


(* ::Input:: *)
(*uniqueEdges=DeleteDuplicates[edges]*)


(* ::Input:: *)
(*Length[uniqueEdges]*)


(* ::Input:: *)
(*(** edge to edge count **)*)


(* ::Input:: *)
(*edgeCount=Tally[edges];*)


(* ::Input:: *)
(*edgeCount[[1]]*)


(* ::Input:: *)
(*edgeToCount=Association[Table[edgeCount[[i,1]]->edgeCount[[i,2]],{i,1,Length[edgeCount],1}]];*)


(* ::Input:: *)
(*edgeToCount[edges[[1]]]*)


(* ::Input:: *)
(*(** get pairs of bidrectional edges and their counts **)*)


(* ::Input:: *)
(*bd=Monitor[Reap[For[i=1,i<=Length[uniqueEdges],i++,*)
(*edge=uniqueEdges[[i]];*)
(*reverseEdge=DirectedEdge[edge[[2]],edge[[1]]];*)
(*reverseExists=KeyExistsQ[edgeToCount,reverseEdge];*)
(*If[reverseExists,Sow[{edge,reverseEdge,{edgeToCount[edge],edgeToCount[reverseEdge]}}]*)
(*];*)
(*];*)
(*][[2]][[1]],i];*)


(* ::Input:: *)
(*bd[[1]]*)


(* ::Input:: *)
(*Length[bd]*)


(* ::Input:: *)
(*(*Export["data/bidirectional-edges/m0_bidirectional_edges_counts.csv",bd]*)*)
