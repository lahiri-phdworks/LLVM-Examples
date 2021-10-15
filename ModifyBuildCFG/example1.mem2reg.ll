; ModuleID = 'example1.bc'
source_filename = "example1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_example1.cpp, i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @_Z6retvalv() local_unnamed_addr #3 !dbg !905 {
entry:
  %call = call i32 @rand() #8, !dbg !907
  %rem = srem i32 %call, 5, !dbg !908
  ret i32 %rem, !dbg !909
}

; Function Attrs: nounwind
declare !dbg !910 dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local i32 @main() local_unnamed_addr #4 !dbg !911 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !913, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 7, metadata !914, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !916, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !918, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !919, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !920, metadata !DIExpression()), !dbg !939
  %call = call i64 @time(i64* null) #8, !dbg !940
  %conv = trunc i64 %call to i32, !dbg !940
  call void @srand(i32 %conv) #8, !dbg !941
  %call1 = call i32 @rand() #8, !dbg !942
  %rem = srem i32 %call1, 10, !dbg !943
  call void @llvm.dbg.value(metadata i32 %rem, metadata !913, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !925, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 0, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !916, metadata !DIExpression()), !dbg !939
  %call2240 = call i32 @rand() #8, !dbg !945
  %rem3241 = srem i32 %call2240, 5, !dbg !946
  %cmp242 = icmp sgt i32 %rem3241, 0, !dbg !947
  br i1 %cmp242, label %for.body, label %for.cond.cleanup, !dbg !948

for.cond.cleanup:                                 ; preds = %for.inc51, %entry
  %a.0.lcssa = phi i32 [ %rem, %entry ], [ %a.4, %for.inc51 ], !dbg !949
  call void @llvm.dbg.value(metadata i32 %a.0.lcssa, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 7, metadata !916, metadata !DIExpression()), !dbg !939
  %call54 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 7), !dbg !950
  %call55 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call54, i32 %a.0.lcssa), !dbg !951
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call55, metadata !952, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call55, metadata !971, metadata !DIExpression()), !dbg !1034
  %i = bitcast %"class.std::basic_ostream"* %call55 to i8**, !dbg !1036
  %vtable.i = load i8*, i8** %i, align 8, !dbg !1036, !tbaa !1037
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24, !dbg !1036
  %i1 = bitcast i8* %vbase.offset.ptr.i to i64*, !dbg !1036
  %vbase.offset.i = load i64, i64* %i1, align 8, !dbg !1036
  %i2 = bitcast %"class.std::basic_ostream"* %call55 to i8*, !dbg !1036
  %add.ptr.i = getelementptr inbounds i8, i8* %i2, i64 %vbase.offset.i, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %add.ptr.i, metadata !1040, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8 10, metadata !1052, metadata !DIExpression()), !dbg !1054
  %_M_ctype.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 240, !dbg !1056
  %i3 = bitcast i8* %_M_ctype.i.i to %"class.std::ctype"**, !dbg !1056
  %i4 = load %"class.std::ctype"*, %"class.std::ctype"** %i3, align 8, !dbg !1056, !tbaa !1057
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i4, metadata !1062, metadata !DIExpression()), !dbg !1074
  %tobool.not.i.i.i = icmp eq %"class.std::ctype"* %i4, null, !dbg !1076
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, !dbg !1078

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #9, !dbg !1079
  unreachable, !dbg !1079

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i4, metadata !1080, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 10, metadata !1088, metadata !DIExpression()), !dbg !1089
  %_M_widen_ok.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i4, i64 0, i32 8, !dbg !1091
  %i5 = load i8, i8* %_M_widen_ok.i.i.i, align 8, !dbg !1091, !tbaa !1093
  %tobool.not.i3.i.i = icmp eq i8 %i5, 0, !dbg !1091
  br i1 %tobool.not.i3.i.i, label %if.end.i.i.i, label %if.then.i4.i.i, !dbg !1095

if.then.i4.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i4, i64 0, i32 9, i64 10, !dbg !1096
  %i6 = load i8, i8* %arrayidx.i.i.i, align 1, !dbg !1096, !tbaa !1097
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, !dbg !1098

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i4), !dbg !1099
  %i7 = bitcast %"class.std::ctype"* %i4 to i8 (%"class.std::ctype"*, i8)***, !dbg !1100
  %vtable.i.i.i = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %i7, align 8, !dbg !1100, !tbaa !1037
  %vfn.i.i.i = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i, i64 6, !dbg !1100
  %i8 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i, align 8, !dbg !1100
  %call.i.i.i = call signext i8 %i8(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i4, i8 signext 10), !dbg !1100
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, !dbg !1101

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i4.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %i6, %if.then.i4.i.i ], [ %call.i.i.i, %if.end.i.i.i ], !dbg !1089
  %call1.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call55, i8 signext %retval.0.i.i.i), !dbg !1102
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call1.i, metadata !1103, metadata !DIExpression()), !dbg !1106
  %call.i.i = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i), !dbg !1108
  ret i32 0, !dbg !1109

for.body:                                         ; preds = %entry, %for.inc51
  %i.0246 = phi i32 [ %inc52, %for.inc51 ], [ 0, %entry ]
  %a.0245 = phi i32 [ %a.4, %for.inc51 ], [ %rem, %entry ]
  %c.0244 = phi i32 [ %c.4, %for.inc51 ], [ 0, %entry ]
  %d.0243 = phi i32 [ %d.3, %for.inc51 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.0246, metadata !925, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %a.0245, metadata !913, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %c.0244, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %d.0243, metadata !916, metadata !DIExpression()), !dbg !939
  %rem4 = srem i32 %i.0246, 5, !dbg !1110
  %cmp5 = icmp eq i32 %rem4, 0, !dbg !1111
  br i1 %cmp5, label %for.body9, label %for.inc51, !dbg !1112

for.body9:                                        ; preds = %for.body, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205
  %j.0239 = phi i32 [ %inc, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205 ], [ 0, %for.body ]
  %i.1238 = phi i32 [ %i.3, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205 ], [ %i.0246, %for.body ]
  %a.1237 = phi i32 [ %rem.i104, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205 ], [ %a.0245, %for.body ]
  %c.1236 = phi i32 [ %c.3, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205 ], [ %c.0244, %for.body ]
  %d.1235 = phi i32 [ %d.2, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205 ], [ %d.0243, %for.body ]
  call void @llvm.dbg.value(metadata i32 %j.0239, metadata !927, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %i.1238, metadata !925, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %a.1237, metadata !913, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %c.1236, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %d.1235, metadata !916, metadata !DIExpression()), !dbg !939
  %call10 = call i32 @rand() #8, !dbg !1114
  %rem11 = srem i32 %call10, 100, !dbg !1115
  %cmp12 = icmp eq i32 %rem11, 10, !dbg !1116
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !1117

if.then13:                                        ; preds = %for.body9
  call void @llvm.dbg.value(metadata i32 8, metadata !913, metadata !DIExpression()), !dbg !939
  %call14 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 8), !dbg !1118
  %call15 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call14, i32 %c.1236), !dbg !1120
  %call16 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call15, i32 %d.1235), !dbg !1121
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call16, metadata !952, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call16, metadata !971, metadata !DIExpression()), !dbg !1124
  %i9 = bitcast %"class.std::basic_ostream"* %call16 to i8**, !dbg !1126
  %vtable.i106 = load i8*, i8** %i9, align 8, !dbg !1126, !tbaa !1037
  %vbase.offset.ptr.i107 = getelementptr i8, i8* %vtable.i106, i64 -24, !dbg !1126
  %i10 = bitcast i8* %vbase.offset.ptr.i107 to i64*, !dbg !1126
  %vbase.offset.i108 = load i64, i64* %i10, align 8, !dbg !1126
  %add.ptr.i109 = getelementptr inbounds %"class.std::basic_ostream", %"class.std::basic_ostream"* %call16, i64 0, i32 1, i32 4, !dbg !1126
  %i11 = bitcast %"class.std::basic_streambuf"** %add.ptr.i109 to i8*, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %i11, metadata !1040, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8 10, metadata !1052, metadata !DIExpression()), !dbg !1127
  %_M_ctype.i.i110 = getelementptr inbounds i8, i8* %i11, i64 %vbase.offset.i108, !dbg !1129
  %i12 = bitcast i8* %_M_ctype.i.i110 to %"class.std::ctype"**, !dbg !1129
  %i13 = load %"class.std::ctype"*, %"class.std::ctype"** %i12, align 8, !dbg !1129, !tbaa !1057
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i13, metadata !1062, metadata !DIExpression()), !dbg !1130
  %tobool.not.i.i.i111 = icmp eq %"class.std::ctype"* %i13, null, !dbg !1132
  br i1 %tobool.not.i.i.i111, label %if.then.i.i.i112, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115, !dbg !1133

if.then.i.i.i112:                                 ; preds = %if.then13
  call void @_ZSt16__throw_bad_castv() #9, !dbg !1134
  unreachable, !dbg !1134

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115: ; preds = %if.then13
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i13, metadata !1080, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i8 10, metadata !1088, metadata !DIExpression()), !dbg !1135
  %_M_widen_ok.i.i.i113 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i13, i64 0, i32 8, !dbg !1137
  %i14 = load i8, i8* %_M_widen_ok.i.i.i113, align 8, !dbg !1137, !tbaa !1093
  %tobool.not.i3.i.i114 = icmp eq i8 %i14, 0, !dbg !1137
  br i1 %tobool.not.i3.i.i114, label %if.end.i.i.i121, label %if.then.i4.i.i117, !dbg !1138

if.then.i4.i.i117:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115
  %arrayidx.i.i.i116 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i13, i64 0, i32 9, i64 10, !dbg !1139
  %i15 = load i8, i8* %arrayidx.i.i.i116, align 1, !dbg !1139, !tbaa !1097
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit125, !dbg !1140

if.end.i.i.i121:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i115
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i13), !dbg !1141
  %i16 = bitcast %"class.std::ctype"* %i13 to i8 (%"class.std::ctype"*, i8)***, !dbg !1142
  %vtable.i.i.i118 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %i16, align 8, !dbg !1142, !tbaa !1037
  %vfn.i.i.i119 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i118, i64 6, !dbg !1142
  %i17 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i119, align 8, !dbg !1142
  %call.i.i.i120 = call signext i8 %i17(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i13, i8 signext 10), !dbg !1142
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit125, !dbg !1143

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit125: ; preds = %if.then.i4.i.i117, %if.end.i.i.i121
  %retval.0.i.i.i122 = phi i8 [ %i15, %if.then.i4.i.i117 ], [ %call.i.i.i120, %if.end.i.i.i121 ], !dbg !1135
  %call1.i123 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call16, i8 signext %retval.0.i.i.i122), !dbg !1144
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call1.i123, metadata !1103, metadata !DIExpression()), !dbg !1145
  %call.i.i124 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i123), !dbg !1147
  br label %if.end40, !dbg !1148

if.else:                                          ; preds = %for.body9
  %sub = sub nsw i32 %c.1236, %a.1237, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %sub, metadata !916, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 7, metadata !917, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 -50, metadata !913, metadata !DIExpression()), !dbg !939
  %call19 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %sub), !dbg !1150
  %call20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call19, i32 7), !dbg !1151
  %call21 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call20, i32 -50), !dbg !1152
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call21, metadata !952, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call21, metadata !971, metadata !DIExpression()), !dbg !1155
  %i18 = bitcast %"class.std::basic_ostream"* %call21 to i8**, !dbg !1157
  %vtable.i126 = load i8*, i8** %i18, align 8, !dbg !1157, !tbaa !1037
  %vbase.offset.ptr.i127 = getelementptr i8, i8* %vtable.i126, i64 -24, !dbg !1157
  %i19 = bitcast i8* %vbase.offset.ptr.i127 to i64*, !dbg !1157
  %vbase.offset.i128 = load i64, i64* %i19, align 8, !dbg !1157
  %add.ptr.i129 = getelementptr inbounds %"class.std::basic_ostream", %"class.std::basic_ostream"* %call21, i64 0, i32 1, i32 4, !dbg !1157
  %i20 = bitcast %"class.std::basic_streambuf"** %add.ptr.i129 to i8*, !dbg !1157
  call void @llvm.dbg.value(metadata i8* %i20, metadata !1040, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata i8 10, metadata !1052, metadata !DIExpression()), !dbg !1158
  %_M_ctype.i.i130 = getelementptr inbounds i8, i8* %i20, i64 %vbase.offset.i128, !dbg !1160
  %i21 = bitcast i8* %_M_ctype.i.i130 to %"class.std::ctype"**, !dbg !1160
  %i22 = load %"class.std::ctype"*, %"class.std::ctype"** %i21, align 8, !dbg !1160, !tbaa !1057
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i22, metadata !1062, metadata !DIExpression()), !dbg !1161
  %tobool.not.i.i.i131 = icmp eq %"class.std::ctype"* %i22, null, !dbg !1163
  br i1 %tobool.not.i.i.i131, label %if.then.i.i.i132, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135, !dbg !1164

