(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[      8956,        202]
NotebookOptionsPosition[      9069,        187]
NotebookOutlinePosition[      9732,        214]
CellTagsIndexPosition[      9689,        211]
WindowTitle->Cross Sections of Quadratic Surfaces - Source
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`kk$$ = -6.1, $CellContext`plano$$ = \
$CellContext`z, $CellContext`Superficie$$ = -9 + $CellContext`x^2 + \
$CellContext`y^2, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`Superficie$$], $CellContext`x^2 + 
       Rational[1, 2] $CellContext`y^2 - $CellContext`z, 
       "surface"}, {-9 + $CellContext`x^2 + $CellContext`y^2 -> 
       "circular cylinder", -$CellContext`x^2 + $CellContext`z -> 
       "parabolic cylinder", $CellContext`x^2 + 
        Rational[1, 2] $CellContext`y^2 - $CellContext`z -> 
       "elliptic paraboloid", -9 + $CellContext`x^2 + 
        Rational[1, 2] $CellContext`y^2 + Rational[1, 3] $CellContext`z^2 -> 
       "ellipsoid", 
       Rational[1, 6] $CellContext`x^2 + 
        Rational[-1, 3] $CellContext`y^2 - $CellContext`z -> 
       "hyperbolic paraboloid", $CellContext`x^2 + 
        2 $CellContext`y^2 - $CellContext`z^2 -> 
       "cone", -3 + $CellContext`x^2 + 2 $CellContext`y^2 - $CellContext`z^2 -> 
       "hyperboloid of one sheet", 
       1 + $CellContext`x^2 + 2 $CellContext`y^2 - $CellContext`z^2 -> 
       "hyperboloid of two sheets"}}, {{
       Hold[$CellContext`plano$$], $CellContext`z, 
       "plane direction"}, {$CellContext`z -> Row[{" plane ", 
          Text[
           Style["z", Italic]], " = ", 
          Text[
           Style["k", Italic]], " "}], $CellContext`x -> Row[{" plane ", 
          Text[
           Style["x", Italic]], " = ", 
          Text[
           Style["k", Italic]], " "}], $CellContext`y -> Row[{" plane ", 
          Text[
           Style["y", Italic]], " = ", 
          Text[
           Style["k", Italic]], " "}]}}, {{
       Hold[$CellContext`kk$$], -6.1, 
       Text[
        Style["k", Italic]]}, -6.1, 6.1, 0.01}}, Typeset`size$$ = {
    462., {201., 206.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`Superficie$3952$$ = 
    False, $CellContext`plano$3953$$ = False, $CellContext`kk$3954$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`kk$$ = -6.1, $CellContext`plano$$ = \
$CellContext`z, $CellContext`Superficie$$ = $CellContext`x^2 + 
         Rational[1, 2] $CellContext`y^2 - $CellContext`z}, 
      "ControllerVariables" :> {
        Hold[$CellContext`Superficie$$, $CellContext`Superficie$3952$$, 
         False], 
        Hold[$CellContext`plano$$, $CellContext`plano$3953$$, False], 
        Hold[$CellContext`kk$$, $CellContext`kk$3954$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      ContourPlot3D[{$CellContext`Superficie$$, $CellContext`plano$$ - \
$CellContext`kk$$}, {$CellContext`x, -6, 6}, {$CellContext`y, -6, 
         6}, {$CellContext`z, -6, 6}, Contours -> {0}, 
        AxesOrigin -> {0, 0, 0}, SphericalRegion -> True, Boxed -> False, 
        Mesh -> {{0}}, MeshFunctions -> {
          
          ReplaceAll[#3 - $CellContext`kk$$& , 3 -> 
           Switch[$CellContext`plano$$, $CellContext`z, 3, $CellContext`x, 
             1, $CellContext`y, 2]]}, MeshStyle -> Directive[Thick], 
        Ticks -> {{{6.1, $CellContext`x}}, {{6.1, $CellContext`y}}, {{
           6.1, $CellContext`z}}}, AxesStyle -> Directive[Thick], 
        BoundaryStyle -> Directive[Blue], ContourStyle -> Opacity[0.8], 
        PerformanceGoal -> "Quality", ViewPoint -> {4, 4, 2}, ImageSize -> 
        1.1 {420, 370}, PlotLabel -> 
        Switch[$CellContext`Superficie$$, $CellContext`x^2 + $CellContext`y^2 - 
          9, 
          
          Row[{$CellContext`x^2 + $CellContext`y^2 == 9, 
            ", ", $CellContext`plano$$ == $CellContext`kk$$}], $CellContext`z - \
$CellContext`x^2, 
          
          Row[{$CellContext`z == $CellContext`x^2, 
            
            ", ", $CellContext`plano$$ == $CellContext`kk$$}], \
$CellContext`x^2 + $CellContext`y^2/2 - $CellContext`z, 
          
          Row[{$CellContext`x^2 + $CellContext`y^2/2 == $CellContext`z, 
            ", ", $CellContext`plano$$ == $CellContext`kk$$}], \
$CellContext`x^2 + (1/2) $CellContext`y^2 + (1/3) $CellContext`z^2 - 9, 
          
          Row[{$CellContext`x^2 + (1/2) $CellContext`y^2 + (1/
               3) $CellContext`z^2 == 9, 
            ", ", $CellContext`plano$$ == $CellContext`kk$$}], (1/
            6) $CellContext`x^2 - (1/3) $CellContext`y^2 - $CellContext`z, 
          
          Row[{$CellContext`z == (1/6) $CellContext`x^2 - (1/
              3) $CellContext`y^2, 
            ", ", $CellContext`plano$$ == $CellContext`kk$$}], \
