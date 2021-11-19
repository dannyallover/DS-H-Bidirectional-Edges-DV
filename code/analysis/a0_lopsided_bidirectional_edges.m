(* ::Package:: *)

(* ::Title:: *)
(*Lopsided Bidirectional Edges for Data Validation*)


(* ::Section:: *)
(*In our network, lopsided bidirectional edges (one direction occurring more frequently than its reverse) are particularly telling of potential erroneous data. We pinpoint such occurrences from our bidirectional edges data for later investigation.*)


(* ::Input:: *)
(*(** set directory **)*)


(* ::Input:: *)
(*SetDirectory[ParentDirectory[ParentDirectory[NotebookDirectory[]]]];*)


(* ::Input:: *)
(*Directory[];*)


(* ::Input:: *)
(*(** pairs of bidrectional edges and their counts **)*)


(* ::Input:: *)
(*bd=ToExpression[Import["data/bidirectional-edges/m0_bidirectional_edges_counts.csv","CSV"]];*)


(* ::Input:: *)
(*bd[[1]]*)


(* ::Input:: *)
(*(** bidirection edge ratio **)*)


(* ::Input:: *)
(*bdr=Reap[For[i=1,i<=Length[bd],i++,*)
(*counts=bd[[i,3]];*)
(*If[counts[[2]]>=counts[[1]],ratio=counts[[2]]/(counts[[1]]+counts[[2]]),ratio=counts[[1]]/(counts[[1]]+counts[[2]])];*)
(*Sow[{bd[[i,1]],bd[[i,2]],bd[[i,3]],ratio}];*)
(*]][[2]][[1]];*)


(* ::Input:: *)
(*bdr[[1]]*)


(* ::Input:: *)
(*(** sort on highest ratios **)*)


(* ::Input:: *)
(*bdrPriority=Reverse[SortBy[bdr,#[[4]]&]];*)


(* ::Input:: *)
(*bdrPriority[[;;10]]*)


(* ::Input:: *)
(*(*Export["data/analysis/a0_lopsided_bidrectional_edges.csv",bdrPriority];*)*)