if.then.i.i.i132:                                 ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #9, !dbg !1165
  unreachable, !dbg !1165

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135: ; preds = %if.else
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i22, metadata !1080, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 10, metadata !1088, metadata !DIExpression()), !dbg !1166
  %_M_widen_ok.i.i.i133 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i22, i64 0, i32 8, !dbg !1168
  %i23 = load i8, i8* %_M_widen_ok.i.i.i133, align 8, !dbg !1168, !tbaa !1093
  %tobool.not.i3.i.i134 = icmp eq i8 %i23, 0, !dbg !1168
  br i1 %tobool.not.i3.i.i134, label %if.end.i.i.i141, label %if.then.i4.i.i137, !dbg !1169

if.then.i4.i.i137:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135
  %arrayidx.i.i.i136 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i22, i64 0, i32 9, i64 10, !dbg !1170
  %i24 = load i8, i8* %arrayidx.i.i.i136, align 1, !dbg !1170, !tbaa !1097
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit145, !dbg !1171

if.end.i.i.i141:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i22), !dbg !1172
  %i25 = bitcast %"class.std::ctype"* %i22 to i8 (%"class.std::ctype"*, i8)***, !dbg !1173
  %vtable.i.i.i138 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %i25, align 8, !dbg !1173, !tbaa !1037
  %vfn.i.i.i139 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i138, i64 6, !dbg !1173
  %i26 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i139, align 8, !dbg !1173
  %call.i.i.i140 = call signext i8 %i26(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i22, i8 signext 10), !dbg !1173
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit145, !dbg !1174

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit145: ; preds = %if.then.i4.i.i137, %if.end.i.i.i141
  %retval.0.i.i.i142 = phi i8 [ %i24, %if.then.i4.i.i137 ], [ %call.i.i.i140, %if.end.i.i.i141 ], !dbg !1166
  %call1.i143 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call21, i8 signext %retval.0.i.i.i142), !dbg !1175
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call1.i143, metadata !1103, metadata !DIExpression()), !dbg !1176
  %call.i.i144 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i143), !dbg !1178
  %cmp23 = icmp slt i32 %a.1237, 0, !dbg !1179
  br i1 %cmp23, label %if.then24, label %if.end, !dbg !1181

if.then24:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit145
  %sub25 = add nsw i32 %c.1236, -1, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %sub25, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 -49, metadata !913, metadata !DIExpression()), !dbg !939
  %call27 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %sub25), !dbg !1184
  %call28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call27, i32 %sub), !dbg !1185
  %call29 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call28, i32 -49), !dbg !1186
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call29, metadata !952, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call29, metadata !971, metadata !DIExpression()), !dbg !1189
  %i27 = bitcast %"class.std::basic_ostream"* %call29 to i8**, !dbg !1191
  %vtable.i146 = load i8*, i8** %i27, align 8, !dbg !1191, !tbaa !1037
  %vbase.offset.ptr.i147 = getelementptr i8, i8* %vtable.i146, i64 -24, !dbg !1191
  %i28 = bitcast i8* %vbase.offset.ptr.i147 to i64*, !dbg !1191
  %vbase.offset.i148 = load i64, i64* %i28, align 8, !dbg !1191
  %add.ptr.i149 = getelementptr inbounds %"class.std::basic_ostream", %"class.std::basic_ostream"* %call29, i64 0, i32 1, i32 4, !dbg !1191
  %i29 = bitcast %"class.std::basic_streambuf"** %add.ptr.i149 to i8*, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %i29, metadata !1040, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8 10, metadata !1052, metadata !DIExpression()), !dbg !1192
  %_M_ctype.i.i150 = getelementptr inbounds i8, i8* %i29, i64 %vbase.offset.i148, !dbg !1194
  %i30 = bitcast i8* %_M_ctype.i.i150 to %"class.std::ctype"**, !dbg !1194
  %i31 = load %"class.std::ctype"*, %"class.std::ctype"** %i30, align 8, !dbg !1194, !tbaa !1057
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i31, metadata !1062, metadata !DIExpression()), !dbg !1195
  %tobool.not.i.i.i151 = icmp eq %"class.std::ctype"* %i31, null, !dbg !1197
  br i1 %tobool.not.i.i.i151, label %if.then.i.i.i152, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155, !dbg !1198

if.then.i.i.i152:                                 ; preds = %if.then24
  call void @_ZSt16__throw_bad_castv() #9, !dbg !1199
  unreachable, !dbg !1199

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155: ; preds = %if.then24
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i31, metadata !1080, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i8 10, metadata !1088, metadata !DIExpression()), !dbg !1200
  %_M_widen_ok.i.i.i153 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i31, i64 0, i32 8, !dbg !1202
  %i32 = load i8, i8* %_M_widen_ok.i.i.i153, align 8, !dbg !1202, !tbaa !1093
  %tobool.not.i3.i.i154 = icmp eq i8 %i32, 0, !dbg !1202
  br i1 %tobool.not.i3.i.i154, label %if.end.i.i.i161, label %if.then.i4.i.i157, !dbg !1203

if.then.i4.i.i157:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155
  %arrayidx.i.i.i156 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i31, i64 0, i32 9, i64 10, !dbg !1204
  %i33 = load i8, i8* %arrayidx.i.i.i156, align 1, !dbg !1204, !tbaa !1097
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit165, !dbg !1205

if.end.i.i.i161:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i155
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i31), !dbg !1206
  %i34 = bitcast %"class.std::ctype"* %i31 to i8 (%"class.std::ctype"*, i8)***, !dbg !1207
  %vtable.i.i.i158 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %i34, align 8, !dbg !1207, !tbaa !1037
  %vfn.i.i.i159 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i158, i64 6, !dbg !1207
  %i35 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i159, align 8, !dbg !1207
  %call.i.i.i160 = call signext i8 %i35(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i31, i8 signext 10), !dbg !1207
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit165, !dbg !1208

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit165: ; preds = %if.then.i4.i.i157, %if.end.i.i.i161
  %retval.0.i.i.i162 = phi i8 [ %i33, %if.then.i4.i.i157 ], [ %call.i.i.i160, %if.end.i.i.i161 ], !dbg !1200
  %call1.i163 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call29, i8 signext %retval.0.i.i.i162), !dbg !1209
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call1.i163, metadata !1103, metadata !DIExpression()), !dbg !1210
  %call.i.i164 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i163), !dbg !1212
  %call.i101 = call i32 @rand() #8, !dbg !1213
  call void @llvm.dbg.value(metadata i32 undef, metadata !913, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !913, metadata !DIExpression()), !dbg !939
  br label %if.end, !dbg !1215

if.end:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit165, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit145
  %c.2 = phi i32 [ %sub25, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit165 ], [ %c.1236, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit145 ], !dbg !939
  %a.2 = phi i32 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit165 ], [ -50, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit145 ], !dbg !1216
  call void @llvm.dbg.value(metadata i32 %a.2, metadata !913, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %c.2, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 10, metadata !933, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i32 %i.1238, metadata !925, metadata !DIExpression()), !dbg !944
  %cmp34232 = icmp sgt i32 %i.1238, 0, !dbg !1218
  br i1 %cmp34232, label %for.body36.preheader, label %if.end40, !dbg !1220

for.body36.preheader:                             ; preds = %if.end
  %i36 = add i32 %i.1238, %a.2, !dbg !1220
  br label %for.body36, !dbg !1220

for.body36:                                       ; preds = %for.body36.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185
  %a.3233 = phi i32 [ %add37, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185 ], [ %a.2, %for.body36.preheader ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !925, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %a.3233, metadata !913, metadata !DIExpression()), !dbg !939
  %add37 = add nsw i32 %a.3233, 1, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %add37, metadata !913, metadata !DIExpression()), !dbg !939
  %call38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %add37), !dbg !1223
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call38, metadata !952, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call38, metadata !971, metadata !DIExpression()), !dbg !1226
  %i37 = bitcast %"class.std::basic_ostream"* %call38 to i8**, !dbg !1228
  %vtable.i166 = load i8*, i8** %i37, align 8, !dbg !1228, !tbaa !1037
  %vbase.offset.ptr.i167 = getelementptr i8, i8* %vtable.i166, i64 -24, !dbg !1228
  %i38 = bitcast i8* %vbase.offset.ptr.i167 to i64*, !dbg !1228
  %vbase.offset.i168 = load i64, i64* %i38, align 8, !dbg !1228
  %add.ptr.i169 = getelementptr inbounds %"class.std::basic_ostream", %"class.std::basic_ostream"* %call38, i64 0, i32 1, i32 4, !dbg !1228
  %i39 = bitcast %"class.std::basic_streambuf"** %add.ptr.i169 to i8*, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %i39, metadata !1040, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 10, metadata !1052, metadata !DIExpression()), !dbg !1229
  %_M_ctype.i.i170 = getelementptr inbounds i8, i8* %i39, i64 %vbase.offset.i168, !dbg !1231
  %i40 = bitcast i8* %_M_ctype.i.i170 to %"class.std::ctype"**, !dbg !1231
  %i41 = load %"class.std::ctype"*, %"class.std::ctype"** %i40, align 8, !dbg !1231, !tbaa !1057
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i41, metadata !1062, metadata !DIExpression()), !dbg !1232
  %tobool.not.i.i.i171 = icmp eq %"class.std::ctype"* %i41, null, !dbg !1234
  br i1 %tobool.not.i.i.i171, label %if.then.i.i.i172, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175, !dbg !1235

if.then.i.i.i172:                                 ; preds = %for.body36
  call void @_ZSt16__throw_bad_castv() #9, !dbg !1236
  unreachable, !dbg !1236

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175: ; preds = %for.body36
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i41, metadata !1080, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 10, metadata !1088, metadata !DIExpression()), !dbg !1237
  %_M_widen_ok.i.i.i173 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i41, i64 0, i32 8, !dbg !1239
  %i42 = load i8, i8* %_M_widen_ok.i.i.i173, align 8, !dbg !1239, !tbaa !1093
  %tobool.not.i3.i.i174 = icmp eq i8 %i42, 0, !dbg !1239
  br i1 %tobool.not.i3.i.i174, label %if.end.i.i.i181, label %if.then.i4.i.i177, !dbg !1240

if.then.i4.i.i177:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175
  %arrayidx.i.i.i176 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i41, i64 0, i32 9, i64 10, !dbg !1241
  %i43 = load i8, i8* %arrayidx.i.i.i176, align 1, !dbg !1241, !tbaa !1097
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185, !dbg !1242