$CellContext`x^2 + 2 $CellContext`y^2 - $CellContext`z^2, 
          
          Row[{$CellContext`x^2 + 2 $CellContext`y^2 - $CellContext`z^2, 
            ", ", $CellContext`plano$$ == $CellContext`kk$$}], 
          2 $CellContext`y^2 + $CellContext`x^2 - $CellContext`z^2 - 3, 
          
          Row[{$CellContext`x^2 + 2 $CellContext`y^2 - $CellContext`z^2 == 3, 
            ", ", $CellContext`plano$$ == $CellContext`kk$$}], 
          2 $CellContext`y^2 + $CellContext`x^2 - $CellContext`z^2 + 1, 
          
          Row[{$CellContext`x^2 + 2 $CellContext`y^2 - $CellContext`z^2 == -1,
             ", ", $CellContext`plano$$ == $CellContext`kk$$}]]], 
      "Specifications" :> {{{$CellContext`Superficie$$, $CellContext`x^2 + 
          Rational[1, 2] $CellContext`y^2 - $CellContext`z, 
          "surface"}, {-9 + $CellContext`x^2 + $CellContext`y^2 -> 
          "circular cylinder", -$CellContext`x^2 + $CellContext`z -> 
          "parabolic cylinder", $CellContext`x^2 + 
           Rational[1, 2] $CellContext`y^2 - $CellContext`z -> 
          "elliptic paraboloid", -9 + $CellContext`x^2 + 
           Rational[1, 2] $CellContext`y^2 + Rational[1, 3] $CellContext`z^2 -> 
          "ellipsoid", 
          Rational[1, 6] $CellContext`x^2 + 
           Rational[-1, 3] $CellContext`y^2 - $CellContext`z -> 
          "hyperbolic paraboloid", $CellContext`x^2 + 
           2 $CellContext`y^2 - $CellContext`z^2 -> 
          "cone", -3 + $CellContext`x^2 + 
           2 $CellContext`y^2 - $CellContext`z^2 -> 
          "hyperboloid of one sheet", 
          1 + $CellContext`x^2 + 2 $CellContext`y^2 - $CellContext`z^2 -> 
          "hyperboloid of two sheets"}, ControlType -> 
         PopupMenu}, {{$CellContext`plano$$, $CellContext`z, 
          "plane direction"}, {$CellContext`z -> Row[{" plane ", 
             Text[
              Style["z", Italic]], " = ", 
             Text[
              Style["k", Italic]], " "}], $CellContext`x -> Row[{" plane ", 
             Text[
              Style["x", Italic]], " = ", 
             Text[
              Style["k", Italic]], " "}], $CellContext`y -> Row[{" plane ", 
             Text[
              Style["y", Italic]], " = ", 
             Text[
              Style["k", Italic]], " "}]}}, {{$CellContext`kk$$, -6.1, 
          Text[
           Style["k", Italic]]}, -6.1, 6.1, 0.01, Appearance -> "Labeled"}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{507., {278., 283.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
},
Editable->True,
Saveable->False,
ScreenStyleEnvironment->"Working",
CellInsertionPointCell->None,
WindowSize->{838, 1024},
WindowElements->{
 "StatusArea", "MemoryMonitor", "MagnificationPopUp", "VerticalScrollBar", 
  "MenuBar"},
WindowTitle->"Cross Sections of Quadratic Surfaces - Source",
DockedCells->{},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"8.0 for Linux x86 (64-bit) (October 10, 2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1294, 31, 7771, 154, 578, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature bwpGVa8RrIr1YAwVlCVK4WD0 *)