if.end.i.i.i181:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i175
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i41), !dbg !1243
  %i44 = bitcast %"class.std::ctype"* %i41 to i8 (%"class.std::ctype"*, i8)***, !dbg !1244
  %vtable.i.i.i178 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %i44, align 8, !dbg !1244, !tbaa !1037
  %vfn.i.i.i179 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i178, i64 6, !dbg !1244
  %i45 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i179, align 8, !dbg !1244
  %call.i.i.i180 = call signext i8 %i45(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i41, i8 signext 10), !dbg !1244
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185, !dbg !1245

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185: ; preds = %if.then.i4.i.i177, %if.end.i.i.i181
  %retval.0.i.i.i182 = phi i8 [ %i43, %if.then.i4.i.i177 ], [ %call.i.i.i180, %if.end.i.i.i181 ], !dbg !1237
  %call1.i183 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call38, i8 signext %retval.0.i.i.i182), !dbg !1246
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call1.i183, metadata !1103, metadata !DIExpression()), !dbg !1247
  %call.i.i184 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i183), !dbg !1249
  call void @llvm.dbg.value(metadata i32 undef, metadata !925, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !944
  call void @llvm.dbg.value(metadata i32 %add37, metadata !913, metadata !DIExpression()), !dbg !939
  %exitcond.not = icmp eq i32 %add37, %i36, !dbg !1218
  br i1 %exitcond.not, label %if.end40, label %for.body36, !dbg !1220, !llvm.loop !1250

if.end40:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185, %if.end, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit125
  %d.2 = phi i32 [ %d.1235, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit125 ], [ %sub, %if.end ], [ %sub, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185 ], !dbg !939
  %c.3 = phi i32 [ %c.1236, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit125 ], [ %c.2, %if.end ], [ %c.2, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185 ], !dbg !939
  %i.3 = phi i32 [ %i.1238, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit125 ], [ %i.1238, %if.end ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit185 ], !dbg !1254
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !925, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %c.3, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %d.2, metadata !916, metadata !DIExpression()), !dbg !939
  %call.i103 = call i32 @rand() #8, !dbg !1255
  %rem.i104 = srem i32 %call.i103, 5, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %rem.i104, metadata !913, metadata !DIExpression()), !dbg !939
  %call42 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %j.0239), !dbg !1258
  %call43 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call42, i32 %rem.i104), !dbg !1259
  %call44 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call43, i32 7), !dbg !1260
  %call45 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call44, i32 %c.3), !dbg !1261
  %call46 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call45, i32 %d.2), !dbg !1262
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call46, metadata !952, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call46, metadata !971, metadata !DIExpression()), !dbg !1265
  %i46 = bitcast %"class.std::basic_ostream"* %call46 to i8**, !dbg !1267
  %vtable.i186 = load i8*, i8** %i46, align 8, !dbg !1267, !tbaa !1037
  %vbase.offset.ptr.i187 = getelementptr i8, i8* %vtable.i186, i64 -24, !dbg !1267
  %i47 = bitcast i8* %vbase.offset.ptr.i187 to i64*, !dbg !1267
  %vbase.offset.i188 = load i64, i64* %i47, align 8, !dbg !1267
  %add.ptr.i189 = getelementptr inbounds %"class.std::basic_ostream", %"class.std::basic_ostream"* %call46, i64 0, i32 1, i32 4, !dbg !1267
  %i48 = bitcast %"class.std::basic_streambuf"** %add.ptr.i189 to i8*, !dbg !1267
  call void @llvm.dbg.value(metadata i8* %i48, metadata !1040, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i8 10, metadata !1052, metadata !DIExpression()), !dbg !1268
  %_M_ctype.i.i190 = getelementptr inbounds i8, i8* %i48, i64 %vbase.offset.i188, !dbg !1270
  %i49 = bitcast i8* %_M_ctype.i.i190 to %"class.std::ctype"**, !dbg !1270
  %i50 = load %"class.std::ctype"*, %"class.std::ctype"** %i49, align 8, !dbg !1270, !tbaa !1057
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i50, metadata !1062, metadata !DIExpression()), !dbg !1271
  %tobool.not.i.i.i191 = icmp eq %"class.std::ctype"* %i50, null, !dbg !1273
  br i1 %tobool.not.i.i.i191, label %if.then.i.i.i192, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i195, !dbg !1274

if.then.i.i.i192:                                 ; preds = %if.end40
  call void @_ZSt16__throw_bad_castv() #9, !dbg !1275
  unreachable, !dbg !1275

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i195: ; preds = %if.end40
  call void @llvm.dbg.value(metadata %"class.std::ctype"* %i50, metadata !1080, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i8 10, metadata !1088, metadata !DIExpression()), !dbg !1276
  %_M_widen_ok.i.i.i193 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i50, i64 0, i32 8, !dbg !1278
  %i51 = load i8, i8* %_M_widen_ok.i.i.i193, align 8, !dbg !1278, !tbaa !1093
  %tobool.not.i3.i.i194 = icmp eq i8 %i51, 0, !dbg !1278
  br i1 %tobool.not.i3.i.i194, label %if.end.i.i.i201, label %if.then.i4.i.i197, !dbg !1279

if.then.i4.i.i197:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i195
  %arrayidx.i.i.i196 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %i50, i64 0, i32 9, i64 10, !dbg !1280
  %i52 = load i8, i8* %arrayidx.i.i.i196, align 1, !dbg !1280, !tbaa !1097
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205, !dbg !1281

if.end.i.i.i201:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i195
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i50), !dbg !1282
  %i53 = bitcast %"class.std::ctype"* %i50 to i8 (%"class.std::ctype"*, i8)***, !dbg !1283
  %vtable.i.i.i198 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %i53, align 8, !dbg !1283, !tbaa !1037
  %vfn.i.i.i199 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable.i.i.i198, i64 6, !dbg !1283
  %i54 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn.i.i.i199, align 8, !dbg !1283
  %call.i.i.i200 = call signext i8 %i54(%"class.std::ctype"* nonnull align 8 dereferenceable(570) %i50, i8 signext 10), !dbg !1283
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205, !dbg !1284

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205: ; preds = %if.then.i4.i.i197, %if.end.i.i.i201
  %retval.0.i.i.i202 = phi i8 [ %i52, %if.then.i4.i.i197 ], [ %call.i.i.i200, %if.end.i.i.i201 ], !dbg !1276
  %call1.i203 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call46, i8 signext %retval.0.i.i.i202), !dbg !1285
  call void @llvm.dbg.value(metadata %"class.std::basic_ostream"* %call1.i203, metadata !1103, metadata !DIExpression()), !dbg !1286
  %call.i.i204 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1.i203), !dbg !1288
  %inc = add nuw nsw i32 %j.0239, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %inc, metadata !927, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !925, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %rem.i104, metadata !913, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %c.3, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %d.2, metadata !916, metadata !DIExpression()), !dbg !939
  %exitcond252.not = icmp eq i32 %inc, 5, !dbg !1290
  br i1 %exitcond252.not, label %for.inc51, label %for.body9, !dbg !1291, !llvm.loop !1292

for.inc51:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205, %for.body
  %d.3 = phi i32 [ %d.0243, %for.body ], [ %d.2, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205 ], !dbg !1294
  %c.4 = phi i32 [ %c.0244, %for.body ], [ %c.3, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205 ], !dbg !1295
  %a.4 = phi i32 [ %a.0245, %for.body ], [ %rem.i104, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205 ], !dbg !949
  %i.4 = phi i32 [ %i.0246, %for.body ], [ %i.3, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit205 ], !dbg !1254
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !925, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata i32 %a.4, metadata !913, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %c.4, metadata !915, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 %d.3, metadata !916, metadata !DIExpression()), !dbg !939
  %inc52 = add nsw i32 %i.4, 1, !dbg !1296
  call void @llvm.dbg.value(metadata i32 %inc52, metadata !925, metadata !DIExpression()), !dbg !944
  %call2 = call i32 @rand() #8, !dbg !945
  %rem3 = srem i32 %call2, 5, !dbg !946
  %cmp = icmp slt i32 %inc52, %rem3, !dbg !947
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !948, !llvm.loop !1297
}

; Function Attrs: nounwind
declare !dbg !1299 dso_local void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !1300 dso_local i64 @time(i64*) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_example1.cpp() #6 section ".text.startup" !dbg !1305 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !1307
  %i = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8, !dbg !1311
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!900, !901, !902, !903}
!llvm.ident = !{!904}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/iostream", directory: "")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 626, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/bits/ios_base.h", directory: "")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8ios_base")
!7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !8, producer: "clang version 14.0.0 (https://github.com/HPSSA-LLVM/llvm-project.git ad890aa2327feb6b6aee676fe85b2352fba2403e)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !11, imports: !12, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "example1.cpp", directory: "/home/zcluster55/llvm-examples/LLVM-Examples/ModifyBuildCFG")
!9 = !{!10}
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!0}
!12 = !{!13, !33, !36, !41, !106, !114, !118, !125, !129, !133, !135, !137, !141, !150, !154, !160, !166, !168, !172, !176, !180, !184, !195, !197, !201, !205, !209, !211, !216, !220, !224, !226, !228, !232, !240, !244, !248, !252, !254, !260, !262, !269, !274, !278, !282, !286, !290, !294, !296, !298, !302, !306, !310, !312, !316, !320, !322, !324, !328, !334, !339, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !358, !362, !366, !371, !375, !378, !381, !384, !386, !388, !390, !393, !396, !399, !402, !405, !407, !411, !414, !417, !420, !422, !424, !426, !428, !431, !434, !437, !440, !443, !445, !449, !453, !458, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !494, !498, !504, !508, !513, !515, !520, !524, !528, !539, !543, !547, !551, !555, !559, !563, !567, !571, !575, !579, !583, !587, !589, !593, !597, !601, !607, !611, !615, !617, !621, !625, !631, !633, !637, !641, !645, !649, !653, !657, !661, !662, !663, !664, !666, !667, !668, !669, !670, !671, !672, !676, !682, !687, !691, !693, !695, !697, !699, !706, !710, !714, !718, !722, !726, !731, !735, !737, !741, !747, !751, !756, !758, !761, !765, !769, !771, !773, !775, !777, !781, !783, !785, !789, !793, !797, !801, !805, !809, !811, !815, !819, !823, !827, !829, !831, !835, !839, !840, !841, !842, !843, !844, !850, !853, !854, !856, !858, !860, !862, !866, !868, !870, !872, !874, !876, !878, !880, !882, !886, !890, !892, !896}
!13 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !14, file: !32, line: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !15, line: 6, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !19, identifier: "_ZTS11__mbstate_t")
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !18, file: !17, line: 15, baseType: !21, size: 32)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !18, file: !17, line: 20, baseType: !23, size: 32, offset: 32)
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !17, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !24, identifier: "_ZTSN11__mbstate_tUt_E")
!24 = !{!25, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !23, file: !17, line: 18, baseType: !26, size: 32)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !23, file: !17, line: 19, baseType: !28, size: 32)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !30)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{!31}
!31 = !DISubrange(count: 4)
!32 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/cwchar", directory: "")
!33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !34, file: !32, line: 141)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !35, line: 20, baseType: !26)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "")
!36 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !37, file: !32, line: 143)
!37 = !DISubprogram(name: "btowc", scope: !38, file: !38, line: 318, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!38 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!39 = !DISubroutineType(types: !40)
!40 = !{!34, !21}
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !42, file: !32, line: 144)
!42 = !DISubprogram(name: "fgetwc", scope: !38, file: !38, line: 726, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!43 = !DISubroutineType(types: !44)
!44 = !{!34, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !47, line: 5, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !50, identifier: "_ZTS8_IO_FILE")
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!50 = !{!51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !69, !70, !71, !75, !77, !79, !83, !86, !88, !91, !94, !95, !97, !101, !102}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 51, baseType: !21, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 54, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 55, baseType: !53, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 56, baseType: !53, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 57, baseType: !53, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 58, baseType: !53, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 59, baseType: !53, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 60, baseType: !53, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 61, baseType: !53, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 64, baseType: !53, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 65, baseType: !53, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 66, baseType: !53, size: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 68, baseType: !65, size: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 36, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS10_IO_marker")
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 70, baseType: !68, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 72, baseType: !21, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 73, baseType: !21, size: 32, offset: 928)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 74, baseType: !72, size: 64, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 152, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!74 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 77, baseType: !76, size: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 78, baseType: !78, size: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 79, baseType: !80, size: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 81, baseType: !84, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 43, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 89, baseType: !87, size: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 153, baseType: !74)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !48, file: !49, line: 91, baseType: !89, size: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !49, line: 37, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS11_IO_codecvt")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !48, file: !49, line: 92, baseType: !92, size: 64, offset: 1280)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !49, line: 38, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13_IO_wide_data")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !48, file: !49, line: 93, baseType: !68, size: 64, offset: 1344)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !48, file: !49, line: 94, baseType: !96, size: 64, offset: 1408)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !48, file: !49, line: 95, baseType: !98, size: 64, offset: 1472)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 46, baseType: !100)
!99 = !DIFile(filename: "/usr/local/lib/clang/14.0.0/include/stddef.h", directory: "")
!100 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 96, baseType: !21, size: 32, offset: 1536)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 98, baseType: !103, size: 160, offset: 1568)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 20)
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !107, file: !32, line: 145)
!107 = !DISubprogram(name: "fgetws", scope: !38, file: !38, line: 755, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !112, !21, !113}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !115, file: !32, line: 146)
!115 = !DISubprogram(name: "fputwc", scope: !38, file: !38, line: 740, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubroutineType(types: !117)
!117 = !{!34, !111, !45}
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !119, file: !32, line: 147)
!119 = !DISubprogram(name: "fputws", scope: !38, file: !38, line: 762, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DISubroutineType(types: !121)
!121 = !{!21, !122, !113}
!122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !126, file: !32, line: 148)
!126 = !DISubprogram(name: "fwide", scope: !38, file: !38, line: 573, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DISubroutineType(types: !128)
!128 = !{!21, !45, !21}
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !130, file: !32, line: 149)
!130 = !DISubprogram(name: "fwprintf", scope: !38, file: !38, line: 580, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DISubroutineType(types: !132)
!132 = !{!21, !113, !122, null}
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !134, file: !32, line: 150)
!134 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !38, file: !38, line: 640, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !136, file: !32, line: 151)
!136 = !DISubprogram(name: "getwc", scope: !38, file: !38, line: 727, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !138, file: !32, line: 152)
!138 = !DISubprogram(name: "getwchar", scope: !38, file: !38, line: 733, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{!34}
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !142, file: !32, line: 153)
!142 = !DISubprogram(name: "mbrlen", scope: !38, file: !38, line: 329, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DISubroutineType(types: !144)
!144 = !{!98, !145, !98, !148}
!145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !151, file: !32, line: 154)
!151 = !DISubprogram(name: "mbrtowc", scope: !38, file: !38, line: 296, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DISubroutineType(types: !153)
!153 = !{!98, !112, !145, !98, !148}
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !155, file: !32, line: 155)
!155 = !DISubprogram(name: "mbsinit", scope: !38, file: !38, line: 292, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DISubroutineType(types: !157)
!157 = !{!21, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !161, file: !32, line: 156)
!161 = !DISubprogram(name: "mbsrtowcs", scope: !38, file: !38, line: 337, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!162 = !DISubroutineType(types: !163)
!163 = !{!98, !112, !164, !98, !148}
!164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !167, file: !32, line: 157)
!167 = !DISubprogram(name: "putwc", scope: !38, file: !38, line: 741, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !169, file: !32, line: 158)
!169 = !DISubprogram(name: "putwchar", scope: !38, file: !38, line: 747, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DISubroutineType(types: !171)
!171 = !{!34, !111}
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !173, file: !32, line: 160)
!173 = !DISubprogram(name: "swprintf", scope: !38, file: !38, line: 590, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{!21, !112, !98, !122, null}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !177, file: !32, line: 162)
!177 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !38, file: !38, line: 647, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!21, !122, !122, null}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !181, file: !32, line: 163)
!181 = !DISubprogram(name: "ungetwc", scope: !38, file: !38, line: 770, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{!34, !34, !45}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !185, file: !32, line: 164)
!185 = !DISubprogram(name: "vfwprintf", scope: !38, file: !38, line: 598, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubroutineType(types: !187)
!187 = !{!21, !113, !122, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !190, identifier: "_ZTS13__va_list_tag")
!190 = !{!191, !192, !193, !194}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !189, file: !8, baseType: !26, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !189, file: !8, baseType: !26, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !189, file: !8, baseType: !96, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !189, file: !8, baseType: !96, size: 64, offset: 128)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !196, file: !32, line: 166)
!196 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !38, file: !38, line: 693, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !198, file: !32, line: 169)
!198 = !DISubprogram(name: "vswprintf", scope: !38, file: !38, line: 611, type: !199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!199 = !DISubroutineType(types: !200)
!200 = !{!21, !112, !98, !122, !188}
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !202, file: !32, line: 172)
!202 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !38, file: !38, line: 700, type: !203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!203 = !DISubroutineType(types: !204)
!204 = !{!21, !122, !122, !188}
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !206, file: !32, line: 174)
!206 = !DISubprogram(name: "vwprintf", scope: !38, file: !38, line: 606, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!207 = !DISubroutineType(types: !208)
!208 = !{!21, !122, !188}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !210, file: !32, line: 176)
!210 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !38, file: !38, line: 697, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !212, file: !32, line: 178)
!212 = !DISubprogram(name: "wcrtomb", scope: !38, file: !38, line: 301, type: !213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(types: !214)
!214 = !{!98, !215, !111, !148}
!215 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !217, file: !32, line: 179)
!217 = !DISubprogram(name: "wcscat", scope: !38, file: !38, line: 97, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{!110, !112, !122}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !221, file: !32, line: 180)
!221 = !DISubprogram(name: "wcscmp", scope: !38, file: !38, line: 106, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{!21, !123, !123}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !225, file: !32, line: 181)
!225 = !DISubprogram(name: "wcscoll", scope: !38, file: !38, line: 131, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !227, file: !32, line: 182)
!227 = !DISubprogram(name: "wcscpy", scope: !38, file: !38, line: 87, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !229, file: !32, line: 183)
!229 = !DISubprogram(name: "wcscspn", scope: !38, file: !38, line: 187, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{!98, !123, !123}
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !233, file: !32, line: 184)
!233 = !DISubprogram(name: "wcsftime", scope: !38, file: !38, line: 834, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{!98, !112, !98, !122, !236}
!236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !38, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !241, file: !32, line: 185)
!241 = !DISubprogram(name: "wcslen", scope: !38, file: !38, line: 222, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubroutineType(types: !243)
!243 = !{!98, !123}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !245, file: !32, line: 186)
!245 = !DISubprogram(name: "wcsncat", scope: !38, file: !38, line: 101, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!110, !112, !122, !98}
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !249, file: !32, line: 187)
!249 = !DISubprogram(name: "wcsncmp", scope: !38, file: !38, line: 109, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{!21, !123, !123, !98}
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !253, file: !32, line: 188)
!253 = !DISubprogram(name: "wcsncpy", scope: !38, file: !38, line: 92, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !255, file: !32, line: 189)
!255 = !DISubprogram(name: "wcsrtombs", scope: !38, file: !38, line: 343, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubroutineType(types: !257)
!257 = !{!98, !215, !258, !98, !148}
!258 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !261, file: !32, line: 190)
!261 = !DISubprogram(name: "wcsspn", scope: !38, file: !38, line: 191, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !263, file: !32, line: 191)
!263 = !DISubprogram(name: "wcstod", scope: !38, file: !38, line: 377, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !122, !267}
!266 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!267 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !270, file: !32, line: 193)
!270 = !DISubprogram(name: "wcstof", scope: !38, file: !38, line: 382, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !122, !267}
!273 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !275, file: !32, line: 195)
!275 = !DISubprogram(name: "wcstok", scope: !38, file: !38, line: 217, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !DISubroutineType(types: !277)
!277 = !{!110, !112, !122, !267}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !279, file: !32, line: 196)
!279 = !DISubprogram(name: "wcstol", scope: !38, file: !38, line: 428, type: !280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = !DISubroutineType(types: !281)
!281 = !{!74, !122, !267, !21}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !283, file: !32, line: 197)
!283 = !DISubprogram(name: "wcstoul", scope: !38, file: !38, line: 433, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{!100, !122, !267, !21}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !287, file: !32, line: 198)
!287 = !DISubprogram(name: "wcsxfrm", scope: !38, file: !38, line: 135, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DISubroutineType(types: !289)
!289 = !{!98, !112, !122, !98}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !291, file: !32, line: 199)
!291 = !DISubprogram(name: "wctob", scope: !38, file: !38, line: 324, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!21, !34}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !295, file: !32, line: 200)
!295 = !DISubprogram(name: "wmemcmp", scope: !38, file: !38, line: 258, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !297, file: !32, line: 201)
!297 = !DISubprogram(name: "wmemcpy", scope: !38, file: !38, line: 262, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !299, file: !32, line: 202)
!299 = !DISubprogram(name: "wmemmove", scope: !38, file: !38, line: 267, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubroutineType(types: !301)
!301 = !{!110, !110, !123, !98}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !303, file: !32, line: 203)
!303 = !DISubprogram(name: "wmemset", scope: !38, file: !38, line: 271, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{!110, !110, !111, !98}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !307, file: !32, line: 204)
!307 = !DISubprogram(name: "wprintf", scope: !38, file: !38, line: 587, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{!21, !122, null}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !311, file: !32, line: 205)
!311 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !38, file: !38, line: 644, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !32, line: 206)
!313 = !DISubprogram(name: "wcschr", scope: !38, file: !38, line: 164, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!110, !123, !111}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !317, file: !32, line: 207)
!317 = !DISubprogram(name: "wcspbrk", scope: !38, file: !38, line: 201, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{!110, !123, !123}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !321, file: !32, line: 208)
!321 = !DISubprogram(name: "wcsrchr", scope: !38, file: !38, line: 174, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !323, file: !32, line: 209)
!323 = !DISubprogram(name: "wcsstr", scope: !38, file: !38, line: 212, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !325, file: !32, line: 210)
!325 = !DISubprogram(name: "wmemchr", scope: !38, file: !38, line: 253, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubroutineType(types: !327)
!327 = !{!110, !123, !111, !98}
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !330, file: !32, line: 251)
!329 = !DINamespace(name: "__gnu_cxx", scope: null)
!330 = !DISubprogram(name: "wcstold", scope: !38, file: !38, line: 384, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !122, !267}
!333 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !335, file: !32, line: 260)
!335 = !DISubprogram(name: "wcstoll", scope: !38, file: !38, line: 441, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{!338, !122, !267, !21}
!338 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !340, file: !32, line: 261)
!340 = !DISubprogram(name: "wcstoull", scope: !38, file: !38, line: 448, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !122, !267, !21}
!343 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !330, file: !32, line: 267)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !32, line: 268)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !340, file: !32, line: 269)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !270, file: !32, line: 283)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !196, file: !32, line: 286)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !202, file: !32, line: 289)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !210, file: !32, line: 292)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !330, file: !32, line: 296)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !32, line: 297)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !340, file: !32, line: 298)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !355, file: !356, line: 58)
!355 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !357, file: !356, line: 80, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!356 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/bits/exception_ptr.h", directory: "")
!357 = !DINamespace(name: "__exception_ptr", scope: !2)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !357, entity: !359, file: !356, line: 74)
!359 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !356, line: 70, type: !360, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !355}
!362 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !363, entity: !364, file: !365, line: 58)
!363 = !DINamespace(name: "__gnu_debug", scope: null)
!364 = !DINamespace(name: "__debug", scope: !2)
!365 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/debug/debug.h", directory: "")
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !367, file: !370, line: 47)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !368, line: 24, baseType: !369)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !73, line: 37, baseType: !78)
!370 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/cstdint", directory: "")
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !372, file: !370, line: 48)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !368, line: 25, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !73, line: 39, baseType: !374)
!374 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !376, file: !370, line: 49)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !368, line: 26, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !73, line: 41, baseType: !21)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !379, file: !370, line: 50)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !368, line: 27, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !73, line: 44, baseType: !74)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !382, file: !370, line: 52)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !383, line: 58, baseType: !78)
!383 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !385, file: !370, line: 53)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !383, line: 60, baseType: !74)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !387, file: !370, line: 54)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !383, line: 61, baseType: !74)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !389, file: !370, line: 55)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !383, line: 62, baseType: !74)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !391, file: !370, line: 57)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !383, line: 43, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !73, line: 52, baseType: !369)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !394, file: !370, line: 58)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !383, line: 44, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !73, line: 54, baseType: !373)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !397, file: !370, line: 59)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !383, line: 45, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !73, line: 56, baseType: !377)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !400, file: !370, line: 60)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !383, line: 46, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !73, line: 58, baseType: !380)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !403, file: !370, line: 62)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !383, line: 101, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !73, line: 72, baseType: !74)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !406, file: !370, line: 63)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !383, line: 87, baseType: !74)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !408, file: !370, line: 65)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !409, line: 24, baseType: !410)
!409 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !73, line: 38, baseType: !10)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !412, file: !370, line: 66)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !409, line: 25, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !73, line: 40, baseType: !76)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !415, file: !370, line: 67)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !409, line: 26, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !73, line: 42, baseType: !26)
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !418, file: !370, line: 68)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !409, line: 27, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !73, line: 45, baseType: !100)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !421, file: !370, line: 70)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !383, line: 71, baseType: !10)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !423, file: !370, line: 71)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !383, line: 73, baseType: !100)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !425, file: !370, line: 72)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !383, line: 74, baseType: !100)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !427, file: !370, line: 73)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !383, line: 75, baseType: !100)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !429, file: !370, line: 75)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !383, line: 49, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !73, line: 53, baseType: !410)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !370, line: 76)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !383, line: 50, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !73, line: 55, baseType: !413)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !435, file: !370, line: 77)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !383, line: 51, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !73, line: 57, baseType: !416)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !438, file: !370, line: 78)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !383, line: 52, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !73, line: 59, baseType: !419)
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !441, file: !370, line: 80)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !383, line: 102, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !73, line: 73, baseType: !100)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !444, file: !370, line: 81)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !383, line: 90, baseType: !100)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !446, file: !448, line: 53)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !447, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!447 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!448 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/clocale", directory: "")
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !450, file: !448, line: 54)
!450 = !DISubprogram(name: "setlocale", scope: !447, file: !447, line: 122, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{!53, !21, !146}
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !454, file: !448, line: 55)
!454 = !DISubprogram(name: "localeconv", scope: !447, file: !447, line: 125, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !459, file: !463, line: 64)
!459 = !DISubprogram(name: "isalnum", scope: !460, file: !460, line: 108, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!461 = !DISubroutineType(types: !462)
!462 = !{!21, !21}
!463 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/cctype", directory: "")
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !465, file: !463, line: 65)
!465 = !DISubprogram(name: "isalpha", scope: !460, file: !460, line: 109, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !467, file: !463, line: 66)
!467 = !DISubprogram(name: "iscntrl", scope: !460, file: !460, line: 110, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !469, file: !463, line: 67)
!469 = !DISubprogram(name: "isdigit", scope: !460, file: !460, line: 111, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !471, file: !463, line: 68)
!471 = !DISubprogram(name: "isgraph", scope: !460, file: !460, line: 113, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !473, file: !463, line: 69)
!473 = !DISubprogram(name: "islower", scope: !460, file: !460, line: 112, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !475, file: !463, line: 70)
!475 = !DISubprogram(name: "isprint", scope: !460, file: !460, line: 114, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !477, file: !463, line: 71)
!477 = !DISubprogram(name: "ispunct", scope: !460, file: !460, line: 115, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !479, file: !463, line: 72)
!479 = !DISubprogram(name: "isspace", scope: !460, file: !460, line: 116, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !481, file: !463, line: 73)
!481 = !DISubprogram(name: "isupper", scope: !460, file: !460, line: 117, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !483, file: !463, line: 74)
!483 = !DISubprogram(name: "isxdigit", scope: !460, file: !460, line: 118, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !485, file: !463, line: 75)
!485 = !DISubprogram(name: "tolower", scope: !460, file: !460, line: 122, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !487, file: !463, line: 76)
!487 = !DISubprogram(name: "toupper", scope: !460, file: !460, line: 125, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !489, file: !463, line: 87)
!489 = !DISubprogram(name: "isblank", scope: !460, file: !460, line: 130, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !491, file: !493, line: 52)
!491 = !DISubprogram(name: "abs", scope: !492, file: !492, line: 840, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!493 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/bits/std_abs.h", directory: "")
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !495, file: !497, line: 127)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !492, line: 62, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!497 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/cstdlib", directory: "")
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !499, file: !497, line: 128)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !492, line: 70, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !501, identifier: "_ZTS6ldiv_t")
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !500, file: !492, line: 68, baseType: !74, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !500, file: !492, line: 69, baseType: !74, size: 64, offset: 64)
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !505, file: !497, line: 130)
!505 = !DISubprogram(name: "abort", scope: !492, file: !492, line: 591, type: !506, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{null}
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !509, file: !497, line: 134)
!509 = !DISubprogram(name: "atexit", scope: !492, file: !492, line: 595, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!21, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !514, file: !497, line: 137)
!514 = !DISubprogram(name: "at_quick_exit", scope: !492, file: !492, line: 600, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !516, file: !497, line: 140)
!516 = !DISubprogram(name: "atof", scope: !517, file: !517, line: 25, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!517 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!518 = !DISubroutineType(types: !519)
!519 = !{!266, !146}
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !521, file: !497, line: 141)
!521 = !DISubprogram(name: "atoi", scope: !492, file: !492, line: 361, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!522 = !DISubroutineType(types: !523)
!523 = !{!21, !146}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !525, file: !497, line: 142)
!525 = !DISubprogram(name: "atol", scope: !492, file: !492, line: 366, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{!74, !146}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !529, file: !497, line: 143)
!529 = !DISubprogram(name: "bsearch", scope: !530, file: !530, line: 20, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!531 = !DISubroutineType(types: !532)
!532 = !{!96, !533, !533, !98, !98, !535}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !492, line: 808, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!21, !533, !533}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !540, file: !497, line: 144)
!540 = !DISubprogram(name: "calloc", scope: !492, file: !492, line: 542, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubroutineType(types: !542)
!542 = !{!96, !98, !98}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !544, file: !497, line: 145)
!544 = !DISubprogram(name: "div", scope: !492, file: !492, line: 852, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubroutineType(types: !546)
!546 = !{!495, !21, !21}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !548, file: !497, line: 146)
!548 = !DISubprogram(name: "exit", scope: !492, file: !492, line: 617, type: !549, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !21}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !552, file: !497, line: 147)
!552 = !DISubprogram(name: "free", scope: !492, file: !492, line: 565, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !96}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !556, file: !497, line: 148)
!556 = !DISubprogram(name: "getenv", scope: !492, file: !492, line: 634, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DISubroutineType(types: !558)
!558 = !{!53, !146}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !560, file: !497, line: 149)
!560 = !DISubprogram(name: "labs", scope: !492, file: !492, line: 841, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{!74, !74}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !564, file: !497, line: 150)
!564 = !DISubprogram(name: "ldiv", scope: !492, file: !492, line: 854, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubroutineType(types: !566)
!566 = !{!499, !74, !74}
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !568, file: !497, line: 151)
!568 = !DISubprogram(name: "malloc", scope: !492, file: !492, line: 539, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubroutineType(types: !570)
!570 = !{!96, !98}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !572, file: !497, line: 153)
!572 = !DISubprogram(name: "mblen", scope: !492, file: !492, line: 922, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DISubroutineType(types: !574)
!574 = !{!21, !146, !98}
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !576, file: !497, line: 154)
!576 = !DISubprogram(name: "mbstowcs", scope: !492, file: !492, line: 933, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!577 = !DISubroutineType(types: !578)
!578 = !{!98, !112, !145, !98}
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !580, file: !497, line: 155)
!580 = !DISubprogram(name: "mbtowc", scope: !492, file: !492, line: 925, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!581 = !DISubroutineType(types: !582)
!582 = !{!21, !112, !145, !98}
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !584, file: !497, line: 157)
!584 = !DISubprogram(name: "qsort", scope: !492, file: !492, line: 830, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !96, !98, !98, !535}
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !588, file: !497, line: 160)
!588 = !DISubprogram(name: "quick_exit", scope: !492, file: !492, line: 623, type: !549, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !590, file: !497, line: 163)
!590 = !DISubprogram(name: "rand", scope: !492, file: !492, line: 453, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!591 = !DISubroutineType(types: !592)
!592 = !{!21}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !594, file: !497, line: 164)
!594 = !DISubprogram(name: "realloc", scope: !492, file: !492, line: 550, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DISubroutineType(types: !596)
!596 = !{!96, !96, !98}
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !598, file: !497, line: 165)
!598 = !DISubprogram(name: "srand", scope: !492, file: !492, line: 455, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !26}
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !602, file: !497, line: 166)
!602 = !DISubprogram(name: "strtod", scope: !492, file: !492, line: 117, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DISubroutineType(types: !604)
!604 = !{!266, !145, !605}
!605 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !608, file: !497, line: 167)
!608 = !DISubprogram(name: "strtol", scope: !492, file: !492, line: 176, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = !DISubroutineType(types: !610)
!610 = !{!74, !145, !605, !21}
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !612, file: !497, line: 168)
!612 = !DISubprogram(name: "strtoul", scope: !492, file: !492, line: 180, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!613 = !DISubroutineType(types: !614)
!614 = !{!100, !145, !605, !21}
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !616, file: !497, line: 169)
!616 = !DISubprogram(name: "system", scope: !492, file: !492, line: 784, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !618, file: !497, line: 171)
!618 = !DISubprogram(name: "wcstombs", scope: !492, file: !492, line: 936, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!619 = !DISubroutineType(types: !620)
!620 = !{!98, !215, !122, !98}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !622, file: !497, line: 172)
!622 = !DISubprogram(name: "wctomb", scope: !492, file: !492, line: 929, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!623 = !DISubroutineType(types: !624)
!624 = !{!21, !53, !111}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !626, file: !497, line: 200)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !492, line: 80, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !628, identifier: "_ZTS7lldiv_t")
!628 = !{!629, !630}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !627, file: !492, line: 78, baseType: !338, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !627, file: !492, line: 79, baseType: !338, size: 64, offset: 64)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !632, file: !497, line: 206)
!632 = !DISubprogram(name: "_Exit", scope: !492, file: !492, line: 629, type: !549, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !634, file: !497, line: 210)
!634 = !DISubprogram(name: "llabs", scope: !492, file: !492, line: 844, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DISubroutineType(types: !636)
!636 = !{!338, !338}
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !638, file: !497, line: 216)
!638 = !DISubprogram(name: "lldiv", scope: !492, file: !492, line: 858, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!639 = !DISubroutineType(types: !640)
!640 = !{!626, !338, !338}
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !642, file: !497, line: 227)
!642 = !DISubprogram(name: "atoll", scope: !492, file: !492, line: 373, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!643 = !DISubroutineType(types: !644)
!644 = !{!338, !146}
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !646, file: !497, line: 228)
!646 = !DISubprogram(name: "strtoll", scope: !492, file: !492, line: 200, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = !DISubroutineType(types: !648)
!648 = !{!338, !145, !605, !21}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !650, file: !497, line: 229)
!650 = !DISubprogram(name: "strtoull", scope: !492, file: !492, line: 205, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DISubroutineType(types: !652)
!652 = !{!343, !145, !605, !21}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !654, file: !497, line: 231)
!654 = !DISubprogram(name: "strtof", scope: !492, file: !492, line: 123, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DISubroutineType(types: !656)
!656 = !{!273, !145, !605}
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !658, file: !497, line: 232)
!658 = !DISubprogram(name: "strtold", scope: !492, file: !492, line: 126, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DISubroutineType(types: !660)
!660 = !{!333, !145, !605}
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !626, file: !497, line: 240)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !632, file: !497, line: 242)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !634, file: !497, line: 244)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !665, file: !497, line: 245)
!665 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !329, file: !497, line: 213, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !638, file: !497, line: 246)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !642, file: !497, line: 248)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !654, file: !497, line: 249)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !646, file: !497, line: 250)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !650, file: !497, line: 251)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !658, file: !497, line: 252)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !673, file: !675, line: 98)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !674, line: 7, baseType: !48)
!674 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!675 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/cstdio", directory: "")
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !677, file: !675, line: 99)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !678, line: 84, baseType: !679)
!678 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !680, line: 14, baseType: !681)
!680 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !680, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !683, file: !675, line: 101)
!683 = !DISubprogram(name: "clearerr", scope: !678, file: !678, line: 757, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !688, file: !675, line: 102)
!688 = !DISubprogram(name: "fclose", scope: !678, file: !678, line: 213, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!689 = !DISubroutineType(types: !690)
!690 = !{!21, !686}
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !692, file: !675, line: 103)
!692 = !DISubprogram(name: "feof", scope: !678, file: !678, line: 759, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !694, file: !675, line: 104)
!694 = !DISubprogram(name: "ferror", scope: !678, file: !678, line: 761, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !696, file: !675, line: 105)
!696 = !DISubprogram(name: "fflush", scope: !678, file: !678, line: 218, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !698, file: !675, line: 106)
!698 = !DISubprogram(name: "fgetc", scope: !678, file: !678, line: 485, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !700, file: !675, line: 107)
!700 = !DISubprogram(name: "fgetpos", scope: !678, file: !678, line: 731, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = !DISubroutineType(types: !702)
!702 = !{!21, !703, !704}
!703 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !686)
!704 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !707, file: !675, line: 108)
!707 = !DISubprogram(name: "fgets", scope: !678, file: !678, line: 564, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!708 = !DISubroutineType(types: !709)
!709 = !{!53, !215, !21, !703}
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !711, file: !675, line: 109)
!711 = !DISubprogram(name: "fopen", scope: !678, file: !678, line: 246, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubroutineType(types: !713)
!713 = !{!686, !145, !145}
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !715, file: !675, line: 110)
!715 = !DISubprogram(name: "fprintf", scope: !678, file: !678, line: 326, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!716 = !DISubroutineType(types: !717)
!717 = !{!21, !703, !145, null}
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !719, file: !675, line: 111)
!719 = !DISubprogram(name: "fputc", scope: !678, file: !678, line: 521, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!720 = !DISubroutineType(types: !721)
!721 = !{!21, !21, !686}
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !723, file: !675, line: 112)
!723 = !DISubprogram(name: "fputs", scope: !678, file: !678, line: 626, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!724 = !DISubroutineType(types: !725)
!725 = !{!21, !145, !703}
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !727, file: !675, line: 113)
!727 = !DISubprogram(name: "fread", scope: !678, file: !678, line: 646, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!728 = !DISubroutineType(types: !729)
!729 = !{!98, !730, !98, !98, !703}
!730 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !732, file: !675, line: 114)
!732 = !DISubprogram(name: "freopen", scope: !678, file: !678, line: 252, type: !733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DISubroutineType(types: !734)
!734 = !{!686, !145, !145, !703}
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !736, file: !675, line: 115)
!736 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !678, file: !678, line: 407, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !738, file: !675, line: 116)
!738 = !DISubprogram(name: "fseek", scope: !678, file: !678, line: 684, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DISubroutineType(types: !740)
!740 = !{!21, !686, !74, !21}
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !675, line: 117)
!742 = !DISubprogram(name: "fsetpos", scope: !678, file: !678, line: 736, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!743 = !DISubroutineType(types: !744)
!744 = !{!21, !686, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !748, file: !675, line: 118)
!748 = !DISubprogram(name: "ftell", scope: !678, file: !678, line: 689, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DISubroutineType(types: !750)
!750 = !{!74, !686}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !752, file: !675, line: 119)
!752 = !DISubprogram(name: "fwrite", scope: !678, file: !678, line: 652, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DISubroutineType(types: !754)
!754 = !{!98, !755, !98, !98, !703}
!755 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !533)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !757, file: !675, line: 120)
!757 = !DISubprogram(name: "getc", scope: !678, file: !678, line: 486, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !675, line: 121)
!759 = !DISubprogram(name: "getchar", scope: !760, file: !760, line: 47, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!760 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !762, file: !675, line: 126)
!762 = !DISubprogram(name: "perror", scope: !678, file: !678, line: 775, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !146}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !766, file: !675, line: 127)
!766 = !DISubprogram(name: "printf", scope: !678, file: !678, line: 332, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = !DISubroutineType(types: !768)
!768 = !{!21, !145, null}
!769 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !770, file: !675, line: 128)
!770 = !DISubprogram(name: "putc", scope: !678, file: !678, line: 522, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !772, file: !675, line: 129)
!772 = !DISubprogram(name: "putchar", scope: !760, file: !760, line: 82, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !774, file: !675, line: 130)
!774 = !DISubprogram(name: "puts", scope: !678, file: !678, line: 632, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !776, file: !675, line: 131)
!776 = !DISubprogram(name: "remove", scope: !678, file: !678, line: 146, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !778, file: !675, line: 132)
!778 = !DISubprogram(name: "rename", scope: !678, file: !678, line: 148, type: !779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = !DISubroutineType(types: !780)
!780 = !{!21, !146, !146}
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !782, file: !675, line: 133)
!782 = !DISubprogram(name: "rewind", scope: !678, file: !678, line: 694, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !784, file: !675, line: 134)
!784 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !678, file: !678, line: 410, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !786, file: !675, line: 135)
!786 = !DISubprogram(name: "setbuf", scope: !678, file: !678, line: 304, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !703, !215}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !790, file: !675, line: 136)
!790 = !DISubprogram(name: "setvbuf", scope: !678, file: !678, line: 308, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!791 = !DISubroutineType(types: !792)
!792 = !{!21, !703, !215, !21, !98}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !794, file: !675, line: 137)
!794 = !DISubprogram(name: "sprintf", scope: !678, file: !678, line: 334, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!795 = !DISubroutineType(types: !796)
!796 = !{!21, !215, !145, null}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !798, file: !675, line: 138)
!798 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !678, file: !678, line: 412, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!799 = !DISubroutineType(types: !800)
!800 = !{!21, !145, !145, null}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !802, file: !675, line: 139)
!802 = !DISubprogram(name: "tmpfile", scope: !678, file: !678, line: 173, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!803 = !DISubroutineType(types: !804)
!804 = !{!686}
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !806, file: !675, line: 141)
!806 = !DISubprogram(name: "tmpnam", scope: !678, file: !678, line: 187, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DISubroutineType(types: !808)
!808 = !{!53, !53}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !810, file: !675, line: 143)
!810 = !DISubprogram(name: "ungetc", scope: !678, file: !678, line: 639, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !812, file: !675, line: 144)
!812 = !DISubprogram(name: "vfprintf", scope: !678, file: !678, line: 341, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!813 = !DISubroutineType(types: !814)
!814 = !{!21, !703, !145, !188}
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !675, line: 145)
!816 = !DISubprogram(name: "vprintf", scope: !760, file: !760, line: 39, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DISubroutineType(types: !818)
!818 = !{!21, !145, !188}
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !820, file: !675, line: 146)
!820 = !DISubprogram(name: "vsprintf", scope: !678, file: !678, line: 349, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!821 = !DISubroutineType(types: !822)
!822 = !{!21, !215, !145, !188}
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !824, file: !675, line: 175)
!824 = !DISubprogram(name: "snprintf", scope: !678, file: !678, line: 354, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!825 = !DISubroutineType(types: !826)
!826 = !{!21, !215, !98, !145, null}
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !828, file: !675, line: 176)
!828 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !678, file: !678, line: 451, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !830, file: !675, line: 177)
!830 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !678, file: !678, line: 456, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!831 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !832, file: !675, line: 178)
!832 = !DISubprogram(name: "vsnprintf", scope: !678, file: !678, line: 358, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!833 = !DISubroutineType(types: !834)
!834 = !{!21, !215, !98, !145, !188}
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !329, entity: !836, file: !675, line: 179)
!836 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !678, file: !678, line: 459, type: !837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DISubroutineType(types: !838)
!838 = !{!21, !145, !145, !188}
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !824, file: !675, line: 185)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !828, file: !675, line: 186)
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !830, file: !675, line: 187)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !832, file: !675, line: 188)
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !836, file: !675, line: 189)
!844 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !845, file: !849, line: 82)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !846, line: 48, baseType: !847)
!846 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!849 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/cwctype", directory: "")
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !851, file: !849, line: 83)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !852, line: 38, baseType: !100)
!852 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "")
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !34, file: !849, line: 84)
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !855, file: !849, line: 86)
!855 = !DISubprogram(name: "iswalnum", scope: !852, file: !852, line: 95, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !857, file: !849, line: 87)
!857 = !DISubprogram(name: "iswalpha", scope: !852, file: !852, line: 101, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !859, file: !849, line: 89)
!859 = !DISubprogram(name: "iswblank", scope: !852, file: !852, line: 146, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !861, file: !849, line: 91)
!861 = !DISubprogram(name: "iswcntrl", scope: !852, file: !852, line: 104, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !863, file: !849, line: 92)
!863 = !DISubprogram(name: "iswctype", scope: !852, file: !852, line: 159, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DISubroutineType(types: !865)
!865 = !{!21, !34, !851}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !867, file: !849, line: 93)
!867 = !DISubprogram(name: "iswdigit", scope: !852, file: !852, line: 108, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !869, file: !849, line: 94)
!869 = !DISubprogram(name: "iswgraph", scope: !852, file: !852, line: 112, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !871, file: !849, line: 95)
!871 = !DISubprogram(name: "iswlower", scope: !852, file: !852, line: 117, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !873, file: !849, line: 96)
!873 = !DISubprogram(name: "iswprint", scope: !852, file: !852, line: 120, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !875, file: !849, line: 97)
!875 = !DISubprogram(name: "iswpunct", scope: !852, file: !852, line: 125, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !849, line: 98)
!877 = !DISubprogram(name: "iswspace", scope: !852, file: !852, line: 130, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !879, file: !849, line: 99)
!879 = !DISubprogram(name: "iswupper", scope: !852, file: !852, line: 135, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !849, line: 100)
!881 = !DISubprogram(name: "iswxdigit", scope: !852, file: !852, line: 140, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !883, file: !849, line: 101)
!883 = !DISubprogram(name: "towctrans", scope: !846, file: !846, line: 55, type: !884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!884 = !DISubroutineType(types: !885)
!885 = !{!34, !34, !845}
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !887, file: !849, line: 102)
!887 = !DISubprogram(name: "towlower", scope: !852, file: !852, line: 166, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!888 = !DISubroutineType(types: !889)
!889 = !{!34, !34}
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !891, file: !849, line: 103)
!891 = !DISubprogram(name: "towupper", scope: !852, file: !852, line: 169, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !893, file: !849, line: 104)
!893 = !DISubprogram(name: "wctrans", scope: !846, file: !846, line: 52, type: !894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = !DISubroutineType(types: !895)
!895 = !{!845, !146}
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !897, file: !849, line: 105)
!897 = !DISubprogram(name: "wctype", scope: !852, file: !852, line: 155, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DISubroutineType(types: !899)
!899 = !{!851, !146}
!900 = !{i32 7, !"Dwarf Version", i32 4}
!901 = !{i32 2, !"Debug Info Version", i32 3}
!902 = !{i32 1, !"wchar_size", i32 4}
!903 = !{i32 7, !"uwtable", i32 1}
!904 = !{!"clang version 14.0.0 (https://github.com/HPSSA-LLVM/llvm-project.git ad890aa2327feb6b6aee676fe85b2352fba2403e)"}
!905 = distinct !DISubprogram(name: "retval", linkageName: "_Z6retvalv", scope: !8, file: !8, line: 5, type: !591, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !906)
!906 = !{}
!907 = !DILocation(line: 5, column: 23, scope: !905)
!908 = !DILocation(line: 5, column: 30, scope: !905)
!909 = !DILocation(line: 5, column: 16, scope: !905)
!910 = !DISubprogram(name: "rand", scope: !492, file: !492, line: 453, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !906)
!911 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 7, type: !591, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921, !925, !927, !933}
!913 = !DILocalVariable(name: "a", scope: !911, file: !8, line: 8, type: !21)
!914 = !DILocalVariable(name: "b", scope: !911, file: !8, line: 8, type: !21)
!915 = !DILocalVariable(name: "c", scope: !911, file: !8, line: 8, type: !21)
!916 = !DILocalVariable(name: "d", scope: !911, file: !8, line: 8, type: !21)
!917 = !DILocalVariable(name: "z", scope: !911, file: !8, line: 8, type: !21)
!918 = !DILocalVariable(name: "p", scope: !911, file: !8, line: 8, type: !21)
!919 = !DILocalVariable(name: "m", scope: !911, file: !8, line: 8, type: !21)
!920 = !DILocalVariable(name: "n", scope: !911, file: !8, line: 8, type: !21)
!921 = !DILocalVariable(name: "arr", scope: !911, file: !8, line: 9, type: !922)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 5)
!925 = !DILocalVariable(name: "i", scope: !926, file: !8, line: 15, type: !21)
!926 = distinct !DILexicalBlock(scope: !911, file: !8, line: 15, column: 3)
!927 = !DILocalVariable(name: "j", scope: !928, file: !8, line: 17, type: !21)
!928 = distinct !DILexicalBlock(scope: !929, file: !8, line: 17, column: 7)
!929 = distinct !DILexicalBlock(scope: !930, file: !8, line: 16, column: 21)
!930 = distinct !DILexicalBlock(scope: !931, file: !8, line: 16, column: 9)
!931 = distinct !DILexicalBlock(scope: !932, file: !8, line: 15, column: 40)
!932 = distinct !DILexicalBlock(scope: !926, file: !8, line: 15, column: 3)
!933 = !DILocalVariable(name: "k", scope: !934, file: !8, line: 33, type: !21)
!934 = distinct !DILexicalBlock(scope: !935, file: !8, line: 33, column: 11)
!935 = distinct !DILexicalBlock(scope: !936, file: !8, line: 21, column: 16)
!936 = distinct !DILexicalBlock(scope: !937, file: !8, line: 18, column: 13)
!937 = distinct !DILexicalBlock(scope: !938, file: !8, line: 17, column: 35)
!938 = distinct !DILexicalBlock(scope: !928, file: !8, line: 17, column: 7)
!939 = !DILocation(line: 0, scope: !911)
!940 = !DILocation(line: 10, column: 9, scope: !911)
!941 = !DILocation(line: 10, column: 3, scope: !911)
!942 = !DILocation(line: 13, column: 7, scope: !911)
!943 = !DILocation(line: 13, column: 14, scope: !911)
!944 = !DILocation(line: 0, scope: !926)
!945 = !DILocation(line: 15, column: 23, scope: !932)
!946 = !DILocation(line: 15, column: 30, scope: !932)
!947 = !DILocation(line: 15, column: 21, scope: !932)
!948 = !DILocation(line: 15, column: 3, scope: !926)
!949 = !DILocation(line: 13, column: 5, scope: !911)
!950 = !DILocation(line: 46, column: 13, scope: !911)
!951 = !DILocation(line: 46, column: 18, scope: !911)
!952 = !DILocalVariable(name: "this", arg: 1, scope: !953, type: !968, flags: DIFlagArtificial | DIFlagObjectPointer)
!953 = distinct !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !955, file: !954, line: 108, type: !957, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, declaration: !965, retainedNodes: !966)
!954 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/ostream", directory: "")
!955 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ostream<char, std::char_traits<char> >", scope: !2, file: !956, line: 359, size: 2176, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!956 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/bits/ostream.tcc", directory: "")
!957 = !DISubroutineType(types: !958)
!958 = !{!959, !961, !962}
!959 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ostream_type", scope: !955, file: !954, line: 71, baseType: !955)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!959, !959}
!965 = !DISubprogram(name: "operator<<", linkageName: "_ZNSolsEPFRSoS_E", scope: !955, file: !954, line: 108, type: !957, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !{!952, !967}
!967 = !DILocalVariable(name: "__pf", arg: 2, scope: !953, file: !954, line: 108, type: !962)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!969 = !DILocation(line: 0, scope: !953, inlinedAt: !970)
!970 = distinct !DILocation(line: 46, column: 23, scope: !911)
!971 = !DILocalVariable(name: "__os", arg: 1, scope: !972, file: !954, line: 681, type: !975)
!972 = distinct !DISubprogram(name: "endl<char, std::char_traits<char> >", linkageName: "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !954, line: 681, type: !973, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !977, retainedNodes: !976)
!973 = !DISubroutineType(types: !974)
!974 = !{!975, !975}
!975 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !955, size: 64)
!976 = !{!971}
!977 = !{!978, !979}
!978 = !DITemplateTypeParameter(name: "_CharT", type: !29)
!979 = !DITemplateTypeParameter(name: "_Traits", type: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !2, file: !981, line: 316, size: 8, flags: DIFlagTypePassByValue, elements: !982, templateParams: !1033, identifier: "_ZTSSt11char_traitsIcE")
!981 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/bits/char_traits.h", directory: "")
!982 = !{!983, !990, !994, !995, !1001, !1004, !1007, !1011, !1012, !1015, !1021, !1024, !1027, !1030}
!983 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignERcRKc", scope: !980, file: !981, line: 328, type: !984, scopeLine: 328, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !986, !988}
!986 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !980, file: !981, line: 318, baseType: !29)
!988 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!990 = !DISubprogram(name: "eq", linkageName: "_ZNSt11char_traitsIcE2eqERKcS2_", scope: !980, file: !981, line: 332, type: !991, scopeLine: 332, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!993, !988, !988}
!993 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!994 = !DISubprogram(name: "lt", linkageName: "_ZNSt11char_traitsIcE2ltERKcS2_", scope: !980, file: !981, line: 336, type: !991, scopeLine: 336, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!995 = !DISubprogram(name: "compare", linkageName: "_ZNSt11char_traitsIcE7compareEPKcS2_m", scope: !980, file: !981, line: 344, type: !996, scopeLine: 344, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!996 = !DISubroutineType(types: !997)
!997 = !{!21, !998, !998, !999}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !1000, line: 264, baseType: !100)
!1000 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/x86_64-linux-gnu/c++/10/bits/c++config.h", directory: "")
!1001 = !DISubprogram(name: "length", linkageName: "_ZNSt11char_traitsIcE6lengthEPKc", scope: !980, file: !981, line: 365, type: !1002, scopeLine: 365, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!999, !998}
!1004 = !DISubprogram(name: "find", linkageName: "_ZNSt11char_traitsIcE4findEPKcmRS1_", scope: !980, file: !981, line: 375, type: !1005, scopeLine: 375, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!998, !998, !999, !988}
!1007 = !DISubprogram(name: "move", linkageName: "_ZNSt11char_traitsIcE4moveEPcPKcm", scope: !980, file: !981, line: 389, type: !1008, scopeLine: 389, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!1010, !1010, !998, !999}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!1011 = !DISubprogram(name: "copy", linkageName: "_ZNSt11char_traitsIcE4copyEPcPKcm", scope: !980, file: !981, line: 401, type: !1008, scopeLine: 401, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1012 = !DISubprogram(name: "assign", linkageName: "_ZNSt11char_traitsIcE6assignEPcmc", scope: !980, file: !981, line: 413, type: !1013, scopeLine: 413, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!1010, !1010, !999, !987}
!1015 = !DISubprogram(name: "to_char_type", linkageName: "_ZNSt11char_traitsIcE12to_char_typeERKi", scope: !980, file: !981, line: 425, type: !1016, scopeLine: 425, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!987, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_type", scope: !980, file: !981, line: 319, baseType: !21)
!1021 = !DISubprogram(name: "to_int_type", linkageName: "_ZNSt11char_traitsIcE11to_int_typeERKc", scope: !980, file: !981, line: 431, type: !1022, scopeLine: 431, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!1020, !988}
!1024 = !DISubprogram(name: "eq_int_type", linkageName: "_ZNSt11char_traitsIcE11eq_int_typeERKiS2_", scope: !980, file: !981, line: 435, type: !1025, scopeLine: 435, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!993, !1018, !1018}
!1027 = !DISubprogram(name: "eof", linkageName: "_ZNSt11char_traitsIcE3eofEv", scope: !980, file: !981, line: 439, type: !1028, scopeLine: 439, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!1020}
!1030 = !DISubprogram(name: "not_eof", linkageName: "_ZNSt11char_traitsIcE7not_eofERKi", scope: !980, file: !981, line: 443, type: !1031, scopeLine: 443, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1020, !1018}
!1033 = !{!978}
!1034 = !DILocation(line: 0, scope: !972, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 113, column: 9, scope: !953, inlinedAt: !970)
!1036 = !DILocation(line: 682, column: 29, scope: !972, inlinedAt: !1035)
!1037 = !{!1038, !1038, i64 0}
!1038 = !{!"vtable pointer", !1039, i64 0}
!1039 = !{!"Simple C++ TBAA"}
!1040 = !DILocalVariable(name: "this", arg: 1, scope: !1041, type: !1053, flags: DIFlagArtificial | DIFlagObjectPointer)
!1041 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !1043, file: !1042, line: 449, type: !1045, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, declaration: !1050, retainedNodes: !1051)
!1042 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/bits/basic_ios.h", directory: "")
!1043 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_ios<char, std::char_traits<char> >", scope: !2, file: !1044, line: 178, size: 2112, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!1044 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/bits/basic_ios.tcc", directory: "")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1047, !1048, !29}
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1043, file: !1042, line: 76, baseType: !29)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1050 = !DISubprogram(name: "widen", linkageName: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", scope: !1043, file: !1042, line: 449, type: !1045, scopeLine: 449, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1051 = !{!1040, !1052}
!1052 = !DILocalVariable(name: "__c", arg: 2, scope: !1041, file: !1042, line: 449, type: !29)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1054 = !DILocation(line: 0, scope: !1041, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 682, column: 34, scope: !972, inlinedAt: !1035)
!1056 = !DILocation(line: 450, column: 30, scope: !1041, inlinedAt: !1055)
!1057 = !{!1058, !1059, i64 240}
!1058 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !1059, i64 216, !1060, i64 224, !1061, i64 225, !1059, i64 232, !1059, i64 240, !1059, i64 248, !1059, i64 256}
!1059 = !{!"any pointer", !1060, i64 0}
!1060 = !{!"omnipotent char", !1039, i64 0}
!1061 = !{!"bool", !1060, i64 0}
!1062 = !DILocalVariable(name: "__f", arg: 1, scope: !1063, file: !1042, line: 47, type: !1070)
!1063 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", linkageName: "_ZSt13__check_facetISt5ctypeIcEERKT_PS3_", scope: !2, file: !1042, line: 47, type: !1064, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !1072, retainedNodes: !1071)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1066, !1070}
!1066 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ctype<char>", scope: !2, file: !1069, line: 681, size: 4608, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt5ctypeIcE")
!1069 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/10/../../../../include/c++/10/bits/locale_facets.h", directory: "")
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1071 = !{!1062}
!1072 = !{!1073}
!1073 = !DITemplateTypeParameter(name: "_Facet", type: !1068)
!1074 = !DILocation(line: 0, scope: !1063, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 450, column: 16, scope: !1041, inlinedAt: !1055)
!1076 = !DILocation(line: 49, column: 12, scope: !1077, inlinedAt: !1075)
!1077 = distinct !DILexicalBlock(scope: !1063, file: !1042, line: 49, column: 11)
!1078 = !DILocation(line: 49, column: 11, scope: !1063, inlinedAt: !1075)
!1079 = !DILocation(line: 50, column: 2, scope: !1077, inlinedAt: !1075)
!1080 = !DILocalVariable(name: "this", arg: 1, scope: !1081, type: !1070, flags: DIFlagArtificial | DIFlagObjectPointer)
!1081 = distinct !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !1068, file: !1069, line: 872, type: !1082, scopeLine: 873, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, declaration: !1086, retainedNodes: !1087)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!1084, !1085, !29}
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "char_type", scope: !1068, file: !1069, line: 686, baseType: !29)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1086 = !DISubprogram(name: "widen", linkageName: "_ZNKSt5ctypeIcE5widenEc", scope: !1068, file: !1069, line: 872, type: !1082, scopeLine: 872, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1087 = !{!1080, !1088}
!1088 = !DILocalVariable(name: "__c", arg: 2, scope: !1081, file: !1069, line: 872, type: !29)
!1089 = !DILocation(line: 0, scope: !1081, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 450, column: 40, scope: !1041, inlinedAt: !1055)
!1091 = !DILocation(line: 874, column: 6, scope: !1092, inlinedAt: !1090)
!1092 = distinct !DILexicalBlock(scope: !1081, file: !1069, line: 874, column: 6)
!1093 = !{!1094, !1060, i64 56}
!1094 = !{!"_ZTSSt5ctypeIcE", !1059, i64 16, !1061, i64 24, !1059, i64 32, !1059, i64 40, !1059, i64 48, !1060, i64 56, !1060, i64 57, !1060, i64 313, !1060, i64 569}
!1095 = !DILocation(line: 874, column: 6, scope: !1081, inlinedAt: !1090)
!1096 = !DILocation(line: 875, column: 11, scope: !1092, inlinedAt: !1090)
!1097 = !{!1060, !1060, i64 0}
!1098 = !DILocation(line: 875, column: 4, scope: !1092, inlinedAt: !1090)
!1099 = !DILocation(line: 876, column: 8, scope: !1081, inlinedAt: !1090)
!1100 = !DILocation(line: 877, column: 15, scope: !1081, inlinedAt: !1090)
!1101 = !DILocation(line: 877, column: 2, scope: !1081, inlinedAt: !1090)
!1102 = !DILocation(line: 682, column: 25, scope: !972, inlinedAt: !1035)
!1103 = !DILocalVariable(name: "__os", arg: 1, scope: !1104, file: !954, line: 703, type: !975)
!1104 = distinct !DISubprogram(name: "flush<char, std::char_traits<char> >", linkageName: "_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", scope: !2, file: !954, line: 703, type: !973, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !977, retainedNodes: !1105)
!1105 = !{!1103}
!1106 = !DILocation(line: 0, scope: !1104, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 682, column: 14, scope: !972, inlinedAt: !1035)
!1108 = !DILocation(line: 704, column: 19, scope: !1104, inlinedAt: !1107)
!1109 = !DILocation(line: 49, column: 1, scope: !911)
!1110 = !DILocation(line: 16, column: 11, scope: !930)
!1111 = !DILocation(line: 16, column: 15, scope: !930)
!1112 = !DILocation(line: 16, column: 9, scope: !931)
!1113 = !DILocation(line: 0, scope: !928)
!1114 = !DILocation(line: 18, column: 13, scope: !936)
!1115 = !DILocation(line: 18, column: 20, scope: !936)
!1116 = !DILocation(line: 18, column: 26, scope: !936)
!1117 = !DILocation(line: 18, column: 13, scope: !937)
!1118 = !DILocation(line: 20, column: 21, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !936, file: !8, line: 18, column: 33)
!1120 = !DILocation(line: 20, column: 26, scope: !1119)
!1121 = !DILocation(line: 20, column: 31, scope: !1119)
!1122 = !DILocation(line: 0, scope: !953, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 20, column: 36, scope: !1119)
!1124 = !DILocation(line: 0, scope: !972, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 113, column: 9, scope: !953, inlinedAt: !1123)
!1126 = !DILocation(line: 682, column: 29, scope: !972, inlinedAt: !1125)
!1127 = !DILocation(line: 0, scope: !1041, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 682, column: 34, scope: !972, inlinedAt: !1125)
!1129 = !DILocation(line: 450, column: 30, scope: !1041, inlinedAt: !1128)
!1130 = !DILocation(line: 0, scope: !1063, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 450, column: 16, scope: !1041, inlinedAt: !1128)
!1132 = !DILocation(line: 49, column: 12, scope: !1077, inlinedAt: !1131)
!1133 = !DILocation(line: 49, column: 11, scope: !1063, inlinedAt: !1131)
!1134 = !DILocation(line: 50, column: 2, scope: !1077, inlinedAt: !1131)
!1135 = !DILocation(line: 0, scope: !1081, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 450, column: 40, scope: !1041, inlinedAt: !1128)
!1137 = !DILocation(line: 874, column: 6, scope: !1092, inlinedAt: !1136)
!1138 = !DILocation(line: 874, column: 6, scope: !1081, inlinedAt: !1136)
!1139 = !DILocation(line: 875, column: 11, scope: !1092, inlinedAt: !1136)
!1140 = !DILocation(line: 875, column: 4, scope: !1092, inlinedAt: !1136)
!1141 = !DILocation(line: 876, column: 8, scope: !1081, inlinedAt: !1136)
!1142 = !DILocation(line: 877, column: 15, scope: !1081, inlinedAt: !1136)
!1143 = !DILocation(line: 877, column: 2, scope: !1081, inlinedAt: !1136)
!1144 = !DILocation(line: 682, column: 25, scope: !972, inlinedAt: !1125)
!1145 = !DILocation(line: 0, scope: !1104, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 682, column: 14, scope: !972, inlinedAt: !1125)
!1147 = !DILocation(line: 704, column: 19, scope: !1104, inlinedAt: !1146)
!1148 = !DILocation(line: 21, column: 9, scope: !1119)
!1149 = !DILocation(line: 22, column: 17, scope: !935)
!1150 = !DILocation(line: 25, column: 21, scope: !935)
!1151 = !DILocation(line: 25, column: 26, scope: !935)
!1152 = !DILocation(line: 25, column: 31, scope: !935)
!1153 = !DILocation(line: 0, scope: !953, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 25, column: 36, scope: !935)
!1155 = !DILocation(line: 0, scope: !972, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 113, column: 9, scope: !953, inlinedAt: !1154)
!1157 = !DILocation(line: 682, column: 29, scope: !972, inlinedAt: !1156)
!1158 = !DILocation(line: 0, scope: !1041, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 682, column: 34, scope: !972, inlinedAt: !1156)
!1160 = !DILocation(line: 450, column: 30, scope: !1041, inlinedAt: !1159)
!1161 = !DILocation(line: 0, scope: !1063, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 450, column: 16, scope: !1041, inlinedAt: !1159)
!1163 = !DILocation(line: 49, column: 12, scope: !1077, inlinedAt: !1162)
!1164 = !DILocation(line: 49, column: 11, scope: !1063, inlinedAt: !1162)
!1165 = !DILocation(line: 50, column: 2, scope: !1077, inlinedAt: !1162)
!1166 = !DILocation(line: 0, scope: !1081, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 450, column: 40, scope: !1041, inlinedAt: !1159)
!1168 = !DILocation(line: 874, column: 6, scope: !1092, inlinedAt: !1167)
!1169 = !DILocation(line: 874, column: 6, scope: !1081, inlinedAt: !1167)
!1170 = !DILocation(line: 875, column: 11, scope: !1092, inlinedAt: !1167)
!1171 = !DILocation(line: 875, column: 4, scope: !1092, inlinedAt: !1167)
!1172 = !DILocation(line: 876, column: 8, scope: !1081, inlinedAt: !1167)
!1173 = !DILocation(line: 877, column: 15, scope: !1081, inlinedAt: !1167)
!1174 = !DILocation(line: 877, column: 2, scope: !1081, inlinedAt: !1167)
!1175 = !DILocation(line: 682, column: 25, scope: !972, inlinedAt: !1156)
!1176 = !DILocation(line: 0, scope: !1104, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 682, column: 14, scope: !972, inlinedAt: !1156)
!1178 = !DILocation(line: 704, column: 19, scope: !1104, inlinedAt: !1177)
!1179 = !DILocation(line: 26, column: 17, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !935, file: !8, line: 26, column: 15)
!1181 = !DILocation(line: 26, column: 15, scope: !935)
!1182 = !DILocation(line: 27, column: 19, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !8, line: 26, column: 22)
!1184 = !DILocation(line: 29, column: 23, scope: !1183)
!1185 = !DILocation(line: 29, column: 28, scope: !1183)
!1186 = !DILocation(line: 29, column: 33, scope: !1183)
!1187 = !DILocation(line: 0, scope: !953, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 29, column: 38, scope: !1183)
!1189 = !DILocation(line: 0, scope: !972, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 113, column: 9, scope: !953, inlinedAt: !1188)
!1191 = !DILocation(line: 682, column: 29, scope: !972, inlinedAt: !1190)
!1192 = !DILocation(line: 0, scope: !1041, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 682, column: 34, scope: !972, inlinedAt: !1190)
!1194 = !DILocation(line: 450, column: 30, scope: !1041, inlinedAt: !1193)
!1195 = !DILocation(line: 0, scope: !1063, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 450, column: 16, scope: !1041, inlinedAt: !1193)
!1197 = !DILocation(line: 49, column: 12, scope: !1077, inlinedAt: !1196)
!1198 = !DILocation(line: 49, column: 11, scope: !1063, inlinedAt: !1196)
!1199 = !DILocation(line: 50, column: 2, scope: !1077, inlinedAt: !1196)
!1200 = !DILocation(line: 0, scope: !1081, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 450, column: 40, scope: !1041, inlinedAt: !1193)
!1202 = !DILocation(line: 874, column: 6, scope: !1092, inlinedAt: !1201)
!1203 = !DILocation(line: 874, column: 6, scope: !1081, inlinedAt: !1201)
!1204 = !DILocation(line: 875, column: 11, scope: !1092, inlinedAt: !1201)
!1205 = !DILocation(line: 875, column: 4, scope: !1092, inlinedAt: !1201)
!1206 = !DILocation(line: 876, column: 8, scope: !1081, inlinedAt: !1201)
!1207 = !DILocation(line: 877, column: 15, scope: !1081, inlinedAt: !1201)
!1208 = !DILocation(line: 877, column: 2, scope: !1081, inlinedAt: !1201)
!1209 = !DILocation(line: 682, column: 25, scope: !972, inlinedAt: !1190)
!1210 = !DILocation(line: 0, scope: !1104, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 682, column: 14, scope: !972, inlinedAt: !1190)
!1212 = !DILocation(line: 704, column: 19, scope: !1104, inlinedAt: !1211)
!1213 = !DILocation(line: 5, column: 23, scope: !905, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 30, column: 17, scope: !1183)
!1215 = !DILocation(line: 32, column: 11, scope: !1183)
!1216 = !DILocation(line: 0, scope: !935)
!1217 = !DILocation(line: 0, scope: !934)
!1218 = !DILocation(line: 33, column: 30, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !934, file: !8, line: 33, column: 11)
!1220 = !DILocation(line: 33, column: 11, scope: !934)
!1221 = !DILocation(line: 34, column: 19, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !8, line: 33, column: 40)
!1223 = !DILocation(line: 35, column: 23, scope: !1222)
!1224 = !DILocation(line: 0, scope: !953, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 35, column: 28, scope: !1222)
!1226 = !DILocation(line: 0, scope: !972, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 113, column: 9, scope: !953, inlinedAt: !1225)
!1228 = !DILocation(line: 682, column: 29, scope: !972, inlinedAt: !1227)
!1229 = !DILocation(line: 0, scope: !1041, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 682, column: 34, scope: !972, inlinedAt: !1227)
!1231 = !DILocation(line: 450, column: 30, scope: !1041, inlinedAt: !1230)
!1232 = !DILocation(line: 0, scope: !1063, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 450, column: 16, scope: !1041, inlinedAt: !1230)
!1234 = !DILocation(line: 49, column: 12, scope: !1077, inlinedAt: !1233)
!1235 = !DILocation(line: 49, column: 11, scope: !1063, inlinedAt: !1233)
!1236 = !DILocation(line: 50, column: 2, scope: !1077, inlinedAt: !1233)
!1237 = !DILocation(line: 0, scope: !1081, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 450, column: 40, scope: !1041, inlinedAt: !1230)
!1239 = !DILocation(line: 874, column: 6, scope: !1092, inlinedAt: !1238)
!1240 = !DILocation(line: 874, column: 6, scope: !1081, inlinedAt: !1238)
!1241 = !DILocation(line: 875, column: 11, scope: !1092, inlinedAt: !1238)
!1242 = !DILocation(line: 875, column: 4, scope: !1092, inlinedAt: !1238)
!1243 = !DILocation(line: 876, column: 8, scope: !1081, inlinedAt: !1238)
!1244 = !DILocation(line: 877, column: 15, scope: !1081, inlinedAt: !1238)
!1245 = !DILocation(line: 877, column: 2, scope: !1081, inlinedAt: !1238)
!1246 = !DILocation(line: 682, column: 25, scope: !972, inlinedAt: !1227)
!1247 = !DILocation(line: 0, scope: !1104, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 682, column: 14, scope: !972, inlinedAt: !1227)
!1249 = !DILocation(line: 704, column: 19, scope: !1104, inlinedAt: !1248)
!1250 = distinct !{!1250, !1220, !1251, !1252, !1253}
!1251 = !DILocation(line: 36, column: 11, scope: !934)
!1252 = !{!"llvm.loop.mustprogress"}
!1253 = !{!"llvm.loop.unroll.disable"}
!1254 = !DILocation(line: 15, column: 12, scope: !926)
!1255 = !DILocation(line: 5, column: 23, scope: !905, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 38, column: 13, scope: !937)
!1257 = !DILocation(line: 5, column: 30, scope: !905, inlinedAt: !1256)
!1258 = !DILocation(line: 39, column: 19, scope: !937)
!1259 = !DILocation(line: 39, column: 24, scope: !937)
!1260 = !DILocation(line: 39, column: 29, scope: !937)
!1261 = !DILocation(line: 39, column: 34, scope: !937)
!1262 = !DILocation(line: 39, column: 39, scope: !937)
!1263 = !DILocation(line: 0, scope: !953, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 39, column: 44, scope: !937)
!1265 = !DILocation(line: 0, scope: !972, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 113, column: 9, scope: !953, inlinedAt: !1264)
!1267 = !DILocation(line: 682, column: 29, scope: !972, inlinedAt: !1266)
!1268 = !DILocation(line: 0, scope: !1041, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 682, column: 34, scope: !972, inlinedAt: !1266)
!1270 = !DILocation(line: 450, column: 30, scope: !1041, inlinedAt: !1269)
!1271 = !DILocation(line: 0, scope: !1063, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 450, column: 16, scope: !1041, inlinedAt: !1269)
!1273 = !DILocation(line: 49, column: 12, scope: !1077, inlinedAt: !1272)
!1274 = !DILocation(line: 49, column: 11, scope: !1063, inlinedAt: !1272)
!1275 = !DILocation(line: 50, column: 2, scope: !1077, inlinedAt: !1272)
!1276 = !DILocation(line: 0, scope: !1081, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 450, column: 40, scope: !1041, inlinedAt: !1269)
!1278 = !DILocation(line: 874, column: 6, scope: !1092, inlinedAt: !1277)
!1279 = !DILocation(line: 874, column: 6, scope: !1081, inlinedAt: !1277)
!1280 = !DILocation(line: 875, column: 11, scope: !1092, inlinedAt: !1277)
!1281 = !DILocation(line: 875, column: 4, scope: !1092, inlinedAt: !1277)
!1282 = !DILocation(line: 876, column: 8, scope: !1081, inlinedAt: !1277)
!1283 = !DILocation(line: 877, column: 15, scope: !1081, inlinedAt: !1277)
!1284 = !DILocation(line: 877, column: 2, scope: !1081, inlinedAt: !1277)
!1285 = !DILocation(line: 682, column: 25, scope: !972, inlinedAt: !1266)
!1286 = !DILocation(line: 0, scope: !1104, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 682, column: 14, scope: !972, inlinedAt: !1266)
!1288 = !DILocation(line: 704, column: 19, scope: !1104, inlinedAt: !1287)
!1289 = !DILocation(line: 17, column: 31, scope: !938)
!1290 = !DILocation(line: 17, column: 25, scope: !938)
!1291 = !DILocation(line: 17, column: 7, scope: !928)
!1292 = distinct !{!1292, !1291, !1293, !1252, !1253}
!1293 = !DILocation(line: 40, column: 7, scope: !928)
!1294 = !DILocation(line: 8, column: 28, scope: !911)
!1295 = !DILocation(line: 8, column: 21, scope: !911)
!1296 = !DILocation(line: 15, column: 36, scope: !932)
!1297 = distinct !{!1297, !948, !1298, !1252, !1253}
!1298 = !DILocation(line: 42, column: 3, scope: !926)
!1299 = !DISubprogram(name: "srand", scope: !492, file: !492, line: 455, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !906)
!1300 = !DISubprogram(name: "time", scope: !1301, file: !1301, line: 75, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !906)
!1301 = !DIFile(filename: "/usr/include/time.h", directory: "")
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!74, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1305 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_example1.cpp", scope: !8, file: !8, type: !1306, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !906)
!1306 = !DISubroutineType(types: !906)
!1307 = !DILocation(line: 74, column: 25, scope: !1308, inlinedAt: !1310)
!1308 = !DILexicalBlockFile(scope: !1309, file: !3, discriminator: 0)
!1309 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !8, file: !8, type: !506, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !906)
!1310 = distinct !DILocation(line: 0, scope: !1305)
!1311 = !DILocation(line: 0, scope: !1309, inlinedAt: !1310)
