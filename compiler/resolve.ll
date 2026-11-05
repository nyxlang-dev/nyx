source_filename = "script.nx"
target triple = "x86_64-pc-linux-gnu"

@.str0 = private unnamed_addr constant [8 x i8] c"windows\00"
@.str0.c = internal global %nyx_string* null
@.str1 = private unnamed_addr constant [12 x i8] c"USERPROFILE\00"
@.str1.c = internal global %nyx_string* null
@.str2 = private unnamed_addr constant [1 x i8] c"\00"
@.str2.c = internal global %nyx_string* null
@.str3 = private unnamed_addr constant [5 x i8] c"HOME\00"
@.str3.c = internal global %nyx_string* null
@.str4 = private unnamed_addr constant [1 x i8] c"\22"
@.str5 = private unnamed_addr constant [1 x i8] c"\22"
@.str6 = private unnamed_addr constant [1 x i8] c"\00"
@.str6.c = internal global %nyx_string* null
@.str7 = private unnamed_addr constant [16 x i8] c"NYX_LIB_MODULES\00"
@.str7.c = internal global %nyx_string* null
@.str8 = private unnamed_addr constant [1 x i8] c"\00"
@.str8.c = internal global %nyx_string* null
@.str9 = private unnamed_addr constant [1 x i8] c"\00"
@.str9.c = internal global %nyx_string* null
@.str10 = private unnamed_addr constant [2 x i8] c",\00"
@.str10.c = internal global %nyx_string* null
@.str11 = private unnamed_addr constant [8 x i8] c"import \00"
@.str11.c = internal global %nyx_string* null
@.str12 = private unnamed_addr constant [5 x i8] c"from\00"
@.str12.c = internal global %nyx_string* null
@.str13 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str13.c = internal global %nyx_string* null
@.str14 = private unnamed_addr constant [20 x i8] c"NYX_INLINE_COMPILER\00"
@.str14.c = internal global %nyx_string* null
@.str15 = private unnamed_addr constant [2 x i8] c"1\00"
@.str15.c = internal global %nyx_string* null
@.str16 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str16.c = internal global %nyx_string* null
@.str17 = private unnamed_addr constant [1 x i8] c"\00"
@.str17.c = internal global %nyx_string* null
@.str18 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str18.c = internal global %nyx_string* null
@.str19 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str19.c = internal global %nyx_string* null
@.str20 = private unnamed_addr constant [2 x i8] c"<\00"
@.str20.c = internal global %nyx_string* null
@.str21 = private unnamed_addr constant [18 x i8] c"la fn genérica '\00"
@.str21.c = internal global %nyx_string* null
@.str22 = private unnamed_addr constant [2 x i8] c"'\00"
@.str22.c = internal global %nyx_string* null
@.str23 = private unnamed_addr constant [17 x i8] c"the generic fn '\00"
@.str23.c = internal global %nyx_string* null
@.str24 = private unnamed_addr constant [6 x i8] c"impl \00"
@.str24.c = internal global %nyx_string* null
@.str25 = private unnamed_addr constant [6 x i8] c"impl<\00"
@.str25.c = internal global %nyx_string* null
@.str26 = private unnamed_addr constant [2 x i8] c"{\00"
@.str26.c = internal global %nyx_string* null
@.str27 = private unnamed_addr constant [18 x i8] c"los métodos de '\00"
@.str27.c = internal global %nyx_string* null
@.str28 = private unnamed_addr constant [17 x i8] c"the methods of '\00"
@.str28.c = internal global %nyx_string* null
@.str29 = private unnamed_addr constant [7 x i8] c"trait \00"
@.str29.c = internal global %nyx_string* null
@.str30 = private unnamed_addr constant [11 x i8] c"pub trait \00"
@.str30.c = internal global %nyx_string* null
@.str31 = private unnamed_addr constant [14 x i8] c"export trait \00"
@.str31.c = internal global %nyx_string* null
@.str32 = private unnamed_addr constant [11 x i8] c"el trait '\00"
@.str32.c = internal global %nyx_string* null
@.str33 = private unnamed_addr constant [12 x i8] c"the trait '\00"
@.str33.c = internal global %nyx_string* null
@.str34 = private unnamed_addr constant [1 x i8] c"\00"
@.str34.c = internal global %nyx_string* null
@.str35 = private unnamed_addr constant [4 x i8] c" y \00"
@.str35.c = internal global %nyx_string* null
@.str36 = private unnamed_addr constant [6 x i8] c" and \00"
@.str36.c = internal global %nyx_string* null
@.str37 = private unnamed_addr constant [4 x i8] c" (+\00"
@.str37.c = internal global %nyx_string* null
@.str38 = private unnamed_addr constant [2 x i8] c")\00"
@.str38.c = internal global %nyx_string* null
@.str39 = private unnamed_addr constant [1 x i8] c"\00"
@.str39.c = internal global %nyx_string* null
@.str40 = private unnamed_addr constant [1 x i8] c"\00"
@.str40.c = internal global %nyx_string* null
@.str41 = private unnamed_addr constant [1 x i8] c"\00"
@.str41.c = internal global %nyx_string* null
@.str42 = private unnamed_addr constant [9 x i8] c"libdecl:\00"
@.str42.c = internal global %nyx_string* null
@.str43 = private unnamed_addr constant [1 x i8] c"\00"
@.str43.c = internal global %nyx_string* null
@.str44 = private unnamed_addr constant [1 x i8] c"\00"
@.str44.c = internal global %nyx_string* null
@.str45 = private unnamed_addr constant [9 x i8] c"NYX_DIAG\00"
@.str45.c = internal global %nyx_string* null
@.str46 = private unnamed_addr constant [5 x i8] c"json\00"
@.str46.c = internal global %nyx_string* null
@.str47 = private unnamed_addr constant [9 x i8] c"module \22\00"
@.str47.c = internal global %nyx_string* null
@.str48 = private unnamed_addr constant [41 x i8] c"\22 cannot be compiled separately: it has \00"
@.str48.c = internal global %nyx_string* null
@.str49 = private unnamed_addr constant [20 x i8] c". Inlined as usual.\00"
@.str49.c = internal global %nyx_string* null
@.str50 = private unnamed_addr constant [69 x i8] c"{\22code\22:\22NYX0302\22,\22severity\22:\22warning\22,\22phase\22:\22resolve\22,\22message\22:\22\00"
@.str50.c = internal global %nyx_string* null
@.str51 = private unnamed_addr constant [3 x i8] c"\22}\00"
@.str51.c = internal global %nyx_string* null
@.str52 = private unnamed_addr constant [36 x i8] c"  ⚠ aviso [NYX0302]: el módulo \22\00"
@.str52.c = internal global %nyx_string* null
@.str53 = private unnamed_addr constant [37 x i8] c"\22 no se compila aparte porque tiene \00"
@.str53.c = internal global %nyx_string* null
@.str54 = private unnamed_addr constant [304 x i8] c": un genérico se monomorfiza, y un método se despacha, con el CUERPO a la vista del que llama, y los cuerpos no cruzan la frontera de módulo. Se inlinea como siempre: el programa es el mismo, solo que sin reutilizar el objeto de ese módulo. Para compilarlo aparte, conviene mover eso a otro módulo.\00"
@.str54.c = internal global %nyx_string* null
@.str55 = private unnamed_addr constant [34 x i8] c"  ⚠ warning [NYX0302]: module \22\00"
@.str55.c = internal global %nyx_string* null
@.str56 = private unnamed_addr constant [45 x i8] c"\22 is not compiled separately because it has \00"
@.str56.c = internal global %nyx_string* null
@.str57 = private unnamed_addr constant [289 x i8] c": a generic is monomorphized, and a method dispatched, with the BODY visible to the caller, and bodies do not cross the module boundary. It is inlined as usual: the program is the same, it just does not reuse that module's object. To compile it separately, move those into another module.\00"
@.str57.c = internal global %nyx_string* null
@.str58 = private unnamed_addr constant [8 x i8] c"import \00"
@.str58.c = internal global %nyx_string* null
@.str59 = private unnamed_addr constant [2 x i8] c"{\00"
@.str59.c = internal global %nyx_string* null
@.str60 = private unnamed_addr constant [5 x i8] c"from\00"
@.str60.c = internal global %nyx_string* null
@.str61 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str61.c = internal global %nyx_string* null
@.str62 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str62.c = internal global %nyx_string* null
@.str63 = private unnamed_addr constant [20 x i8] c"NYX_INLINE_COMPILER\00"
@.str63.c = internal global %nyx_string* null
@.str64 = private unnamed_addr constant [2 x i8] c"1\00"
@.str64.c = internal global %nyx_string* null
@.str65 = private unnamed_addr constant [1 x i8] c"/"
@.str66 = private unnamed_addr constant [5 x i8] c" as \00"
@.str66.c = internal global %nyx_string* null
@.str67 = private unnamed_addr constant [1 x i8] c"\00"
@.str67.c = internal global %nyx_string* null
@.str68 = private unnamed_addr constant [1 x i8] c" "
@.str69 = private unnamed_addr constant [1 x i8] c"a"
@.str70 = private unnamed_addr constant [1 x i8] c"s"
@.str71 = private unnamed_addr constant [1 x i8] c" "
@.str72 = private unnamed_addr constant [1 x i8] c" "
@.str73 = private unnamed_addr constant [1 x i8] c"\0a"
@.str74 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str74.c = internal global %nyx_string* null
@.str75 = private unnamed_addr constant [5 x i8] c"pub \00"
@.str75.c = internal global %nyx_string* null
@.str76 = private unnamed_addr constant [8 x i8] c"export \00"
@.str76.c = internal global %nyx_string* null
@.str77 = private unnamed_addr constant [8 x i8] c"pub fn \00"
@.str77.c = internal global %nyx_string* null
@.str78 = private unnamed_addr constant [1 x i8] c"\00"
@.str78.c = internal global %nyx_string* null
@.str79 = private unnamed_addr constant [11 x i8] c"export fn \00"
@.str79.c = internal global %nyx_string* null
@.str80 = private unnamed_addr constant [14 x i8] c"pub async fn \00"
@.str80.c = internal global %nyx_string* null
@.str81 = private unnamed_addr constant [17 x i8] c"export async fn \00"
@.str81.c = internal global %nyx_string* null
@.str82 = private unnamed_addr constant [12 x i8] c"pub struct \00"
@.str82.c = internal global %nyx_string* null
@.str83 = private unnamed_addr constant [15 x i8] c"export struct \00"
@.str83.c = internal global %nyx_string* null
@.str84 = private unnamed_addr constant [10 x i8] c"pub enum \00"
@.str84.c = internal global %nyx_string* null
@.str85 = private unnamed_addr constant [13 x i8] c"export enum \00"
@.str85.c = internal global %nyx_string* null
@.str86 = private unnamed_addr constant [1 x i8] c"("
@.str87 = private unnamed_addr constant [1 x i8] c"<"
@.str88 = private unnamed_addr constant [1 x i8] c" "
@.str89 = private unnamed_addr constant [1 x i8] c"("
@.str90 = private unnamed_addr constant [1 x i8] c"<"
@.str91 = private unnamed_addr constant [1 x i8] c" "
@.str92 = private unnamed_addr constant [1 x i8] c"("
@.str93 = private unnamed_addr constant [1 x i8] c"<"
@.str94 = private unnamed_addr constant [1 x i8] c" "
@.str95 = private unnamed_addr constant [1 x i8] c"("
@.str96 = private unnamed_addr constant [1 x i8] c"<"
@.str97 = private unnamed_addr constant [1 x i8] c" "
@.str98 = private unnamed_addr constant [1 x i8] c"{"
@.str99 = private unnamed_addr constant [1 x i8] c"<"
@.str100 = private unnamed_addr constant [1 x i8] c" "
@.str101 = private unnamed_addr constant [1 x i8] c"{"
@.str102 = private unnamed_addr constant [1 x i8] c"<"
@.str103 = private unnamed_addr constant [1 x i8] c" "
@.str104 = private unnamed_addr constant [1 x i8] c"{"
@.str105 = private unnamed_addr constant [1 x i8] c"<"
@.str106 = private unnamed_addr constant [1 x i8] c" "
@.str107 = private unnamed_addr constant [1 x i8] c"{"
@.str108 = private unnamed_addr constant [1 x i8] c"<"
@.str109 = private unnamed_addr constant [1 x i8] c" "
@.str110 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str110.c = internal global %nyx_string* null
@.str111 = private unnamed_addr constant [1 x i8] c"\00"
@.str111.c = internal global %nyx_string* null
@.str112 = private unnamed_addr constant [1 x i8] c"\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [1 x i8] c"/"
@.str114 = private unnamed_addr constant [1 x i8] c"/"
@.str115 = private unnamed_addr constant [6 x i8] c"\22src/\00"
@.str115.c = internal global %nyx_string* null
@.str116 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str116.c = internal global %nyx_string* null
@.str117 = private unnamed_addr constant [1 x i8] c"\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [7 x i8] c"import\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [1 x i8] c"\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [6 x i8] c"/src/\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [1 x i8] c"\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [15 x i8] c"export struct \00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [8 x i8] c"struct \00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [2 x i8] c"{\00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [1 x i8] c"\00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [1 x i8] c"{"
@.str131 = private unnamed_addr constant [1 x i8] c"}"
@.str132 = private unnamed_addr constant [1 x i8] c" "
@.str133 = private unnamed_addr constant [1 x i8] c"<"
@.str134 = private unnamed_addr constant [1 x i8] c"{"
@.str135 = private unnamed_addr constant [1 x i8] c"{"
@.str136 = private unnamed_addr constant [1 x i8] c"}"
@.str137 = private unnamed_addr constant [16 x i8] c"NYX_PROJECT_DIR\00"
@.str137.c = internal global %nyx_string* null
@.str138 = private unnamed_addr constant [1 x i8] c"\00"
@.str138.c = internal global %nyx_string* null
@.str139 = private unnamed_addr constant [2 x i8] c"/\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [1 x i8] c"/"
@.str142 = private unnamed_addr constant [4 x i8] c"std\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [4 x i8] c"src\00"
@.str143.c = internal global %nyx_string* null
@.str144 = private unnamed_addr constant [9 x i8] c"compiler\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [1 x i8] c"\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [11 x i8] c"/packages/\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [1 x i8] c"\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [6 x i8] c"/std/\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [2 x i8] c"/\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [1 x i8] c"\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [11 x i8] c"/.nyx/std/\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [7 x i8] c"/.nyx/\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [1 x i8] c"\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [20 x i8] c"//#prelude-modules:\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [3 x i8] c"io\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [5 x i8] c"math\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [6 x i8] c"array\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [5 x i8] c"file\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [4 x i8] c"map\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [2 x i8] c" \00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [1 x i8] c"\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [3 x i8] c"io\00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [5 x i8] c"math\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [6 x i8] c"array\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [5 x i8] c"file\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [4 x i8] c"map\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [16 x i8] c"nyx:sin-prelude\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [19 x i8] c"// nyx:sin-prelude\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [8 x i8] c"import \00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [11 x i8] c"\22compiler/\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [13 x i8] c"NYX_LIB_SELF\00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [1 x i8] c"\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [1 x i8] c"\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [11 x i8] c"//#module\0a\00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [8 x i8] c"-reabre\00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [20 x i8] c"NYX_INLINE_COMPILER\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [2 x i8] c"1\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [13 x i8] c"NYX_LIB_UNIT\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [2 x i8] c"1\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [1 x i8] c"\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [43 x i8] c"  ⚠ aviso [NYX0302]: este módulo tiene \00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [52 x i8] c" y no se compila aparte: se inlinea en el programa.\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [42 x i8] c"  ⚠ warning [NYX0302]: this module has \00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [65 x i8] c" and is not compiled separately: it is inlined into the program.\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [1 x i8] c"\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [12 x i8] c"std/prelude\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [1 x i8] c"\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [12 x i8] c"std/prelude\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [13 x i8] c"NYX_LIB_SELF\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [1 x i8] c"\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [1 x i8] c"\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [1 x i8] c"\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [1 x i8] c"\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [8 x i8] c"module \00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [4 x i8] c"\22 [\00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [3 x i8] c", \00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [3 x i8] c"]\0a\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [1 x i8] c"\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str229.c = internal global %nyx_string* null
@.str230 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str230.c = internal global %nyx_string* null
@.str231 = private unnamed_addr constant [1 x i8] c"\00"
@.str231.c = internal global %nyx_string* null
@.str232 = private unnamed_addr constant [1 x i8] c"\00"
@.str232.c = internal global %nyx_string* null
@.str233 = private unnamed_addr constant [1 x i8] c"\00"
@.str233.c = internal global %nyx_string* null
@.str234 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str234.c = internal global %nyx_string* null
@.str235 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [1 x i8] c"\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [1 x i8] c"\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [10 x i8] c"//#module\00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str247.c = internal global %nyx_string* null
@.str248 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str248.c = internal global %nyx_string* null
@.str249 = private unnamed_addr constant [1 x i8] c"\00"
@.str249.c = internal global %nyx_string* null
@.str250 = private unnamed_addr constant [1 x i8] c"\00"
@.str250.c = internal global %nyx_string* null
@.str251 = private unnamed_addr constant [1 x i8] c"\00"
@.str251.c = internal global %nyx_string* null
@.str252 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str252.c = internal global %nyx_string* null
@.str253 = private unnamed_addr constant [8 x i8] c"module \00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [4 x i8] c"\22 [\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [3 x i8] c", \00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [3 x i8] c"]\0a\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [1 x i8] c"\00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [1 x i8] c"\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [1 x i8] c"\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [8 x i8] c"module \00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [4 x i8] c"\22 [\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [3 x i8] c", \00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [3 x i8] c"]\0a\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [1 x i8] c"\00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [1 x i8] c"\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [1 x i8] c"\00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [1 x i8] c"\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [1 x i8] c"\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [1 x i8] c"\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [17 x i8] c"//#line 1000001\0a\00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [1 x i8] c"\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [9 x i8] c"libdecl:\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [1 x i8] c"\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [2 x i8] c",\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [13 x i8] c"NYX_LIB_DECL\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [1 x i8] c"\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [13 x i8] c"NYX_LIB_SELF\00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [1 x i8] c"\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [1 x i8] c"\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [3 x i8] c"es\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [1 x i8] c"\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [1 x i8] c"\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [4 x i8] c"std\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [4 x i8] c"std\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [1 x i8] c"\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [1 x i8] c"\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [10 x i8] c"/.nyx/std\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [10 x i8] c"/.nyx/std\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [1 x i8] c"\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [1 x i8] c"\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [1 x i8] c"\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [1 x i8] c"\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [3 x i8] c"\5cn\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [3 x i8] c"\5cr\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [3 x i8] c"\5ct\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [16 x i8] c"NYX_PROJECT_DIR\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [1 x i8] c"\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [1 x i8] c"\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [1 x i8] c"\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [1 x i8] c"\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [1 x i8] c"\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [1 x i8] c"\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [1 x i8] c"\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [9 x i8] c"NYX_DIAG\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [5 x i8] c"json\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [27 x i8] c"could not resolve import \22\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [44 x i8] c"\22 (not found in std/, local, or packages/).\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [55 x i8] c"{\22code\22:\22NYX0301\22,\22severity\22:\22error\22,\22phase\22:\22resolve\22\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [13 x i8] c",\22message\22:\22\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [16 x i8] c",\22suggestion\22:\22\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [2 x i8] c"}\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [49 x i8] c"error [NYX0301]: no se pudo resolver el import \22\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [41 x i8] c"\22 (ni en std/ ni local ni en packages/).\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [44 x i8] c"error [NYX0301]: could not resolve import \22\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [44 x i8] c"\22 (not found in std/, local, or packages/).\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [26 x i8] c"       ¿Quisiste decir \22\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [3 x i8] c"\22?\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [22 x i8] c"       Did you mean \22\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [3 x i8] c"\22?\00"
@.str360.c = internal global %nyx_string* null
@__nyx_test_failed = external global i64
@__nyx_test_mode = external global i64
; Nyx Compiler Bootstrap v3.0
; Generated from: script.nx

%nyx_string = type { i64, i64, i8* }
%ASTNode = type { %nyx_string*, { i64, i8* }*, i64, i64 }
declare %nyx_string* @nyx_string_from_cstr(i8*)
declare %nyx_string* @nyx_intern_cstr(%nyx_string**, i8*)
declare %nyx_string* @nyx_intern_ptr(%nyx_string**, i8*, i64)
declare %nyx_string* @nyx_string_from_ptr(i8*, i64)
declare i8*           @nyx_string_to_cstr(%nyx_string*)
declare %nyx_string* @nyx_string_concat(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_string_from_int(i64)
declare %nyx_string* @nyx_string_from_char(i8)
declare %nyx_string* @nyx_string_from_bool(i64)
declare i64 @nyx_bool_from_text(%nyx_string*)

declare void @nyx_print_int(i64)
declare void @nyx_print_float(double)
declare void @nyx_print_float32(float)
declare void @nyx_print_string(i8*)
declare void @nyx_print_bool(i1)
declare %nyx_string* @nyx_string_from_float(double)
declare %nyx_string* @nyx_string_from_float32(float)
declare %nyx_string* @nyx_read_file(i8*)
declare i1 @nyx_write_file(i8*, i8*)
declare i1 @nyx_write_file_safe(i8*, %nyx_string*)
declare i1 @nyx_file_exists(i8*)
declare i8* @nyx_file_open(i8*, i8*)
declare void @nyx_file_close(i8*)
declare %nyx_string* @nyx_file_read_line(i8*)
declare { i64, i8* }* @nyx_file_read_bytes(i8*, i64)
declare i64 @nyx_file_write_string(i8*, %nyx_string*)
declare i64 @nyx_file_write_bytes(i8*, { i64, i8* }*)
declare i64 @nyx_file_seek(i8*, i64, i64)
declare i64 @nyx_file_tell(i8*)
declare void @nyx_file_flush(i8*)
declare i64 @nyx_mkdir(i8*)
declare { i64, i8* }* @nyx_readdir(i8*)
declare i64 @nyx_remove(i8*)
declare i64 @nyx_rename_file(i8*, i8*)
declare i64 @nyx_crc32_bytes({ i64, i8* }*)
declare i64 @nyx_crc32_string(%nyx_string*)
declare %nyx_string* @nyx_string_from_bytes({ i64, i8* }*, i64, i64)
declare void @nyx_setup_shutdown_handler(i8*)
declare i64 @nyx_tcp_listen(i8*, i64)
declare i64 @nyx_tcp_accept(i64)
declare %nyx_string* @nyx_getpeername(i64)
declare i64 @nyx_tcp_connect(i8*, i64)
declare %nyx_string* @nyx_tcp_read(i64, i64)
declare %nyx_string* @nyx_tcp_read_partial(i64, i64)
declare %nyx_string* @nyx_tcp_read_exact(i64, i64)
declare %nyx_string* @nyx_tcp_read_line(i64)
declare i64 @nyx_tcp_write(i64, %nyx_string*)
declare i64 @nyx_tcp_set_timeout(i64, i64)
declare void @nyx_tcp_close(i64)
declare i64 @nyx_tcp_shutdown(i64, i64)
declare { i64, i8* }* @nyx_http_parse_request_fast(i64)
declare { i64, i8* }* @nyx_resp_read_command(i64)
declare i64 @nyx_resp_write_bulk(i64, %nyx_string*)
declare i64 @nyx_udp_bind(i8*, i64)
declare i64 @nyx_udp_sendto(i64, %nyx_string*, i8*, i64)
declare %nyx_string* @nyx_udp_recvfrom(i64, i64)
declare %nyx_string* @nyx_resolve(i8*)
declare %nyx_string* @nyx_resolve_ptr(i8*)
declare { i64, i8* }* @nyx_net_interfaces()
declare i64 @nyx_thread_spawn(i8*)
declare i64 @nyx_thread_join(i64)
declare void @nyx_task_cancel(i64)
declare i64 @nyx_task_cancelled()
declare i64 @nyx_task_race(i64, i64)
declare i8* @nyx_mutex_new()
declare void @nyx_mutex_lock(i8*)
declare void @nyx_mutex_unlock(i8*)
declare void @nyx_mutex_destroy(i8*)
declare i8* @nyx_condvar_new()
declare void @nyx_condvar_wait(i8*, i8*)
declare void @nyx_condvar_signal(i8*)
declare void @nyx_condvar_broadcast(i8*)
declare i64 @nyx_condvar_timedwait(i8*, i8*, i64)
declare i8* @nyx_rwlock_new()
declare void @nyx_rwlock_rdlock(i8*)
declare void @nyx_rwlock_wrlock(i8*)
declare i64 @nyx_rwlock_tryrdlock(i8*)
declare i64 @nyx_rwlock_trywrlock(i8*)
declare void @nyx_rwlock_unlock(i8*)
declare void @nyx_rwlock_destroy(i8*)
declare { i64, i8* }* @nyx_map_scan_page(i8*, i64)
declare i8* @nyx_channel_new(i64)
declare void @nyx_channel_send(i8*, i64)
declare i64 @nyx_channel_recv(i8*)
declare i64 @nyx_channel_try_recv(i8*)
declare void @nyx_channel_destroy(i8*)
declare void @nyx_yield()
declare i64 @nyx_goroutine_spawn_closure(i8*)
declare i64 @nyx_goroutine_join(i64)
declare void @nyx_goroutine_sleep(i64)
declare i64 @nyx_goroutine_spawn_closure_detached(i8*)
declare void @llvm.memset.p0i8.i64(i8*, i8, i64, i1)
declare i8* @llvm.stacksave()
declare void @llvm.stackrestore(i8*)
declare %nyx_string* @nyx_exec(i8*)
declare i64 @nyx_exec_code(i8*)
declare %nyx_string* @nyx_getenv(i8*)
declare %nyx_string* @nyx_getenv_default(i8*, %nyx_string*)
declare void @nyx_setenv(i8*, i8*)
declare void @nyx_exit(i64)
declare { i64, i8* }* @nyx_get_args()
declare void @nyx_set_args(i32, i8**)
declare i64 @nyx_fork()
declare i64 @nyx_execvp(%nyx_string*, { i64, i8* }*)
declare i64 @nyx_waitpid(i64, i64)
declare i64 @nyx_dup2(i64, i64)
declare i64 @nyx_chdir(%nyx_string*)
declare %nyx_string* @nyx_getcwd()
declare { i64, i8* }* @nyx_stat(%nyx_string*)
declare i64 @nyx_isatty(i64)
declare i64 @nyx_close_fd(i64)
declare { i64, i8* }* @nyx_pipe()
declare i64 @nyx_getpid()
declare i64 @nyx_kill(i64, i64)
declare i64 @nyx_open_fd(%nyx_string*, i64)
declare i64 @nyx_fsync(i64)
declare i64 @nyx_fdatasync(i64)
declare void @nyx_sleep(i64)
declare i64 @nyx_time()
declare i64 @nyx_time_ms()
declare i64 @nyx_time_us()
declare double @nyx_math_log(double)
declare double @nyx_math_log2(double)
declare double @nyx_math_log10(double)
declare double @nyx_math_exp(double)
declare double @nyx_math_sin(double)
declare double @nyx_math_cos(double)
declare double @nyx_math_tan(double)
declare double @nyx_math_asin(double)
declare double @nyx_math_acos(double)
declare double @nyx_math_atan(double)
declare double @nyx_math_atan2(double, double)
declare double @nyx_math_sqrt(double)
declare double @nyx_math_ceil(double)
declare double @nyx_math_floor(double)
declare double @nyx_math_round(double)
declare double @nyx_math_fabs(double)
declare double @nyx_math_fmod(double, double)
declare void @nyx_signal_handle(i64, i8*)
declare void @nyx_signal_reset(i64)
declare void @nyx_signal_ignore(i64)
declare %nyx_string* @nyx_regex_match(%nyx_string*, %nyx_string*)
declare i64 @nyx_regex_is_match(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_regex_replace(%nyx_string*, %nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_regex_replace_all(%nyx_string*, %nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_datetime_now()
declare %nyx_string* @nyx_datetime_format(%nyx_string*)
declare %nyx_string* @nyx_datetime_format_epoch(i64, %nyx_string*)
declare i64 @nyx_time_epoch()
declare %nyx_string* @nyx_datetime_from_epoch(i64)
declare i64 @nyx_datetime_parse(%nyx_string*, %nyx_string*)
declare i64 @nyx_datetime_year(i64)
declare i64 @nyx_datetime_month(i64)
declare i64 @nyx_datetime_day(i64)
declare i64 @nyx_datetime_hour(i64)
declare i64 @nyx_datetime_minute(i64)
declare i64 @nyx_datetime_second(i64)
declare i64 @nyx_datetime_weekday(i64)
declare %nyx_string* @nyx_sha256(%nyx_string*)
declare %nyx_string* @nyx_md5(%nyx_string*)
declare %nyx_string* @nyx_hmac_sha256(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_hmac_sha256_raw(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_sha256_raw(%nyx_string*)
declare %nyx_string* @nyx_pbkdf2_hmac_sha256(%nyx_string*, %nyx_string*, i64, i64)
declare i64 @nyx_constant_time_eq(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_https_get(%nyx_string*)
declare %nyx_string* @nyx_https_post(%nyx_string*, %nyx_string*, %nyx_string*)
declare i64 @nyx_tls_connect(%nyx_string*, i64)
declare %nyx_string* @nyx_tls_read(i64, i64)
declare %nyx_string* @nyx_tls_read_partial(i64, i64)
declare i64 @nyx_tls_write(i64, %nyx_string*)
declare i64 @nyx_tls_wait_readable(i64, i64)
declare %nyx_string* @nyx_tls_read_nonblock(i64, i64)
declare void @nyx_tls_close(i64)
declare i64 @nyx_tls_server_init(%nyx_string*, %nyx_string*)
declare i64 @nyx_tls_server_add_cert(%nyx_string*, %nyx_string*, %nyx_string*)
declare i64 @nyx_tls_accept(i64)
declare %nyx_string* @nyx_tls_read_line(i64)
declare i64 @nyx_tls_write_conn(i64, %nyx_string*)
declare void @nyx_tls_close_conn(i64)
declare i8* @nyx_map_new(i32)
declare void @nyx_map_insert_str(i8*, i8*, i8*)
declare i8* @nyx_map_get_str(i8*, i8*)
declare void @nyx_map_insert_int(i8*, i8*, i64)
declare i64 @nyx_map_get_int(i8*, i8*)
declare i8* @nyx_map_get_str_or(i8*, i8*, i8*)
declare i64 @nyx_map_get_int_or(i8*, i8*, i64)
declare i1 @nyx_map_contains_str(i8*, i8*)
declare { i64, i8* }* @nyx_map_keys_array(i8*)
declare { i64, i8* }* @nyx_map_values_array(i8*)
declare i64 @nyx_map_length(i8*)
declare i64 @nyx_map_remove_str(i8*, i8*)
declare void @nyx_map_clear(i8*)
declare i64 @nyx_array_length({ i64, i8* }*)
declare void @nyx_array_push({ i64, i8* }*, i64)
declare i64 @nyx_array_pop({ i64, i8* }*)
declare void @nyx_array_unshift({ i64, i8* }*, i64)
declare i64 @nyx_array_shift({ i64, i8* }*)
declare i64 @nyx_array_contains({ i64, i8* }*, i64)
declare void @nyx_array_push_tagged({ i64, i8* }*, i64, i64)
declare void @nyx_array_set_tagged({ i64, i8* }*, i64, i64, i64)
declare i64 @nyx_array_contains_tagged({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_index_of_tagged({ i64, i8* }*, i64, i64)
declare i64 @nyx_slot_eq({ i64, i8* }*, i64, { i64, i8* }*, i64)
declare i64 @nyx_array_get_checked({ i64, i8* }*, i64, i64)
declare i64 @nyx_slot_as_array_checked({ i64, i8* }*, i64)
declare i64 @nyx_row_cell({ i64, i8* }*, i64, i64, i8*, i8*, i64)
declare %nyx_string* @nyx_row_problema({ i64, i8* }*, i64, i8*, i8*, i64)
declare i64 @nyx_bool_text_ok(%nyx_string*)
declare i64 @nyx_int_text_ok(%nyx_string*)
declare double @nyx_slot_as_float_checked({ i64, i8* }*, i64)
declare double @nyx_slot_as_float_st({ i64, i8* }*, i64, i64)
declare i64 @nyx_slot_as_int_checked({ i64, i8* }*, i64)
declare void @nyx_array_retag_unknown({ i64, i8* }*, i64)
declare i64 @nyx_array_get_tag({ i64, i8* }*, i64)
declare %nyx_string* @nyx_string_from_tagged(i64, i64, i64)
declare void @nyx_array_insert({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_remove({ i64, i8* }*, i64)
declare void @nyx_array_set({ i64, i8* }*, i64, i64)
declare i64 @nyx_array_get({ i64, i8* }*, i64)
declare i64 @nyx_array_get_or_zero({ i64, i8* }*, i64)
declare { i64, i8* }* @nyx_array_new_ptr()
declare void @nyx_array_push_ptr({ i64, i8* }*, i8*)
declare i8* @nyx_array_get_ptr({ i64, i8* }*, i64)
declare void @nyx_array_set_ptr({ i64, i8* }*, i64, i8*)
declare i64 @nyx_string_length(%nyx_string*)
declare i64 @nyx_string_length_utf8(%nyx_string*)
declare i64 @nyx_string_byte_length(%nyx_string*)
declare i8 @nyx_string_char_at(%nyx_string*, i64)
declare %nyx_string* @nyx_string_substring(%nyx_string*, i64, i64)
declare %nyx_string* @nyx_string_char_substring(%nyx_string*, i64, i64)
declare i1 @nyx_string_contains(%nyx_string*, %nyx_string*)
declare i1 @nyx_string_equals(%nyx_string*, %nyx_string*)
declare i32 @nyx_string_compare(%nyx_string*, %nyx_string*)
declare { i64, i8* }* @nyx_string_split(%nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_read_line()
declare i64 @nyx_stdin_eof()
declare void @nyx_raw_mode_enter()
declare void @nyx_raw_mode_exit()
declare i64 @nyx_read_byte()
declare i64 @nyx_read_byte_timeout(i64)
declare i64 @nyx_term_cols()
declare i64 @nyx_term_rows()
declare void @nyx_print_no_newline(%nyx_string*)
declare void @nyx_term_write(%nyx_string*)
declare void @nyx_term_flush()
declare i64 @nyx_string_to_int(%nyx_string*)
declare double @nyx_string_to_float(%nyx_string*)
declare i64 @nyx_string_to_int_or(%nyx_string*, i64)
declare double @nyx_string_to_float_or(%nyx_string*, double)
declare i64 @nyx_string_to_int_range(%nyx_string*, i64, i64, i64)
declare double @nyx_string_to_float_range(%nyx_string*, i64, i64, double)
declare %nyx_string* @nyx_string_trim(%nyx_string*)
declare %nyx_string* @nyx_string_to_upper(%nyx_string*)
declare %nyx_string* @nyx_string_to_lower(%nyx_string*)
declare %nyx_string* @nyx_string_replace(%nyx_string*, %nyx_string*, %nyx_string*)
declare %nyx_string* @nyx_string_repeat(%nyx_string*, i64)
declare i1 @nyx_string_starts_with(%nyx_string*, %nyx_string*)
declare i1 @nyx_string_ends_with(%nyx_string*, %nyx_string*)
declare i64 @nyx_string_index_of(%nyx_string*, %nyx_string*)
declare i64 @nyx_string_index_of_from(%nyx_string*, %nyx_string*, i64)
declare i8* @nyx_sb_new(i64)
declare void @nyx_sb_append(i8*, %nyx_string*)
declare void @nyx_sb_append_char(i8*, i8)
declare void @nyx_sb_append_cstr(i8*, i8*)
declare void @nyx_sb_append_int(i8*, i64)
declare %nyx_string* @nyx_sb_to_string(i8*)
declare void @nyx_sb_clear(i8*)
declare { i64, i8* }* @nyx_array_slice({ i64, i8* }*, i64, i64)
declare void @nyx_array_reverse({ i64, i8* }*)
declare i64 @nyx_array_index_of({ i64, i8* }*, i64)
declare %nyx_string* @nyx_string_join({ i64, i8* }*, %nyx_string*)
declare i8* @GC_malloc(i64)
declare i8* @malloc(i64)
declare void @free(i8*)
declare i32 @strcmp(i8*, i8*)
declare double @pow(double, double)
declare void @nyx_assert_fail(i8*)
declare void @nyx_assert_eq_int(i64, i64, i8*)
declare void @nyx_assert_eq_str(%nyx_string*, %nyx_string*, i8*)
declare void @exit(i32)
declare void @nyx_panic(%nyx_string*)
declare i8* @nyx_try_push()
declare void @nyx_try_pop()
declare void @nyx_throw(%nyx_string*)
declare %nyx_string* @nyx_get_exception()
declare i32 @setjmp(i8*) #0
declare void @nyx_var_anchor(i8*)
declare %nyx_string* @nyx_format(%nyx_string*, { i64, i8* }*)
declare %nyx_string* @nyx_int_to_hex(i64)
declare %nyx_string* @nyx_int_to_hex_upper(i64)
declare %nyx_string* @nyx_int_to_oct(i64)
declare %nyx_string* @nyx_int_to_bin(i64)
declare %nyx_string* @nyx_float_to_prec(double, %nyx_string*)
declare %nyx_string* @nyx_int_to_width(i64, %nyx_string*)
declare i8* @nyx_iter_from_array({ i64, i8* }*)
declare i8* @nyx_iter_from_range(i64, i64, i64)
declare i8* @nyx_iter_next(i8*)
declare i8* @nyx_option_some_val(i64)
declare i8* @nyx_option_none_val()
declare i8* @nyx_iter_map(i8*, i8*)
declare i8* @nyx_iter_filter(i8*, i8*)
declare i8* @nyx_iter_take(i8*, i64)
declare i8* @nyx_iter_skip(i8*, i64)
declare i8* @nyx_iter_enumerate(i8*)
declare i8* @nyx_iter_chain(i8*, i8*)
declare { i64, i8* }* @nyx_iter_collect(i8*)
declare i64 @nyx_iter_fold(i8*, i64, i8*)
declare i64 @nyx_iter_sum(i8*)
declare i64 @nyx_iter_count(i8*)
declare i64 @nyx_iter_any(i8*, i8*)
declare i64 @nyx_iter_all(i8*, i8*)

@g_resolve_soft = global i1 0
@g_resolve_errors = global i64 0

declare %nyx_string* @nyx_host_os()
define internal %nyx_string* @dir_usuario_res(
) {
  %1 = call %nyx_string* @nyx_host_os()
  %2 = getelementptr [8 x i8], [8 x i8]* @.str0, i32 0, i32 0
  %3 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %2, i64 7)
  %4 = call i1 @nyx_string_equals(%nyx_string* %1, %nyx_string* %3)
  br i1 %4, label %then0, label %else1
then0:
  %5 = getelementptr [12 x i8], [12 x i8]* @.str1, i32 0, i32 0
  %6 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %5, i64 11)
  %7 = call i8* @nyx_string_to_cstr(%nyx_string* %6)
  %8 = call %nyx_string* @nyx_getenv(i8* %7)
  %9 = alloca %nyx_string*
  store %nyx_string* %8, %nyx_string** %9
  %10 = load %nyx_string*, %nyx_string** %9
  %11 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %12 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %11, i64 0)
  %13 = call i1 @nyx_string_equals(%nyx_string* %10, %nyx_string* %12)
  %14 = xor i1 %13, true
  br i1 %14, label %then3, label %else4
then3:
  %15 = load %nyx_string*, %nyx_string** %9
  ret %nyx_string* %15
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %16 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %16, i64 4)
  %18 = call i8* @nyx_string_to_cstr(%nyx_string* %17)
  %19 = call %nyx_string* @nyx_getenv(i8* %18)
  ret %nyx_string* %19
}

define internal %nyx_string* @find_import_path(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %20 = load %nyx_string*, %nyx_string** %line.ptr
  %21 = call i64 @nyx_string_byte_length(%nyx_string* %20)
  %22 = sub i64 %21, 1
  %23 = alloca i64
  store i64 %22, i64* %23
  %24 = call i8* @llvm.stacksave()
  br label %while_cond6
while_cond6:
  %25 = load i64, i64* %23
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %while_body7, label %while_end8
while_body7:
  call void @llvm.stackrestore(i8* %24)
  %27 = load %nyx_string*, %nyx_string** %line.ptr
  %28 = load i64, i64* %23
  %29 = call i8 @nyx_string_char_at(%nyx_string* %27, i64 %28)
  %30 = zext i8 %29 to i64
  %31 = trunc i64 %30 to i8
  %32 = alloca i8
  store i8 %31, i8* %32
  %33 = load i8, i8* %32
  %34 = getelementptr [1 x i8], [1 x i8]* @.str4, i32 0, i32 0
  %35 = load i8, i8* %34
  %36 = zext i8 %35 to i64
  %37 = zext i8 %33 to i64
  %38 = icmp eq i64 %37, %36
  br i1 %38, label %then9, label %else10
then9:
  %39 = load i64, i64* %23
  %40 = alloca i64
  store i64 %39, i64* %40
  %41 = load i64, i64* %23
  %42 = sub i64 %41, 1
  store i64 %42, i64* %23
  %43 = call i8* @llvm.stacksave()
  br label %while_cond12
while_cond12:
  %44 = load i64, i64* %23
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %while_body13, label %while_end14
while_body13:
  call void @llvm.stackrestore(i8* %43)
  %46 = load %nyx_string*, %nyx_string** %line.ptr
  %47 = load i64, i64* %23
  %48 = call i8 @nyx_string_char_at(%nyx_string* %46, i64 %47)
  %49 = zext i8 %48 to i64
  %50 = trunc i64 %49 to i8
  %51 = alloca i8
  store i8 %50, i8* %51
  %52 = load i8, i8* %51
  %53 = getelementptr [1 x i8], [1 x i8]* @.str5, i32 0, i32 0
  %54 = load i8, i8* %53
  %55 = zext i8 %54 to i64
  %56 = zext i8 %52 to i64
  %57 = icmp eq i64 %56, %55
  br i1 %57, label %then15, label %else16
then15:
  %58 = load %nyx_string*, %nyx_string** %line.ptr
  %59 = load i64, i64* %23
  %60 = add i64 %59, 1
  %61 = load i64, i64* %40
  %62 = call %nyx_string* @nyx_string_substring(%nyx_string* %58, i64 %60, i64 %61)
  ret %nyx_string* %62
else16:
  br label %merge17
merge17:
  %63 = load i64, i64* %23
  %64 = sub i64 %63, 1
  store i64 %64, i64* %23
  br label %while_cond12
while_end14:
  br label %merge11
else10:
  br label %merge11
merge11:
  %65 = load i64, i64* %23
  %66 = sub i64 %65, 1
  store i64 %66, i64* %23
  br label %while_cond6
while_end8:
  %67 = getelementptr [1 x i8], [1 x i8]* @.str6, i32 0, i32 0
  %68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %67, i64 0)
  ret %nyx_string* %68
}

define internal i1 @import_es_lib(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %69 = getelementptr [16 x i8], [16 x i8]* @.str7, i32 0, i32 0
  %70 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %69, i64 15)
  %71 = call i8* @nyx_string_to_cstr(%nyx_string* %70)
  %72 = call %nyx_string* @nyx_getenv(i8* %71)
  %73 = alloca %nyx_string*
  store %nyx_string* %72, %nyx_string** %73
  %74 = load %nyx_string*, %nyx_string** %73
  %75 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %76 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %75, i64 0)
  %77 = call i1 @nyx_string_equals(%nyx_string* %74, %nyx_string* %76)
  br i1 %77, label %then18, label %else19
then18:
  ret i1 0
else19:
  br label %merge20
merge20:
  %78 = load %nyx_string*, %nyx_string** %line.ptr
  %79 = call %nyx_string* @find_import_path(%nyx_string* %78)
  %80 = alloca %nyx_string*
  store %nyx_string* %79, %nyx_string** %80
  %81 = load %nyx_string*, %nyx_string** %80
  %82 = getelementptr [1 x i8], [1 x i8]* @.str9, i32 0, i32 0
  %83 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %82, i64 0)
  %84 = call i1 @nyx_string_equals(%nyx_string* %81, %nyx_string* %83)
  br i1 %84, label %then21, label %else22
then21:
  ret i1 0
else22:
  br label %merge23
merge23:
  %85 = load %nyx_string*, %nyx_string** %73
  %86 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %87 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %86, i64 1)
  %88 = call { i64, i8* }* @nyx_string_split(%nyx_string* %85, %nyx_string* %87)
  %89 = alloca { i64, i8* }*
  store { i64, i8* }* %88, { i64, i8* }** %89
  %90 = alloca i64
  store i64 0, i64* %90
  %91 = call i8* @llvm.stacksave()
  br label %while_cond24
while_cond24:
  %92 = load i64, i64* %90
  %93 = load { i64, i8* }*, { i64, i8* }** %89
  %94 = call i64 @nyx_array_length({ i64, i8* }* %93)
  %95 = icmp slt i64 %92, %94
  br i1 %95, label %while_body25, label %while_end26
while_body25:
  call void @llvm.stackrestore(i8* %91)
  %96 = load { i64, i8* }*, { i64, i8* }** %89
  %97 = load i64, i64* %90
  %98 = call i64 @nyx_array_get_checked({ i64, i8* }* %96, i64 %97, i64 2)
  %99 = inttoptr i64 %98 to %nyx_string*
  %100 = alloca %nyx_string*
  store %nyx_string* %99, %nyx_string** %100
  %101 = load %nyx_string*, %nyx_string** %100
  %102 = call %nyx_string* @nyx_string_trim(%nyx_string* %101)
  %103 = load %nyx_string*, %nyx_string** %80
  %104 = call i1 @nyx_string_equals(%nyx_string* %102, %nyx_string* %103)
  br i1 %104, label %then27, label %else28
then27:
  ret i1 1
else28:
  br label %merge29
merge29:
  %105 = load i64, i64* %90
  %106 = add i64 %105, 1
  store i64 %106, i64* %90
  br label %while_cond24
while_end26:
  ret i1 0
}

define internal i1 @is_user_import(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %107 = load %nyx_string*, %nyx_string** %line.ptr
  %108 = call %nyx_string* @nyx_string_trim(%nyx_string* %107)
  %109 = alloca %nyx_string*
  store %nyx_string* %108, %nyx_string** %109
  %110 = load %nyx_string*, %nyx_string** %109
  %111 = getelementptr [8 x i8], [8 x i8]* @.str11, i32 0, i32 0
  %112 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %111, i64 7)
  %113 = call i1 @nyx_string_starts_with(%nyx_string* %110, %nyx_string* %112)
  %114 = xor i1 %113, true
  br i1 %114, label %then30, label %else31
then30:
  ret i1 0
else31:
  br label %merge32
merge32:
  %115 = load %nyx_string*, %nyx_string** %line.ptr
  %116 = getelementptr [5 x i8], [5 x i8]* @.str12, i32 0, i32 0
  %117 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %116, i64 4)
  %118 = call i1 @nyx_string_contains(%nyx_string* %115, %nyx_string* %117)
  %119 = xor i1 %118, true
  br i1 %119, label %then33, label %else34
then33:
  ret i1 0
else34:
  br label %merge35
merge35:
  %120 = alloca i1
  store i1 false, i1* %120
  %121 = load %nyx_string*, %nyx_string** %line.ptr
  %122 = getelementptr [10 x i8], [10 x i8]* @.str13, i32 0, i32 0
  %123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %122, i64 9)
  %124 = call i1 @nyx_string_contains(%nyx_string* %121, %nyx_string* %123)
  br i1 %124, label %sc_and_rhs36, label %sc_and_end37
sc_and_rhs36:
  %125 = getelementptr [20 x i8], [20 x i8]* @.str14, i32 0, i32 0
  %126 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %125, i64 19)
  %127 = call i8* @nyx_string_to_cstr(%nyx_string* %126)
  %128 = call %nyx_string* @nyx_getenv(i8* %127)
  %129 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %130 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %129, i64 1)
  %131 = call i1 @nyx_string_equals(%nyx_string* %128, %nyx_string* %130)
  %132 = xor i1 %131, true
  store i1 %132, i1* %120
  br label %sc_and_end37
sc_and_end37:
  %133 = load i1, i1* %120
  br i1 %133, label %then38, label %else39
then38:
  ret i1 0
else39:
  br label %merge40
merge40:
  ret i1 1
}

define internal %nyx_string* @nombre_tras(
%nyx_string* %t.param, %nyx_string* %prefijo.param) {
  %t.ptr = alloca %nyx_string*
  store %nyx_string* %t.param, %nyx_string** %t.ptr
  %prefijo.ptr = alloca %nyx_string*
  store %nyx_string* %prefijo.param, %nyx_string** %prefijo.ptr
  %134 = load %nyx_string*, %nyx_string** %t.ptr
  %135 = load %nyx_string*, %nyx_string** %prefijo.ptr
  %136 = call i64 @nyx_string_byte_length(%nyx_string* %135)
  %137 = load %nyx_string*, %nyx_string** %t.ptr
  %138 = call i64 @nyx_string_byte_length(%nyx_string* %137)
  %139 = call %nyx_string* @nyx_string_substring(%nyx_string* %134, i64 %136, i64 %138)
  %140 = alloca %nyx_string*
  store %nyx_string* %139, %nyx_string** %140
  %141 = alloca i64
  store i64 0, i64* %141
  %142 = call i8* @llvm.stacksave()
  br label %while_cond41
while_cond41:
  %143 = load i64, i64* %141
  %144 = load %nyx_string*, %nyx_string** %140
  %145 = call i64 @nyx_string_byte_length(%nyx_string* %144)
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %while_body42, label %while_end43
while_body42:
  call void @llvm.stackrestore(i8* %142)
  %147 = load %nyx_string*, %nyx_string** %140
  %148 = load i64, i64* %141
  %149 = call i8 @nyx_string_char_at(%nyx_string* %147, i64 %148)
  %150 = zext i8 %149 to i64
  %151 = alloca i64
  store i64 %150, i64* %151
  %152 = alloca i1
  store i1 true, i1* %152
  %153 = alloca i1
  store i1 true, i1* %153
  %154 = alloca i1
  store i1 true, i1* %154
  %155 = alloca i1
  store i1 false, i1* %155
  %156 = load i64, i64* %151
  %157 = icmp sge i64 %156, 97
  br i1 %157, label %sc_and_rhs44, label %sc_and_end45
sc_and_rhs44:
  %158 = load i64, i64* %151
  %159 = icmp sle i64 %158, 122
  store i1 %159, i1* %155
  br label %sc_and_end45
sc_and_end45:
  %160 = load i1, i1* %155
  br i1 %160, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  %161 = alloca i1
  store i1 false, i1* %161
  %162 = load i64, i64* %151
  %163 = icmp sge i64 %162, 65
  br i1 %163, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %164 = load i64, i64* %151
  %165 = icmp sle i64 %164, 90
  store i1 %165, i1* %161
  br label %sc_and_end49
sc_and_end49:
  %166 = load i1, i1* %161
  store i1 %166, i1* %154
  br label %sc_or_end47
sc_or_end47:
  %167 = load i1, i1* %154
  br i1 %167, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  %168 = alloca i1
  store i1 false, i1* %168
  %169 = load i64, i64* %151
  %170 = icmp sge i64 %169, 48
  br i1 %170, label %sc_and_rhs52, label %sc_and_end53
sc_and_rhs52:
  %171 = load i64, i64* %151
  %172 = icmp sle i64 %171, 57
  store i1 %172, i1* %168
  br label %sc_and_end53
sc_and_end53:
  %173 = load i1, i1* %168
  store i1 %173, i1* %153
  br label %sc_or_end51
sc_or_end51:
  %174 = load i1, i1* %153
  br i1 %174, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %175 = load i64, i64* %151
  %176 = icmp eq i64 %175, 95
  store i1 %176, i1* %152
  br label %sc_or_end55
sc_or_end55:
  %177 = load i1, i1* %152
  %178 = alloca i1
  store i1 %177, i1* %178
  %179 = load i1, i1* %178
  %180 = xor i1 %179, true
  br i1 %180, label %then56, label %else57
then56:
  %181 = load %nyx_string*, %nyx_string** %140
  %182 = load i64, i64* %141
  %183 = call %nyx_string* @nyx_string_substring(%nyx_string* %181, i64 0, i64 %182)
  ret %nyx_string* %183
else57:
  br label %merge58
merge58:
  %184 = load i64, i64* %141
  %185 = add i64 %184, 1
  store i64 %185, i64* %141
  br label %while_cond41
while_end43:
  %186 = load %nyx_string*, %nyx_string** %140
  ret %nyx_string* %186
}

define internal %nyx_string* @razon_no_separable(
%nyx_string* %src.param) {
  %src.ptr = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %187 = load %nyx_string*, %nyx_string** %src.ptr
  %188 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %189 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %188, i64 1)
  %190 = call { i64, i8* }* @nyx_string_split(%nyx_string* %187, %nyx_string* %189)
  %191 = alloca { i64, i8* }*
  store { i64, i8* }* %190, { i64, i8* }** %191
  %192 = call { i64, i8* }* @nyx_array_new_ptr()
  %193 = alloca { i64, i8* }*
  store { i64, i8* }* %192, { i64, i8* }** %193
  %194 = alloca i64
  store i64 0, i64* %194
  %195 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %196 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %195, i64 0)
  %197 = alloca %nyx_string*
  store %nyx_string* %196, %nyx_string** %197
  %198 = getelementptr [8 x i8], [8 x i8]* @.str18, i32 0, i32 0
  %199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %198, i64 7)
  %200 = alloca %nyx_string*
  store %nyx_string* %199, %nyx_string** %200
  %201 = getelementptr [11 x i8], [11 x i8]* @.str19, i32 0, i32 0
  %202 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %201, i64 10)
  %203 = alloca %nyx_string*
  store %nyx_string* %202, %nyx_string** %203
  %204 = getelementptr [2 x i8], [2 x i8]* @.str20, i32 0, i32 0
  %205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %204, i64 1)
  %206 = alloca %nyx_string*
  store %nyx_string* %205, %nyx_string** %206
  %207 = getelementptr [18 x i8], [18 x i8]* @.str21, i32 0, i32 0
  %208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %207, i64 17)
  %209 = alloca %nyx_string*
  store %nyx_string* %208, %nyx_string** %209
  %210 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %210, i64 1)
  %212 = alloca %nyx_string*
  store %nyx_string* %211, %nyx_string** %212
  %213 = getelementptr [17 x i8], [17 x i8]* @.str23, i32 0, i32 0
  %214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %213, i64 16)
  %215 = alloca %nyx_string*
  store %nyx_string* %214, %nyx_string** %215
  %216 = getelementptr [6 x i8], [6 x i8]* @.str24, i32 0, i32 0
  %217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %216, i64 5)
  %218 = alloca %nyx_string*
  store %nyx_string* %217, %nyx_string** %218
  %219 = getelementptr [6 x i8], [6 x i8]* @.str25, i32 0, i32 0
  %220 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %219, i64 5)
  %221 = alloca %nyx_string*
  store %nyx_string* %220, %nyx_string** %221
  %222 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %222, i64 1)
  %224 = alloca %nyx_string*
  store %nyx_string* %223, %nyx_string** %224
  %225 = getelementptr [18 x i8], [18 x i8]* @.str27, i32 0, i32 0
  %226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %225, i64 17)
  %227 = alloca %nyx_string*
  store %nyx_string* %226, %nyx_string** %227
  %228 = getelementptr [17 x i8], [17 x i8]* @.str28, i32 0, i32 0
  %229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %228, i64 16)
  %230 = alloca %nyx_string*
  store %nyx_string* %229, %nyx_string** %230
  %231 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %231, i64 6)
  %233 = alloca %nyx_string*
  store %nyx_string* %232, %nyx_string** %233
  %234 = getelementptr [11 x i8], [11 x i8]* @.str30, i32 0, i32 0
  %235 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %234, i64 10)
  %236 = alloca %nyx_string*
  store %nyx_string* %235, %nyx_string** %236
  %237 = getelementptr [14 x i8], [14 x i8]* @.str31, i32 0, i32 0
  %238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %237, i64 13)
  %239 = alloca %nyx_string*
  store %nyx_string* %238, %nyx_string** %239
  %240 = getelementptr [11 x i8], [11 x i8]* @.str32, i32 0, i32 0
  %241 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %240, i64 10)
  %242 = alloca %nyx_string*
  store %nyx_string* %241, %nyx_string** %242
  %243 = getelementptr [12 x i8], [12 x i8]* @.str33, i32 0, i32 0
  %244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %243, i64 11)
  %245 = alloca %nyx_string*
  store %nyx_string* %244, %nyx_string** %245
  %246 = call i8* @llvm.stacksave()
  br label %while_cond59
while_cond59:
  %247 = load i64, i64* %194
  %248 = load { i64, i8* }*, { i64, i8* }** %191
  %249 = call i64 @nyx_array_length({ i64, i8* }* %248)
  %250 = icmp slt i64 %247, %249
  br i1 %250, label %while_body60, label %while_end61
while_body60:
  call void @llvm.stackrestore(i8* %246)
  %251 = load { i64, i8* }*, { i64, i8* }** %191
  %252 = load i64, i64* %194
  %253 = call i64 @nyx_array_get_checked({ i64, i8* }* %251, i64 %252, i64 2)
  %254 = inttoptr i64 %253 to %nyx_string*
  %255 = alloca %nyx_string*
  store %nyx_string* %254, %nyx_string** %255
  %256 = load %nyx_string*, %nyx_string** %255
  %257 = call %nyx_string* @nyx_string_trim(%nyx_string* %256)
  %258 = alloca %nyx_string*
  store %nyx_string* %257, %nyx_string** %258
  %259 = load %nyx_string*, %nyx_string** %197
  %260 = alloca %nyx_string*
  store %nyx_string* %259, %nyx_string** %260
  %261 = load %nyx_string*, %nyx_string** %258
  %262 = load %nyx_string*, %nyx_string** %200
  %263 = call i1 @nyx_string_starts_with(%nyx_string* %261, %nyx_string* %262)
  br i1 %263, label %then62, label %else63
then62:
  %264 = load %nyx_string*, %nyx_string** %200
  store %nyx_string* %264, %nyx_string** %260
  br label %merge64
else63:
  br label %merge64
merge64:
  %265 = load %nyx_string*, %nyx_string** %258
  %266 = load %nyx_string*, %nyx_string** %203
  %267 = call i1 @nyx_string_starts_with(%nyx_string* %265, %nyx_string* %266)
  br i1 %267, label %then65, label %else66
then65:
  %268 = load %nyx_string*, %nyx_string** %203
  store %nyx_string* %268, %nyx_string** %260
  br label %merge67
else66:
  br label %merge67
merge67:
  %269 = load %nyx_string*, %nyx_string** %260
  %270 = load %nyx_string*, %nyx_string** %197
  %271 = call i1 @nyx_string_equals(%nyx_string* %269, %nyx_string* %270)
  %272 = xor i1 %271, true
  br i1 %272, label %then68, label %else69
then68:
  %273 = load %nyx_string*, %nyx_string** %258
  %274 = load %nyx_string*, %nyx_string** %260
  %275 = call %nyx_string* @nombre_tras(%nyx_string* %273, %nyx_string* %274)
  %276 = alloca %nyx_string*
  store %nyx_string* %275, %nyx_string** %276
  %277 = load %nyx_string*, %nyx_string** %258
  %278 = load %nyx_string*, %nyx_string** %260
  %279 = call i64 @nyx_string_byte_length(%nyx_string* %278)
  %280 = load %nyx_string*, %nyx_string** %276
  %281 = call i64 @nyx_string_byte_length(%nyx_string* %280)
  %282 = add i64 %279, %281
  %283 = load %nyx_string*, %nyx_string** %258
  %284 = call i64 @nyx_string_byte_length(%nyx_string* %283)
  %285 = call %nyx_string* @nyx_string_substring(%nyx_string* %277, i64 %282, i64 %284)
  %286 = alloca %nyx_string*
  store %nyx_string* %285, %nyx_string** %286
  %287 = load %nyx_string*, %nyx_string** %286
  %288 = load %nyx_string*, %nyx_string** %206
  %289 = call i1 @nyx_string_starts_with(%nyx_string* %287, %nyx_string* %288)
  br i1 %289, label %then71, label %else72
then71:
  %290 = load { i64, i8* }*, { i64, i8* }** %193
  %291 = load %nyx_string*, %nyx_string** %209
  %292 = load %nyx_string*, %nyx_string** %276
  %293 = call %nyx_string* @nyx_string_concat(%nyx_string* %291, %nyx_string* %292)
  %294 = load %nyx_string*, %nyx_string** %212
  %295 = call %nyx_string* @nyx_string_concat(%nyx_string* %293, %nyx_string* %294)
  %296 = load %nyx_string*, %nyx_string** %215
  %297 = load %nyx_string*, %nyx_string** %276
  %298 = call %nyx_string* @nyx_string_concat(%nyx_string* %296, %nyx_string* %297)
  %299 = load %nyx_string*, %nyx_string** %212
  %300 = call %nyx_string* @nyx_string_concat(%nyx_string* %298, %nyx_string* %299)
  %301 = call %nyx_string* @nyx_msg(%nyx_string* %295, %nyx_string* %300)
  %302 = ptrtoint %nyx_string* %301 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %290, i64 %302, i64 2)
  br label %merge73
else72:
  br label %merge73
merge73:
  br label %merge70
else69:
  br label %merge70
merge70:
  %303 = alloca i1
  store i1 true, i1* %303
  %304 = load %nyx_string*, %nyx_string** %258
  %305 = load %nyx_string*, %nyx_string** %218
  %306 = call i1 @nyx_string_starts_with(%nyx_string* %304, %nyx_string* %305)
  br i1 %306, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %307 = load %nyx_string*, %nyx_string** %258
  %308 = load %nyx_string*, %nyx_string** %221
  %309 = call i1 @nyx_string_starts_with(%nyx_string* %307, %nyx_string* %308)
  store i1 %309, i1* %303
  br label %sc_or_end75
sc_or_end75:
  %310 = load i1, i1* %303
  br i1 %310, label %then76, label %else77
then76:
  %311 = load %nyx_string*, %nyx_string** %258
  %312 = alloca %nyx_string*
  store %nyx_string* %311, %nyx_string** %312
  %313 = load %nyx_string*, %nyx_string** %312
  %314 = load %nyx_string*, %nyx_string** %224
  %315 = call i1 @nyx_string_contains(%nyx_string* %313, %nyx_string* %314)
  br i1 %315, label %then79, label %else80
then79:
  %316 = load %nyx_string*, %nyx_string** %312
  %317 = load %nyx_string*, %nyx_string** %312
  %318 = load %nyx_string*, %nyx_string** %224
  %319 = call i64 @nyx_string_index_of(%nyx_string* %317, %nyx_string* %318)
  %320 = call %nyx_string* @nyx_string_substring(%nyx_string* %316, i64 0, i64 %319)
  store %nyx_string* %320, %nyx_string** %312
  br label %merge81
else80:
  br label %merge81
merge81:
  %321 = load { i64, i8* }*, { i64, i8* }** %193
  %322 = load %nyx_string*, %nyx_string** %227
  %323 = load %nyx_string*, %nyx_string** %312
  %324 = call %nyx_string* @nyx_string_trim(%nyx_string* %323)
  %325 = call %nyx_string* @nyx_string_concat(%nyx_string* %322, %nyx_string* %324)
  %326 = load %nyx_string*, %nyx_string** %212
  %327 = call %nyx_string* @nyx_string_concat(%nyx_string* %325, %nyx_string* %326)
  %328 = load %nyx_string*, %nyx_string** %230
  %329 = load %nyx_string*, %nyx_string** %312
  %330 = call %nyx_string* @nyx_string_trim(%nyx_string* %329)
  %331 = call %nyx_string* @nyx_string_concat(%nyx_string* %328, %nyx_string* %330)
  %332 = load %nyx_string*, %nyx_string** %212
  %333 = call %nyx_string* @nyx_string_concat(%nyx_string* %331, %nyx_string* %332)
  %334 = call %nyx_string* @nyx_msg(%nyx_string* %327, %nyx_string* %333)
  %335 = ptrtoint %nyx_string* %334 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %321, i64 %335, i64 2)
  br label %merge78
else77:
  br label %merge78
merge78:
  %336 = load %nyx_string*, %nyx_string** %197
  %337 = alloca %nyx_string*
  store %nyx_string* %336, %nyx_string** %337
  %338 = load %nyx_string*, %nyx_string** %258
  %339 = load %nyx_string*, %nyx_string** %233
  %340 = call i1 @nyx_string_starts_with(%nyx_string* %338, %nyx_string* %339)
  br i1 %340, label %then82, label %else83
then82:
  %341 = load %nyx_string*, %nyx_string** %233
  store %nyx_string* %341, %nyx_string** %337
  br label %merge84
else83:
  br label %merge84
merge84:
  %342 = load %nyx_string*, %nyx_string** %258
  %343 = load %nyx_string*, %nyx_string** %236
  %344 = call i1 @nyx_string_starts_with(%nyx_string* %342, %nyx_string* %343)
  br i1 %344, label %then85, label %else86
then85:
  %345 = load %nyx_string*, %nyx_string** %236
  store %nyx_string* %345, %nyx_string** %337
  br label %merge87
else86:
  br label %merge87
merge87:
  %346 = load %nyx_string*, %nyx_string** %258
  %347 = load %nyx_string*, %nyx_string** %239
  %348 = call i1 @nyx_string_starts_with(%nyx_string* %346, %nyx_string* %347)
  br i1 %348, label %then88, label %else89
then88:
  %349 = load %nyx_string*, %nyx_string** %239
  store %nyx_string* %349, %nyx_string** %337
  br label %merge90
else89:
  br label %merge90
merge90:
  %350 = load %nyx_string*, %nyx_string** %337
  %351 = load %nyx_string*, %nyx_string** %197
  %352 = call i1 @nyx_string_equals(%nyx_string* %350, %nyx_string* %351)
  %353 = xor i1 %352, true
  br i1 %353, label %then91, label %else92
then91:
  %354 = load { i64, i8* }*, { i64, i8* }** %193
  %355 = load %nyx_string*, %nyx_string** %242
  %356 = load %nyx_string*, %nyx_string** %258
  %357 = load %nyx_string*, %nyx_string** %337
  %358 = call %nyx_string* @nombre_tras(%nyx_string* %356, %nyx_string* %357)
  %359 = call %nyx_string* @nyx_string_concat(%nyx_string* %355, %nyx_string* %358)
  %360 = load %nyx_string*, %nyx_string** %212
  %361 = call %nyx_string* @nyx_string_concat(%nyx_string* %359, %nyx_string* %360)
  %362 = load %nyx_string*, %nyx_string** %245
  %363 = load %nyx_string*, %nyx_string** %258
  %364 = load %nyx_string*, %nyx_string** %337
  %365 = call %nyx_string* @nombre_tras(%nyx_string* %363, %nyx_string* %364)
  %366 = call %nyx_string* @nyx_string_concat(%nyx_string* %362, %nyx_string* %365)
  %367 = load %nyx_string*, %nyx_string** %212
  %368 = call %nyx_string* @nyx_string_concat(%nyx_string* %366, %nyx_string* %367)
  %369 = call %nyx_string* @nyx_msg(%nyx_string* %361, %nyx_string* %368)
  %370 = ptrtoint %nyx_string* %369 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %354, i64 %370, i64 2)
  br label %merge93
else92:
  br label %merge93
merge93:
  %371 = load i64, i64* %194
  %372 = add i64 %371, 1
  store i64 %372, i64* %194
  br label %while_cond59
while_end61:
  %373 = load { i64, i8* }*, { i64, i8* }** %193
  %374 = call i64 @nyx_array_length({ i64, i8* }* %373)
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %then94, label %else95
then94:
  %376 = getelementptr [1 x i8], [1 x i8]* @.str34, i32 0, i32 0
  %377 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %376, i64 0)
  ret %nyx_string* %377
else95:
  br label %merge96
merge96:
  %378 = load { i64, i8* }*, { i64, i8* }** %193
  %379 = call i64 @nyx_array_get_checked({ i64, i8* }* %378, i64 0, i64 2)
  %380 = inttoptr i64 %379 to %nyx_string*
  %381 = alloca %nyx_string*
  store %nyx_string* %380, %nyx_string** %381
  %382 = load { i64, i8* }*, { i64, i8* }** %193
  %383 = call i64 @nyx_array_length({ i64, i8* }* %382)
  %384 = icmp sgt i64 %383, 1
  br i1 %384, label %then97, label %else98
then97:
  %385 = load { i64, i8* }*, { i64, i8* }** %193
  %386 = call i64 @nyx_array_get_checked({ i64, i8* }* %385, i64 1, i64 2)
  %387 = inttoptr i64 %386 to %nyx_string*
  %388 = alloca %nyx_string*
  store %nyx_string* %387, %nyx_string** %388
  %389 = load %nyx_string*, %nyx_string** %381
  %390 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %391 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %390, i64 3)
  %392 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %392, i64 5)
  %394 = call %nyx_string* @nyx_msg(%nyx_string* %391, %nyx_string* %393)
  %395 = call %nyx_string* @nyx_string_concat(%nyx_string* %389, %nyx_string* %394)
  %396 = load %nyx_string*, %nyx_string** %388
  %397 = call %nyx_string* @nyx_string_concat(%nyx_string* %395, %nyx_string* %396)
  store %nyx_string* %397, %nyx_string** %381
  br label %merge99
else98:
  br label %merge99
merge99:
  %398 = load { i64, i8* }*, { i64, i8* }** %193
  %399 = call i64 @nyx_array_length({ i64, i8* }* %398)
  %400 = icmp sgt i64 %399, 2
  br i1 %400, label %then100, label %else101
then100:
  %401 = load %nyx_string*, %nyx_string** %381
  %402 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %402, i64 3)
  %404 = call %nyx_string* @nyx_string_concat(%nyx_string* %401, %nyx_string* %403)
  %405 = load { i64, i8* }*, { i64, i8* }** %193
  %406 = call i64 @nyx_array_length({ i64, i8* }* %405)
  %407 = sub i64 %406, 2
  %408 = call %nyx_string* @nyx_string_from_int(i64 %407)
  %409 = call %nyx_string* @nyx_string_concat(%nyx_string* %404, %nyx_string* %408)
  %410 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %410, i64 1)
  %412 = call %nyx_string* @nyx_string_concat(%nyx_string* %409, %nyx_string* %411)
  store %nyx_string* %412, %nyx_string** %381
  br label %merge102
else101:
  br label %merge102
merge102:
  %413 = load %nyx_string*, %nyx_string** %381
  ret %nyx_string* %413
}

define internal i1 @modulo_separable(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %414 = load %nyx_string*, %nyx_string** %path.ptr
  %415 = getelementptr [1 x i8], [1 x i8]* @.str39, i32 0, i32 0
  %416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %415, i64 0)
  %417 = call i1 @nyx_string_equals(%nyx_string* %414, %nyx_string* %416)
  br i1 %417, label %then103, label %else104
then103:
  ret i1 1
else104:
  br label %merge105
merge105:
  %418 = load %nyx_string*, %nyx_string** %path.ptr
  %419 = call %nyx_string* @resolve_module_path(%nyx_string* %418)
  %420 = alloca %nyx_string*
  store %nyx_string* %419, %nyx_string** %420
  %421 = load %nyx_string*, %nyx_string** %420
  %422 = getelementptr [1 x i8], [1 x i8]* @.str40, i32 0, i32 0
  %423 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %422, i64 0)
  %424 = call i1 @nyx_string_equals(%nyx_string* %421, %nyx_string* %423)
  br i1 %424, label %then106, label %else107
then106:
  ret i1 1
else107:
  br label %merge108
merge108:
  %425 = load %nyx_string*, %nyx_string** %420
  %426 = call i8* @nyx_string_to_cstr(%nyx_string* %425)
  %427 = call %nyx_string* @nyx_read_file(i8* %426)
  %428 = call %nyx_string* @razon_no_separable(%nyx_string* %427)
  %429 = getelementptr [1 x i8], [1 x i8]* @.str41, i32 0, i32 0
  %430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %429, i64 0)
  %431 = call i1 @nyx_string_equals(%nyx_string* %428, %nyx_string* %430)
  ret i1 %431
}

define internal i64 @lib_decl_registrar(
%nyx_string* %line.param, %nyx_string* %path.param, i8* %imported.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %imported.ptr = alloca i8*
  store i8* %imported.param, i8** %imported.ptr
  %432 = load %nyx_string*, %nyx_string** %line.ptr
  %433 = call i1 @import_es_lib(%nyx_string* %432)
  %434 = xor i1 %433, true
  br i1 %434, label %then109, label %else110
then109:
  ret i64 0
else110:
  br label %merge111
merge111:
  %435 = load %nyx_string*, %nyx_string** %path.ptr
  %436 = call i1 @modulo_separable(%nyx_string* %435)
  %437 = xor i1 %436, true
  br i1 %437, label %then112, label %else113
then112:
  ret i64 0
else113:
  br label %merge114
merge114:
  %438 = load i8*, i8** %imported.ptr
  %439 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %439, i64 8)
  %441 = load %nyx_string*, %nyx_string** %path.ptr
  %442 = call %nyx_string* @nyx_string_concat(%nyx_string* %440, %nyx_string* %441)
  %443 = call i8* @nyx_string_to_cstr(%nyx_string* %442)
  call void @nyx_map_insert_int(i8* %438, i8* %443, i64 1)
  ret i64 0
}

define internal i64 @aviso_no_separable(
%nyx_string* %line.param, %nyx_string* %path.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %444 = load %nyx_string*, %nyx_string** %line.ptr
  %445 = call i1 @import_es_lib(%nyx_string* %444)
  %446 = xor i1 %445, true
  br i1 %446, label %then115, label %else116
then115:
  ret i64 0
else116:
  br label %merge117
merge117:
  %447 = load %nyx_string*, %nyx_string** %path.ptr
  %448 = call %nyx_string* @resolve_module_path(%nyx_string* %447)
  %449 = alloca %nyx_string*
  store %nyx_string* %448, %nyx_string** %449
  %450 = load %nyx_string*, %nyx_string** %449
  %451 = getelementptr [1 x i8], [1 x i8]* @.str43, i32 0, i32 0
  %452 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %451, i64 0)
  %453 = call i1 @nyx_string_equals(%nyx_string* %450, %nyx_string* %452)
  br i1 %453, label %then118, label %else119
then118:
  ret i64 0
else119:
  br label %merge120
merge120:
  %454 = load %nyx_string*, %nyx_string** %449
  %455 = call i8* @nyx_string_to_cstr(%nyx_string* %454)
  %456 = call %nyx_string* @nyx_read_file(i8* %455)
  %457 = call %nyx_string* @razon_no_separable(%nyx_string* %456)
  %458 = alloca %nyx_string*
  store %nyx_string* %457, %nyx_string** %458
  %459 = load %nyx_string*, %nyx_string** %458
  %460 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %461 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %460, i64 0)
  %462 = call i1 @nyx_string_equals(%nyx_string* %459, %nyx_string* %461)
  br i1 %462, label %then121, label %else122
then121:
  ret i64 0
else122:
  br label %merge123
merge123:
  %463 = getelementptr [9 x i8], [9 x i8]* @.str45, i32 0, i32 0
  %464 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %463, i64 8)
  %465 = call i8* @nyx_string_to_cstr(%nyx_string* %464)
  %466 = call %nyx_string* @nyx_getenv(i8* %465)
  %467 = getelementptr [5 x i8], [5 x i8]* @.str46, i32 0, i32 0
  %468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %467, i64 4)
  %469 = call i1 @nyx_string_equals(%nyx_string* %466, %nyx_string* %468)
  br i1 %469, label %then124, label %else125
then124:
  %470 = getelementptr [9 x i8], [9 x i8]* @.str47, i32 0, i32 0
  %471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %470, i64 8)
  %472 = load %nyx_string*, %nyx_string** %path.ptr
  %473 = call %nyx_string* @nyx_string_concat(%nyx_string* %471, %nyx_string* %472)
  %474 = getelementptr [41 x i8], [41 x i8]* @.str48, i32 0, i32 0
  %475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %474, i64 40)
  %476 = call %nyx_string* @nyx_string_concat(%nyx_string* %473, %nyx_string* %475)
  %477 = load %nyx_string*, %nyx_string** %458
  %478 = call %nyx_string* @nyx_string_concat(%nyx_string* %476, %nyx_string* %477)
  %479 = getelementptr [20 x i8], [20 x i8]* @.str49, i32 0, i32 0
  %480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %479, i64 19)
  %481 = call %nyx_string* @nyx_string_concat(%nyx_string* %478, %nyx_string* %480)
  %482 = alloca %nyx_string*
  store %nyx_string* %481, %nyx_string** %482
  %483 = getelementptr [69 x i8], [69 x i8]* @.str50, i32 0, i32 0
  %484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %483, i64 68)
  %485 = load %nyx_string*, %nyx_string** %482
  %486 = call %nyx_string* @nyx_json_escape(%nyx_string* %485)
  %487 = call %nyx_string* @nyx_string_concat(%nyx_string* %484, %nyx_string* %486)
  %488 = getelementptr [3 x i8], [3 x i8]* @.str51, i32 0, i32 0
  %489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %488, i64 2)
  %490 = call %nyx_string* @nyx_string_concat(%nyx_string* %487, %nyx_string* %489)
  %491 = call i8* @nyx_string_to_cstr(%nyx_string* %490)
  call void @nyx_print_string(i8* %491)
  ret i64 0
else125:
  br label %merge126
merge126:
  %492 = getelementptr [36 x i8], [36 x i8]* @.str52, i32 0, i32 0
  %493 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %492, i64 35)
  %494 = load %nyx_string*, %nyx_string** %path.ptr
  %495 = call %nyx_string* @nyx_string_concat(%nyx_string* %493, %nyx_string* %494)
  %496 = getelementptr [37 x i8], [37 x i8]* @.str53, i32 0, i32 0
  %497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %496, i64 36)
  %498 = call %nyx_string* @nyx_string_concat(%nyx_string* %495, %nyx_string* %497)
  %499 = load %nyx_string*, %nyx_string** %458
  %500 = call %nyx_string* @nyx_string_concat(%nyx_string* %498, %nyx_string* %499)
  %501 = getelementptr [304 x i8], [304 x i8]* @.str54, i32 0, i32 0
  %502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %501, i64 303)
  %503 = call %nyx_string* @nyx_string_concat(%nyx_string* %500, %nyx_string* %502)
  %504 = getelementptr [34 x i8], [34 x i8]* @.str55, i32 0, i32 0
  %505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %504, i64 33)
  %506 = load %nyx_string*, %nyx_string** %path.ptr
  %507 = call %nyx_string* @nyx_string_concat(%nyx_string* %505, %nyx_string* %506)
  %508 = getelementptr [45 x i8], [45 x i8]* @.str56, i32 0, i32 0
  %509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %508, i64 44)
  %510 = call %nyx_string* @nyx_string_concat(%nyx_string* %507, %nyx_string* %509)
  %511 = load %nyx_string*, %nyx_string** %458
  %512 = call %nyx_string* @nyx_string_concat(%nyx_string* %510, %nyx_string* %511)
  %513 = getelementptr [289 x i8], [289 x i8]* @.str57, i32 0, i32 0
  %514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %513, i64 288)
  %515 = call %nyx_string* @nyx_string_concat(%nyx_string* %512, %nyx_string* %514)
  %516 = call %nyx_string* @nyx_msg(%nyx_string* %503, %nyx_string* %515)
  %517 = call i8* @nyx_string_to_cstr(%nyx_string* %516)
  call void @nyx_print_string(i8* %517)
  ret i64 0
}

define internal i1 @is_module_import(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %518 = load %nyx_string*, %nyx_string** %line.ptr
  %519 = call %nyx_string* @nyx_string_trim(%nyx_string* %518)
  %520 = alloca %nyx_string*
  store %nyx_string* %519, %nyx_string** %520
  %521 = load %nyx_string*, %nyx_string** %520
  %522 = getelementptr [8 x i8], [8 x i8]* @.str58, i32 0, i32 0
  %523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %522, i64 7)
  %524 = call i1 @nyx_string_starts_with(%nyx_string* %521, %nyx_string* %523)
  %525 = xor i1 %524, true
  br i1 %525, label %then127, label %else128
then127:
  ret i1 0
else128:
  br label %merge129
merge129:
  %526 = load %nyx_string*, %nyx_string** %line.ptr
  %527 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %527, i64 1)
  %529 = call i1 @nyx_string_contains(%nyx_string* %526, %nyx_string* %528)
  br i1 %529, label %then130, label %else131
then130:
  ret i1 0
else131:
  br label %merge132
merge132:
  %530 = load %nyx_string*, %nyx_string** %line.ptr
  %531 = getelementptr [5 x i8], [5 x i8]* @.str60, i32 0, i32 0
  %532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %531, i64 4)
  %533 = call i1 @nyx_string_contains(%nyx_string* %530, %nyx_string* %532)
  br i1 %533, label %then133, label %else134
then133:
  ret i1 0
else134:
  br label %merge135
merge135:
  %534 = load %nyx_string*, %nyx_string** %line.ptr
  %535 = getelementptr [2 x i8], [2 x i8]* @.str61, i32 0, i32 0
  %536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %535, i64 1)
  %537 = call i1 @nyx_string_contains(%nyx_string* %534, %nyx_string* %536)
  %538 = xor i1 %537, true
  br i1 %538, label %then136, label %else137
then136:
  ret i1 0
else137:
  br label %merge138
merge138:
  %539 = alloca i1
  store i1 false, i1* %539
  %540 = load %nyx_string*, %nyx_string** %line.ptr
  %541 = getelementptr [10 x i8], [10 x i8]* @.str62, i32 0, i32 0
  %542 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %541, i64 9)
  %543 = call i1 @nyx_string_contains(%nyx_string* %540, %nyx_string* %542)
  br i1 %543, label %sc_and_rhs139, label %sc_and_end140
sc_and_rhs139:
  %544 = getelementptr [20 x i8], [20 x i8]* @.str63, i32 0, i32 0
  %545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %544, i64 19)
  %546 = call i8* @nyx_string_to_cstr(%nyx_string* %545)
  %547 = call %nyx_string* @nyx_getenv(i8* %546)
  %548 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %549 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %548, i64 1)
  %550 = call i1 @nyx_string_equals(%nyx_string* %547, %nyx_string* %549)
  %551 = xor i1 %550, true
  store i1 %551, i1* %539
  br label %sc_and_end140
sc_and_end140:
  %552 = load i1, i1* %539
  br i1 %552, label %then141, label %else142
then141:
  ret i1 0
else142:
  br label %merge143
merge143:
  ret i1 1
}

define internal %nyx_string* @base_name_from_path(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %553 = sub i64 0, 1
  %554 = alloca i64
  store i64 %553, i64* %554
  %555 = alloca i64
  store i64 0, i64* %555
  %556 = call i8* @llvm.stacksave()
  br label %while_cond144
while_cond144:
  %557 = load i64, i64* %555
  %558 = load %nyx_string*, %nyx_string** %path.ptr
  %559 = call i64 @nyx_string_byte_length(%nyx_string* %558)
  %560 = icmp slt i64 %557, %559
  br i1 %560, label %while_body145, label %while_end146
while_body145:
  call void @llvm.stackrestore(i8* %556)
  %561 = load %nyx_string*, %nyx_string** %path.ptr
  %562 = load i64, i64* %555
  %563 = call i8 @nyx_string_char_at(%nyx_string* %561, i64 %562)
  %564 = zext i8 %563 to i64
  %565 = trunc i64 %564 to i8
  %566 = alloca i8
  store i8 %565, i8* %566
  %567 = load i8, i8* %566
  %568 = getelementptr [1 x i8], [1 x i8]* @.str65, i32 0, i32 0
  %569 = load i8, i8* %568
  %570 = zext i8 %569 to i64
  %571 = zext i8 %567 to i64
  %572 = icmp eq i64 %571, %570
  br i1 %572, label %then147, label %else148
then147:
  %573 = load i64, i64* %555
  store i64 %573, i64* %554
  br label %merge149
else148:
  br label %merge149
merge149:
  %574 = load i64, i64* %555
  %575 = add i64 %574, 1
  store i64 %575, i64* %555
  br label %while_cond144
while_end146:
  %576 = load i64, i64* %554
  %577 = icmp sge i64 %576, 0
  br i1 %577, label %then150, label %else151
then150:
  %578 = load %nyx_string*, %nyx_string** %path.ptr
  %579 = load i64, i64* %554
  %580 = add i64 %579, 1
  %581 = load %nyx_string*, %nyx_string** %path.ptr
  %582 = call i64 @nyx_string_byte_length(%nyx_string* %581)
  %583 = call %nyx_string* @nyx_string_substring(%nyx_string* %578, i64 %580, i64 %582)
  ret %nyx_string* %583
else151:
  br label %merge152
merge152:
  %584 = load %nyx_string*, %nyx_string** %path.ptr
  ret %nyx_string* %584
}

define internal %nyx_string* @extract_module_alias(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %585 = load %nyx_string*, %nyx_string** %line.ptr
  %586 = getelementptr [5 x i8], [5 x i8]* @.str66, i32 0, i32 0
  %587 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %586, i64 4)
  %588 = call i1 @nyx_string_contains(%nyx_string* %585, %nyx_string* %587)
  br i1 %588, label %then153, label %else154
then153:
  %589 = alloca i64
  store i64 0, i64* %589
  %590 = getelementptr [1 x i8], [1 x i8]* @.str67, i32 0, i32 0
  %591 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %590, i64 0)
  %592 = alloca %nyx_string*
  store %nyx_string* %591, %nyx_string** %592
  %593 = call i8* @llvm.stacksave()
  br label %while_cond156
while_cond156:
  %594 = load i64, i64* %589
  %595 = load %nyx_string*, %nyx_string** %line.ptr
  %596 = call i64 @nyx_string_byte_length(%nyx_string* %595)
  %597 = sub i64 %596, 4
  %598 = icmp slt i64 %594, %597
  br i1 %598, label %while_body157, label %while_end158
while_body157:
  call void @llvm.stackrestore(i8* %593)
  %599 = load %nyx_string*, %nyx_string** %line.ptr
  %600 = load i64, i64* %589
  %601 = call i8 @nyx_string_char_at(%nyx_string* %599, i64 %600)
  %602 = zext i8 %601 to i64
  %603 = trunc i64 %602 to i8
  %604 = alloca i8
  store i8 %603, i8* %604
  %605 = load %nyx_string*, %nyx_string** %line.ptr
  %606 = load i64, i64* %589
  %607 = add i64 %606, 1
  %608 = call i8 @nyx_string_char_at(%nyx_string* %605, i64 %607)
  %609 = zext i8 %608 to i64
  %610 = trunc i64 %609 to i8
  %611 = alloca i8
  store i8 %610, i8* %611
  %612 = load %nyx_string*, %nyx_string** %line.ptr
  %613 = load i64, i64* %589
  %614 = add i64 %613, 2
  %615 = call i8 @nyx_string_char_at(%nyx_string* %612, i64 %614)
  %616 = zext i8 %615 to i64
  %617 = trunc i64 %616 to i8
  %618 = alloca i8
  store i8 %617, i8* %618
  %619 = load %nyx_string*, %nyx_string** %line.ptr
  %620 = load i64, i64* %589
  %621 = add i64 %620, 3
  %622 = call i8 @nyx_string_char_at(%nyx_string* %619, i64 %621)
  %623 = zext i8 %622 to i64
  %624 = trunc i64 %623 to i8
  %625 = alloca i8
  store i8 %624, i8* %625
  %626 = alloca i1
  store i1 false, i1* %626
  %627 = alloca i1
  store i1 false, i1* %627
  %628 = alloca i1
  store i1 false, i1* %628
  %629 = load i8, i8* %604
  %630 = getelementptr [1 x i8], [1 x i8]* @.str68, i32 0, i32 0
  %631 = load i8, i8* %630
  %632 = zext i8 %631 to i64
  %633 = zext i8 %629 to i64
  %634 = icmp eq i64 %633, %632
  br i1 %634, label %sc_and_rhs159, label %sc_and_end160
sc_and_rhs159:
  %635 = load i8, i8* %611
  %636 = getelementptr [1 x i8], [1 x i8]* @.str69, i32 0, i32 0
  %637 = load i8, i8* %636
  %638 = zext i8 %637 to i64
  %639 = zext i8 %635 to i64
  %640 = icmp eq i64 %639, %638
  store i1 %640, i1* %628
  br label %sc_and_end160
sc_and_end160:
  %641 = load i1, i1* %628
  br i1 %641, label %sc_and_rhs161, label %sc_and_end162
sc_and_rhs161:
  %642 = load i8, i8* %618
  %643 = getelementptr [1 x i8], [1 x i8]* @.str70, i32 0, i32 0
  %644 = load i8, i8* %643
  %645 = zext i8 %644 to i64
  %646 = zext i8 %642 to i64
  %647 = icmp eq i64 %646, %645
  store i1 %647, i1* %627
  br label %sc_and_end162
sc_and_end162:
  %648 = load i1, i1* %627
  br i1 %648, label %sc_and_rhs163, label %sc_and_end164
sc_and_rhs163:
  %649 = load i8, i8* %625
  %650 = getelementptr [1 x i8], [1 x i8]* @.str71, i32 0, i32 0
  %651 = load i8, i8* %650
  %652 = zext i8 %651 to i64
  %653 = zext i8 %649 to i64
  %654 = icmp eq i64 %653, %652
  store i1 %654, i1* %626
  br label %sc_and_end164
sc_and_end164:
  %655 = load i1, i1* %626
  br i1 %655, label %then165, label %else166
then165:
  %656 = load %nyx_string*, %nyx_string** %592
  %657 = alloca %nyx_string*
  store %nyx_string* %656, %nyx_string** %657
  %658 = load i64, i64* %589
  %659 = add i64 %658, 4
  %660 = alloca i64
  store i64 %659, i64* %660
  %661 = call i8* @llvm.stacksave()
  br label %while_cond168
while_cond168:
  %662 = load i64, i64* %660
  %663 = load %nyx_string*, %nyx_string** %line.ptr
  %664 = call i64 @nyx_string_byte_length(%nyx_string* %663)
  %665 = icmp slt i64 %662, %664
  br i1 %665, label %while_body169, label %while_end170
while_body169:
  call void @llvm.stackrestore(i8* %661)
  %666 = load %nyx_string*, %nyx_string** %line.ptr
  %667 = load i64, i64* %660
  %668 = call i8 @nyx_string_char_at(%nyx_string* %666, i64 %667)
  %669 = zext i8 %668 to i64
  %670 = trunc i64 %669 to i8
  %671 = alloca i8
  store i8 %670, i8* %671
  %672 = alloca i1
  store i1 true, i1* %672
  %673 = load i8, i8* %671
  %674 = getelementptr [1 x i8], [1 x i8]* @.str72, i32 0, i32 0
  %675 = load i8, i8* %674
  %676 = zext i8 %675 to i64
  %677 = zext i8 %673 to i64
  %678 = icmp eq i64 %677, %676
  br i1 %678, label %sc_or_end172, label %sc_or_rhs171
sc_or_rhs171:
  %679 = load i8, i8* %671
  %680 = getelementptr [1 x i8], [1 x i8]* @.str73, i32 0, i32 0
  %681 = load i8, i8* %680
  %682 = zext i8 %681 to i64
  %683 = zext i8 %679 to i64
  %684 = icmp eq i64 %683, %682
  store i1 %684, i1* %672
  br label %sc_or_end172
sc_or_end172:
  %685 = load i1, i1* %672
  br i1 %685, label %then173, label %else174
then173:
  %686 = load %nyx_string*, %nyx_string** %line.ptr
  %687 = call i64 @nyx_string_byte_length(%nyx_string* %686)
  store i64 %687, i64* %660
  br label %merge175
else174:
  %688 = load %nyx_string*, %nyx_string** %657
  %689 = load i8, i8* %671
  %690 = call %nyx_string* @nyx_string_from_char(i8 %689)
  %691 = call %nyx_string* @nyx_string_concat(%nyx_string* %688, %nyx_string* %690)
  store %nyx_string* %691, %nyx_string** %657
  %692 = load i64, i64* %660
  %693 = add i64 %692, 1
  store i64 %693, i64* %660
  br label %merge175
merge175:
  br label %while_cond168
while_end170:
  %694 = load %nyx_string*, %nyx_string** %657
  %695 = load %nyx_string*, %nyx_string** %592
  %696 = call i1 @nyx_string_equals(%nyx_string* %694, %nyx_string* %695)
  %697 = xor i1 %696, true
  br i1 %697, label %then176, label %else177
then176:
  %698 = load %nyx_string*, %nyx_string** %657
  ret %nyx_string* %698
else177:
  br label %merge178
merge178:
  br label %merge167
else166:
  br label %merge167
merge167:
  %699 = load i64, i64* %589
  %700 = add i64 %699, 1
  store i64 %700, i64* %589
  br label %while_cond156
while_end158:
  br label %merge155
else154:
  br label %merge155
merge155:
  %701 = load %nyx_string*, %nyx_string** %line.ptr
  %702 = call %nyx_string* @find_import_path(%nyx_string* %701)
  %703 = alloca %nyx_string*
  store %nyx_string* %702, %nyx_string** %703
  %704 = load %nyx_string*, %nyx_string** %703
  %705 = call %nyx_string* @base_name_from_path(%nyx_string* %704)
  ret %nyx_string* %705
}

define internal { i64, i8* }* @extract_exports(
%nyx_string* %source.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %706 = call { i64, i8* }* @nyx_array_new_ptr()
  %707 = alloca { i64, i8* }*
  store { i64, i8* }* %706, { i64, i8* }** %707
  %708 = load %nyx_string*, %nyx_string** %source.ptr
  %709 = getelementptr [2 x i8], [2 x i8]* @.str74, i32 0, i32 0
  %710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %709, i64 1)
  %711 = call { i64, i8* }* @nyx_string_split(%nyx_string* %708, %nyx_string* %710)
  %712 = alloca { i64, i8* }*
  store { i64, i8* }* %711, { i64, i8* }** %712
  %713 = alloca i64
  store i64 0, i64* %713
  %714 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %714, i64 4)
  %716 = alloca %nyx_string*
  store %nyx_string* %715, %nyx_string** %716
  %717 = getelementptr [8 x i8], [8 x i8]* @.str76, i32 0, i32 0
  %718 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %717, i64 7)
  %719 = alloca %nyx_string*
  store %nyx_string* %718, %nyx_string** %719
  %720 = getelementptr [8 x i8], [8 x i8]* @.str77, i32 0, i32 0
  %721 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %720, i64 7)
  %722 = alloca %nyx_string*
  store %nyx_string* %721, %nyx_string** %722
  %723 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %723, i64 0)
  %725 = alloca %nyx_string*
  store %nyx_string* %724, %nyx_string** %725
  %726 = getelementptr [11 x i8], [11 x i8]* @.str79, i32 0, i32 0
  %727 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %726, i64 10)
  %728 = alloca %nyx_string*
  store %nyx_string* %727, %nyx_string** %728
  %729 = getelementptr [14 x i8], [14 x i8]* @.str80, i32 0, i32 0
  %730 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %729, i64 13)
  %731 = alloca %nyx_string*
  store %nyx_string* %730, %nyx_string** %731
  %732 = getelementptr [17 x i8], [17 x i8]* @.str81, i32 0, i32 0
  %733 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %732, i64 16)
  %734 = alloca %nyx_string*
  store %nyx_string* %733, %nyx_string** %734
  %735 = getelementptr [12 x i8], [12 x i8]* @.str82, i32 0, i32 0
  %736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %735, i64 11)
  %737 = alloca %nyx_string*
  store %nyx_string* %736, %nyx_string** %737
  %738 = getelementptr [15 x i8], [15 x i8]* @.str83, i32 0, i32 0
  %739 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %738, i64 14)
  %740 = alloca %nyx_string*
  store %nyx_string* %739, %nyx_string** %740
  %741 = getelementptr [10 x i8], [10 x i8]* @.str84, i32 0, i32 0
  %742 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %741, i64 9)
  %743 = alloca %nyx_string*
  store %nyx_string* %742, %nyx_string** %743
  %744 = getelementptr [13 x i8], [13 x i8]* @.str85, i32 0, i32 0
  %745 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %744, i64 12)
  %746 = alloca %nyx_string*
  store %nyx_string* %745, %nyx_string** %746
  %747 = call i8* @llvm.stacksave()
  br label %while_cond179
while_cond179:
  %748 = load i64, i64* %713
  %749 = load { i64, i8* }*, { i64, i8* }** %712
  %750 = call i64 @nyx_array_length({ i64, i8* }* %749)
  %751 = icmp slt i64 %748, %750
  br i1 %751, label %while_body180, label %while_end181
while_body180:
  call void @llvm.stackrestore(i8* %747)
  %752 = load { i64, i8* }*, { i64, i8* }** %712
  %753 = load i64, i64* %713
  %754 = call i64 @nyx_array_get_checked({ i64, i8* }* %752, i64 %753, i64 2)
  %755 = inttoptr i64 %754 to %nyx_string*
  %756 = alloca %nyx_string*
  store %nyx_string* %755, %nyx_string** %756
  %757 = alloca i1
  store i1 false, i1* %757
  %758 = load %nyx_string*, %nyx_string** %756
  %759 = load %nyx_string*, %nyx_string** %716
  %760 = call i1 @nyx_string_contains(%nyx_string* %758, %nyx_string* %759)
  %761 = xor i1 %760, true
  br i1 %761, label %sc_and_rhs182, label %sc_and_end183
sc_and_rhs182:
  %762 = load %nyx_string*, %nyx_string** %756
  %763 = load %nyx_string*, %nyx_string** %719
  %764 = call i1 @nyx_string_contains(%nyx_string* %762, %nyx_string* %763)
  %765 = xor i1 %764, true
  store i1 %765, i1* %757
  br label %sc_and_end183
sc_and_end183:
  %766 = load i1, i1* %757
  br i1 %766, label %then184, label %else185
then184:
  %767 = load i64, i64* %713
  %768 = add i64 %767, 1
  store i64 %768, i64* %713
  br label %while_cond179
else185:
  br label %merge186
merge186:
  %769 = load %nyx_string*, %nyx_string** %756
  %770 = call %nyx_string* @nyx_string_trim(%nyx_string* %769)
  %771 = alloca %nyx_string*
  store %nyx_string* %770, %nyx_string** %771
  %772 = load %nyx_string*, %nyx_string** %771
  %773 = load %nyx_string*, %nyx_string** %722
  %774 = call i1 @nyx_string_starts_with(%nyx_string* %772, %nyx_string* %773)
  br i1 %774, label %then187, label %else188
then187:
  %775 = load %nyx_string*, %nyx_string** %771
  %776 = load %nyx_string*, %nyx_string** %771
  %777 = call i64 @nyx_string_byte_length(%nyx_string* %776)
  %778 = call %nyx_string* @nyx_string_substring(%nyx_string* %775, i64 7, i64 %777)
  %779 = alloca %nyx_string*
  store %nyx_string* %778, %nyx_string** %779
  %780 = load %nyx_string*, %nyx_string** %725
  %781 = alloca %nyx_string*
  store %nyx_string* %780, %nyx_string** %781
  %782 = alloca i64
  store i64 0, i64* %782
  %783 = alloca i1
  store i1 0, i1* %783
  %784 = call i8* @llvm.stacksave()
  br label %while_cond190
while_cond190:
  %785 = alloca i1
  store i1 false, i1* %785
  %786 = load i64, i64* %782
  %787 = load %nyx_string*, %nyx_string** %779
  %788 = call i64 @nyx_string_byte_length(%nyx_string* %787)
  %789 = icmp slt i64 %786, %788
  br i1 %789, label %sc_and_rhs193, label %sc_and_end194
sc_and_rhs193:
  %790 = load i1, i1* %783
  %791 = xor i1 %790, true
  store i1 %791, i1* %785
  br label %sc_and_end194
sc_and_end194:
  %792 = load i1, i1* %785
  br i1 %792, label %while_body191, label %while_end192
while_body191:
  call void @llvm.stackrestore(i8* %784)
  %793 = load %nyx_string*, %nyx_string** %779
  %794 = load i64, i64* %782
  %795 = call i8 @nyx_string_char_at(%nyx_string* %793, i64 %794)
  %796 = zext i8 %795 to i64
  %797 = trunc i64 %796 to i8
  %798 = alloca i8
  store i8 %797, i8* %798
  %799 = alloca i1
  store i1 true, i1* %799
  %800 = alloca i1
  store i1 true, i1* %800
  %801 = load i8, i8* %798
  %802 = getelementptr [1 x i8], [1 x i8]* @.str86, i32 0, i32 0
  %803 = load i8, i8* %802
  %804 = zext i8 %803 to i64
  %805 = zext i8 %801 to i64
  %806 = icmp eq i64 %805, %804
  br i1 %806, label %sc_or_end196, label %sc_or_rhs195
sc_or_rhs195:
  %807 = load i8, i8* %798
  %808 = getelementptr [1 x i8], [1 x i8]* @.str87, i32 0, i32 0
  %809 = load i8, i8* %808
  %810 = zext i8 %809 to i64
  %811 = zext i8 %807 to i64
  %812 = icmp eq i64 %811, %810
  store i1 %812, i1* %800
  br label %sc_or_end196
sc_or_end196:
  %813 = load i1, i1* %800
  br i1 %813, label %sc_or_end198, label %sc_or_rhs197
sc_or_rhs197:
  %814 = load i8, i8* %798
  %815 = getelementptr [1 x i8], [1 x i8]* @.str88, i32 0, i32 0
  %816 = load i8, i8* %815
  %817 = zext i8 %816 to i64
  %818 = zext i8 %814 to i64
  %819 = icmp eq i64 %818, %817
  store i1 %819, i1* %799
  br label %sc_or_end198
sc_or_end198:
  %820 = load i1, i1* %799
  br i1 %820, label %then199, label %else200
then199:
  store i1 1, i1* %783
  br label %merge201
else200:
  %821 = load %nyx_string*, %nyx_string** %781
  %822 = load i8, i8* %798
  %823 = call %nyx_string* @nyx_string_from_char(i8 %822)
  %824 = call %nyx_string* @nyx_string_concat(%nyx_string* %821, %nyx_string* %823)
  store %nyx_string* %824, %nyx_string** %781
  %825 = load i64, i64* %782
  %826 = add i64 %825, 1
  store i64 %826, i64* %782
  br label %merge201
merge201:
  br label %while_cond190
while_end192:
  %827 = load %nyx_string*, %nyx_string** %781
  %828 = load %nyx_string*, %nyx_string** %725
  %829 = call i1 @nyx_string_equals(%nyx_string* %827, %nyx_string* %828)
  %830 = xor i1 %829, true
  br i1 %830, label %then202, label %else203
then202:
  %831 = load { i64, i8* }*, { i64, i8* }** %707
  %832 = load %nyx_string*, %nyx_string** %781
  %833 = ptrtoint %nyx_string* %832 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %831, i64 %833, i64 2)
  br label %merge204
else203:
  br label %merge204
merge204:
  br label %merge189
else188:
  br label %merge189
merge189:
  %834 = load %nyx_string*, %nyx_string** %771
  %835 = load %nyx_string*, %nyx_string** %728
  %836 = call i1 @nyx_string_starts_with(%nyx_string* %834, %nyx_string* %835)
  br i1 %836, label %then205, label %else206
then205:
  %837 = load %nyx_string*, %nyx_string** %771
  %838 = load %nyx_string*, %nyx_string** %771
  %839 = call i64 @nyx_string_byte_length(%nyx_string* %838)
  %840 = call %nyx_string* @nyx_string_substring(%nyx_string* %837, i64 10, i64 %839)
  %841 = alloca %nyx_string*
  store %nyx_string* %840, %nyx_string** %841
  %842 = load %nyx_string*, %nyx_string** %725
  %843 = alloca %nyx_string*
  store %nyx_string* %842, %nyx_string** %843
  %844 = alloca i64
  store i64 0, i64* %844
  %845 = alloca i1
  store i1 0, i1* %845
  %846 = call i8* @llvm.stacksave()
  br label %while_cond208
while_cond208:
  %847 = alloca i1
  store i1 false, i1* %847
  %848 = load i64, i64* %844
  %849 = load %nyx_string*, %nyx_string** %841
  %850 = call i64 @nyx_string_byte_length(%nyx_string* %849)
  %851 = icmp slt i64 %848, %850
  br i1 %851, label %sc_and_rhs211, label %sc_and_end212
sc_and_rhs211:
  %852 = load i1, i1* %845
  %853 = xor i1 %852, true
  store i1 %853, i1* %847
  br label %sc_and_end212
sc_and_end212:
  %854 = load i1, i1* %847
  br i1 %854, label %while_body209, label %while_end210
while_body209:
  call void @llvm.stackrestore(i8* %846)
  %855 = load %nyx_string*, %nyx_string** %841
  %856 = load i64, i64* %844
  %857 = call i8 @nyx_string_char_at(%nyx_string* %855, i64 %856)
  %858 = zext i8 %857 to i64
  %859 = trunc i64 %858 to i8
  %860 = alloca i8
  store i8 %859, i8* %860
  %861 = alloca i1
  store i1 true, i1* %861
  %862 = alloca i1
  store i1 true, i1* %862
  %863 = load i8, i8* %860
  %864 = getelementptr [1 x i8], [1 x i8]* @.str89, i32 0, i32 0
  %865 = load i8, i8* %864
  %866 = zext i8 %865 to i64
  %867 = zext i8 %863 to i64
  %868 = icmp eq i64 %867, %866
  br i1 %868, label %sc_or_end214, label %sc_or_rhs213
sc_or_rhs213:
  %869 = load i8, i8* %860
  %870 = getelementptr [1 x i8], [1 x i8]* @.str90, i32 0, i32 0
  %871 = load i8, i8* %870
  %872 = zext i8 %871 to i64
  %873 = zext i8 %869 to i64
  %874 = icmp eq i64 %873, %872
  store i1 %874, i1* %862
  br label %sc_or_end214
sc_or_end214:
  %875 = load i1, i1* %862
  br i1 %875, label %sc_or_end216, label %sc_or_rhs215
sc_or_rhs215:
  %876 = load i8, i8* %860
  %877 = getelementptr [1 x i8], [1 x i8]* @.str91, i32 0, i32 0
  %878 = load i8, i8* %877
  %879 = zext i8 %878 to i64
  %880 = zext i8 %876 to i64
  %881 = icmp eq i64 %880, %879
  store i1 %881, i1* %861
  br label %sc_or_end216
sc_or_end216:
  %882 = load i1, i1* %861
  br i1 %882, label %then217, label %else218
then217:
  store i1 1, i1* %845
  br label %merge219
else218:
  %883 = load %nyx_string*, %nyx_string** %843
  %884 = load i8, i8* %860
  %885 = call %nyx_string* @nyx_string_from_char(i8 %884)
  %886 = call %nyx_string* @nyx_string_concat(%nyx_string* %883, %nyx_string* %885)
  store %nyx_string* %886, %nyx_string** %843
  %887 = load i64, i64* %844
  %888 = add i64 %887, 1
  store i64 %888, i64* %844
  br label %merge219
merge219:
  br label %while_cond208
while_end210:
  %889 = load %nyx_string*, %nyx_string** %843
  %890 = load %nyx_string*, %nyx_string** %725
  %891 = call i1 @nyx_string_equals(%nyx_string* %889, %nyx_string* %890)
  %892 = xor i1 %891, true
  br i1 %892, label %then220, label %else221
then220:
  %893 = load { i64, i8* }*, { i64, i8* }** %707
  %894 = load %nyx_string*, %nyx_string** %843
  %895 = ptrtoint %nyx_string* %894 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %893, i64 %895, i64 2)
  br label %merge222
else221:
  br label %merge222
merge222:
  br label %merge207
else206:
  br label %merge207
merge207:
  %896 = load %nyx_string*, %nyx_string** %771
  %897 = load %nyx_string*, %nyx_string** %731
  %898 = call i1 @nyx_string_starts_with(%nyx_string* %896, %nyx_string* %897)
  br i1 %898, label %then223, label %else224
then223:
  %899 = load %nyx_string*, %nyx_string** %771
  %900 = load %nyx_string*, %nyx_string** %771
  %901 = call i64 @nyx_string_byte_length(%nyx_string* %900)
  %902 = call %nyx_string* @nyx_string_substring(%nyx_string* %899, i64 13, i64 %901)
  %903 = alloca %nyx_string*
  store %nyx_string* %902, %nyx_string** %903
  %904 = load %nyx_string*, %nyx_string** %725
  %905 = alloca %nyx_string*
  store %nyx_string* %904, %nyx_string** %905
  %906 = alloca i64
  store i64 0, i64* %906
  %907 = alloca i1
  store i1 0, i1* %907
  %908 = call i8* @llvm.stacksave()
  br label %while_cond226
while_cond226:
  %909 = alloca i1
  store i1 false, i1* %909
  %910 = load i64, i64* %906
  %911 = load %nyx_string*, %nyx_string** %903
  %912 = call i64 @nyx_string_byte_length(%nyx_string* %911)
  %913 = icmp slt i64 %910, %912
  br i1 %913, label %sc_and_rhs229, label %sc_and_end230
sc_and_rhs229:
  %914 = load i1, i1* %907
  %915 = xor i1 %914, true
  store i1 %915, i1* %909
  br label %sc_and_end230
sc_and_end230:
  %916 = load i1, i1* %909
  br i1 %916, label %while_body227, label %while_end228
while_body227:
  call void @llvm.stackrestore(i8* %908)
  %917 = load %nyx_string*, %nyx_string** %903
  %918 = load i64, i64* %906
  %919 = call i8 @nyx_string_char_at(%nyx_string* %917, i64 %918)
  %920 = zext i8 %919 to i64
  %921 = trunc i64 %920 to i8
  %922 = alloca i8
  store i8 %921, i8* %922
  %923 = alloca i1
  store i1 true, i1* %923
  %924 = alloca i1
  store i1 true, i1* %924
  %925 = load i8, i8* %922
  %926 = getelementptr [1 x i8], [1 x i8]* @.str92, i32 0, i32 0
  %927 = load i8, i8* %926
  %928 = zext i8 %927 to i64
  %929 = zext i8 %925 to i64
  %930 = icmp eq i64 %929, %928
  br i1 %930, label %sc_or_end232, label %sc_or_rhs231
sc_or_rhs231:
  %931 = load i8, i8* %922
  %932 = getelementptr [1 x i8], [1 x i8]* @.str93, i32 0, i32 0
  %933 = load i8, i8* %932
  %934 = zext i8 %933 to i64
  %935 = zext i8 %931 to i64
  %936 = icmp eq i64 %935, %934
  store i1 %936, i1* %924
  br label %sc_or_end232
sc_or_end232:
  %937 = load i1, i1* %924
  br i1 %937, label %sc_or_end234, label %sc_or_rhs233
sc_or_rhs233:
  %938 = load i8, i8* %922
  %939 = getelementptr [1 x i8], [1 x i8]* @.str94, i32 0, i32 0
  %940 = load i8, i8* %939
  %941 = zext i8 %940 to i64
  %942 = zext i8 %938 to i64
  %943 = icmp eq i64 %942, %941
  store i1 %943, i1* %923
  br label %sc_or_end234
sc_or_end234:
  %944 = load i1, i1* %923
  br i1 %944, label %then235, label %else236
then235:
  store i1 1, i1* %907
  br label %merge237
else236:
  %945 = load %nyx_string*, %nyx_string** %905
  %946 = load i8, i8* %922
  %947 = call %nyx_string* @nyx_string_from_char(i8 %946)
  %948 = call %nyx_string* @nyx_string_concat(%nyx_string* %945, %nyx_string* %947)
  store %nyx_string* %948, %nyx_string** %905
  %949 = load i64, i64* %906
  %950 = add i64 %949, 1
  store i64 %950, i64* %906
  br label %merge237
merge237:
  br label %while_cond226
while_end228:
  %951 = load %nyx_string*, %nyx_string** %905
  %952 = load %nyx_string*, %nyx_string** %725
  %953 = call i1 @nyx_string_equals(%nyx_string* %951, %nyx_string* %952)
  %954 = xor i1 %953, true
  br i1 %954, label %then238, label %else239
then238:
  %955 = load { i64, i8* }*, { i64, i8* }** %707
  %956 = load %nyx_string*, %nyx_string** %905
  %957 = ptrtoint %nyx_string* %956 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %955, i64 %957, i64 2)
  br label %merge240
else239:
  br label %merge240
merge240:
  br label %merge225
else224:
  br label %merge225
merge225:
  %958 = load %nyx_string*, %nyx_string** %771
  %959 = load %nyx_string*, %nyx_string** %734
  %960 = call i1 @nyx_string_starts_with(%nyx_string* %958, %nyx_string* %959)
  br i1 %960, label %then241, label %else242
then241:
  %961 = load %nyx_string*, %nyx_string** %771
  %962 = load %nyx_string*, %nyx_string** %771
  %963 = call i64 @nyx_string_byte_length(%nyx_string* %962)
  %964 = call %nyx_string* @nyx_string_substring(%nyx_string* %961, i64 16, i64 %963)
  %965 = alloca %nyx_string*
  store %nyx_string* %964, %nyx_string** %965
  %966 = load %nyx_string*, %nyx_string** %725
  %967 = alloca %nyx_string*
  store %nyx_string* %966, %nyx_string** %967
  %968 = alloca i64
  store i64 0, i64* %968
  %969 = alloca i1
  store i1 0, i1* %969
  %970 = call i8* @llvm.stacksave()
  br label %while_cond244
while_cond244:
  %971 = alloca i1
  store i1 false, i1* %971
  %972 = load i64, i64* %968
  %973 = load %nyx_string*, %nyx_string** %965
  %974 = call i64 @nyx_string_byte_length(%nyx_string* %973)
  %975 = icmp slt i64 %972, %974
  br i1 %975, label %sc_and_rhs247, label %sc_and_end248
sc_and_rhs247:
  %976 = load i1, i1* %969
  %977 = xor i1 %976, true
  store i1 %977, i1* %971
  br label %sc_and_end248
sc_and_end248:
  %978 = load i1, i1* %971
  br i1 %978, label %while_body245, label %while_end246
while_body245:
  call void @llvm.stackrestore(i8* %970)
  %979 = load %nyx_string*, %nyx_string** %965
  %980 = load i64, i64* %968
  %981 = call i8 @nyx_string_char_at(%nyx_string* %979, i64 %980)
  %982 = zext i8 %981 to i64
  %983 = trunc i64 %982 to i8
  %984 = alloca i8
  store i8 %983, i8* %984
  %985 = alloca i1
  store i1 true, i1* %985
  %986 = alloca i1
  store i1 true, i1* %986
  %987 = load i8, i8* %984
  %988 = getelementptr [1 x i8], [1 x i8]* @.str95, i32 0, i32 0
  %989 = load i8, i8* %988
  %990 = zext i8 %989 to i64
  %991 = zext i8 %987 to i64
  %992 = icmp eq i64 %991, %990
  br i1 %992, label %sc_or_end250, label %sc_or_rhs249
sc_or_rhs249:
  %993 = load i8, i8* %984
  %994 = getelementptr [1 x i8], [1 x i8]* @.str96, i32 0, i32 0
  %995 = load i8, i8* %994
  %996 = zext i8 %995 to i64
  %997 = zext i8 %993 to i64
  %998 = icmp eq i64 %997, %996
  store i1 %998, i1* %986
  br label %sc_or_end250
sc_or_end250:
  %999 = load i1, i1* %986
  br i1 %999, label %sc_or_end252, label %sc_or_rhs251
sc_or_rhs251:
  %1000 = load i8, i8* %984
  %1001 = getelementptr [1 x i8], [1 x i8]* @.str97, i32 0, i32 0
  %1002 = load i8, i8* %1001
  %1003 = zext i8 %1002 to i64
  %1004 = zext i8 %1000 to i64
  %1005 = icmp eq i64 %1004, %1003
  store i1 %1005, i1* %985
  br label %sc_or_end252
sc_or_end252:
  %1006 = load i1, i1* %985
  br i1 %1006, label %then253, label %else254
then253:
  store i1 1, i1* %969
  br label %merge255
else254:
  %1007 = load %nyx_string*, %nyx_string** %967
  %1008 = load i8, i8* %984
  %1009 = call %nyx_string* @nyx_string_from_char(i8 %1008)
  %1010 = call %nyx_string* @nyx_string_concat(%nyx_string* %1007, %nyx_string* %1009)
  store %nyx_string* %1010, %nyx_string** %967
  %1011 = load i64, i64* %968
  %1012 = add i64 %1011, 1
  store i64 %1012, i64* %968
  br label %merge255
merge255:
  br label %while_cond244
while_end246:
  %1013 = load %nyx_string*, %nyx_string** %967
  %1014 = load %nyx_string*, %nyx_string** %725
  %1015 = call i1 @nyx_string_equals(%nyx_string* %1013, %nyx_string* %1014)
  %1016 = xor i1 %1015, true
  br i1 %1016, label %then256, label %else257
then256:
  %1017 = load { i64, i8* }*, { i64, i8* }** %707
  %1018 = load %nyx_string*, %nyx_string** %967
  %1019 = ptrtoint %nyx_string* %1018 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1017, i64 %1019, i64 2)
  br label %merge258
else257:
  br label %merge258
merge258:
  br label %merge243
else242:
  br label %merge243
merge243:
  %1020 = load %nyx_string*, %nyx_string** %771
  %1021 = load %nyx_string*, %nyx_string** %737
  %1022 = call i1 @nyx_string_starts_with(%nyx_string* %1020, %nyx_string* %1021)
  br i1 %1022, label %then259, label %else260
then259:
  %1023 = load %nyx_string*, %nyx_string** %771
  %1024 = load %nyx_string*, %nyx_string** %771
  %1025 = call i64 @nyx_string_byte_length(%nyx_string* %1024)
  %1026 = call %nyx_string* @nyx_string_substring(%nyx_string* %1023, i64 11, i64 %1025)
  %1027 = alloca %nyx_string*
  store %nyx_string* %1026, %nyx_string** %1027
  %1028 = load %nyx_string*, %nyx_string** %725
  %1029 = alloca %nyx_string*
  store %nyx_string* %1028, %nyx_string** %1029
  %1030 = alloca i64
  store i64 0, i64* %1030
  %1031 = alloca i1
  store i1 0, i1* %1031
  %1032 = call i8* @llvm.stacksave()
  br label %while_cond262
while_cond262:
  %1033 = alloca i1
  store i1 false, i1* %1033
  %1034 = load i64, i64* %1030
  %1035 = load %nyx_string*, %nyx_string** %1027
  %1036 = call i64 @nyx_string_byte_length(%nyx_string* %1035)
  %1037 = icmp slt i64 %1034, %1036
  br i1 %1037, label %sc_and_rhs265, label %sc_and_end266
sc_and_rhs265:
  %1038 = load i1, i1* %1031
  %1039 = xor i1 %1038, true
  store i1 %1039, i1* %1033
  br label %sc_and_end266
sc_and_end266:
  %1040 = load i1, i1* %1033
  br i1 %1040, label %while_body263, label %while_end264
while_body263:
  call void @llvm.stackrestore(i8* %1032)
  %1041 = load %nyx_string*, %nyx_string** %1027
  %1042 = load i64, i64* %1030
  %1043 = call i8 @nyx_string_char_at(%nyx_string* %1041, i64 %1042)
  %1044 = zext i8 %1043 to i64
  %1045 = trunc i64 %1044 to i8
  %1046 = alloca i8
  store i8 %1045, i8* %1046
  %1047 = alloca i1
  store i1 true, i1* %1047
  %1048 = alloca i1
  store i1 true, i1* %1048
  %1049 = load i8, i8* %1046
  %1050 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1051 = load i8, i8* %1050
  %1052 = zext i8 %1051 to i64
  %1053 = zext i8 %1049 to i64
  %1054 = icmp eq i64 %1053, %1052
  br i1 %1054, label %sc_or_end268, label %sc_or_rhs267
sc_or_rhs267:
  %1055 = load i8, i8* %1046
  %1056 = getelementptr [1 x i8], [1 x i8]* @.str99, i32 0, i32 0
  %1057 = load i8, i8* %1056
  %1058 = zext i8 %1057 to i64
  %1059 = zext i8 %1055 to i64
  %1060 = icmp eq i64 %1059, %1058
  store i1 %1060, i1* %1048
  br label %sc_or_end268
sc_or_end268:
  %1061 = load i1, i1* %1048
  br i1 %1061, label %sc_or_end270, label %sc_or_rhs269
sc_or_rhs269:
  %1062 = load i8, i8* %1046
  %1063 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1064 = load i8, i8* %1063
  %1065 = zext i8 %1064 to i64
  %1066 = zext i8 %1062 to i64
  %1067 = icmp eq i64 %1066, %1065
  store i1 %1067, i1* %1047
  br label %sc_or_end270
sc_or_end270:
  %1068 = load i1, i1* %1047
  br i1 %1068, label %then271, label %else272
then271:
  store i1 1, i1* %1031
  br label %merge273
else272:
  %1069 = load %nyx_string*, %nyx_string** %1029
  %1070 = load i8, i8* %1046
  %1071 = call %nyx_string* @nyx_string_from_char(i8 %1070)
  %1072 = call %nyx_string* @nyx_string_concat(%nyx_string* %1069, %nyx_string* %1071)
  store %nyx_string* %1072, %nyx_string** %1029
  %1073 = load i64, i64* %1030
  %1074 = add i64 %1073, 1
  store i64 %1074, i64* %1030
  br label %merge273
merge273:
  br label %while_cond262
while_end264:
  %1075 = load %nyx_string*, %nyx_string** %1029
  %1076 = load %nyx_string*, %nyx_string** %725
  %1077 = call i1 @nyx_string_equals(%nyx_string* %1075, %nyx_string* %1076)
  %1078 = xor i1 %1077, true
  br i1 %1078, label %then274, label %else275
then274:
  %1079 = load { i64, i8* }*, { i64, i8* }** %707
  %1080 = load %nyx_string*, %nyx_string** %1029
  %1081 = ptrtoint %nyx_string* %1080 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1079, i64 %1081, i64 2)
  br label %merge276
else275:
  br label %merge276
merge276:
  br label %merge261
else260:
  br label %merge261
merge261:
  %1082 = load %nyx_string*, %nyx_string** %771
  %1083 = load %nyx_string*, %nyx_string** %740
  %1084 = call i1 @nyx_string_starts_with(%nyx_string* %1082, %nyx_string* %1083)
  br i1 %1084, label %then277, label %else278
then277:
  %1085 = load %nyx_string*, %nyx_string** %771
  %1086 = load %nyx_string*, %nyx_string** %771
  %1087 = call i64 @nyx_string_byte_length(%nyx_string* %1086)
  %1088 = call %nyx_string* @nyx_string_substring(%nyx_string* %1085, i64 14, i64 %1087)
  %1089 = alloca %nyx_string*
  store %nyx_string* %1088, %nyx_string** %1089
  %1090 = load %nyx_string*, %nyx_string** %725
  %1091 = alloca %nyx_string*
  store %nyx_string* %1090, %nyx_string** %1091
  %1092 = alloca i64
  store i64 0, i64* %1092
  %1093 = alloca i1
  store i1 0, i1* %1093
  %1094 = call i8* @llvm.stacksave()
  br label %while_cond280
while_cond280:
  %1095 = alloca i1
  store i1 false, i1* %1095
  %1096 = load i64, i64* %1092
  %1097 = load %nyx_string*, %nyx_string** %1089
  %1098 = call i64 @nyx_string_byte_length(%nyx_string* %1097)
  %1099 = icmp slt i64 %1096, %1098
  br i1 %1099, label %sc_and_rhs283, label %sc_and_end284
sc_and_rhs283:
  %1100 = load i1, i1* %1093
  %1101 = xor i1 %1100, true
  store i1 %1101, i1* %1095
  br label %sc_and_end284
sc_and_end284:
  %1102 = load i1, i1* %1095
  br i1 %1102, label %while_body281, label %while_end282
while_body281:
  call void @llvm.stackrestore(i8* %1094)
  %1103 = load %nyx_string*, %nyx_string** %1089
  %1104 = load i64, i64* %1092
  %1105 = call i8 @nyx_string_char_at(%nyx_string* %1103, i64 %1104)
  %1106 = zext i8 %1105 to i64
  %1107 = trunc i64 %1106 to i8
  %1108 = alloca i8
  store i8 %1107, i8* %1108
  %1109 = alloca i1
  store i1 true, i1* %1109
  %1110 = alloca i1
  store i1 true, i1* %1110
  %1111 = load i8, i8* %1108
  %1112 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1113 = load i8, i8* %1112
  %1114 = zext i8 %1113 to i64
  %1115 = zext i8 %1111 to i64
  %1116 = icmp eq i64 %1115, %1114
  br i1 %1116, label %sc_or_end286, label %sc_or_rhs285
sc_or_rhs285:
  %1117 = load i8, i8* %1108
  %1118 = getelementptr [1 x i8], [1 x i8]* @.str102, i32 0, i32 0
  %1119 = load i8, i8* %1118
  %1120 = zext i8 %1119 to i64
  %1121 = zext i8 %1117 to i64
  %1122 = icmp eq i64 %1121, %1120
  store i1 %1122, i1* %1110
  br label %sc_or_end286
sc_or_end286:
  %1123 = load i1, i1* %1110
  br i1 %1123, label %sc_or_end288, label %sc_or_rhs287
sc_or_rhs287:
  %1124 = load i8, i8* %1108
  %1125 = getelementptr [1 x i8], [1 x i8]* @.str103, i32 0, i32 0
  %1126 = load i8, i8* %1125
  %1127 = zext i8 %1126 to i64
  %1128 = zext i8 %1124 to i64
  %1129 = icmp eq i64 %1128, %1127
  store i1 %1129, i1* %1109
  br label %sc_or_end288
sc_or_end288:
  %1130 = load i1, i1* %1109
  br i1 %1130, label %then289, label %else290
then289:
  store i1 1, i1* %1093
  br label %merge291
else290:
  %1131 = load %nyx_string*, %nyx_string** %1091
  %1132 = load i8, i8* %1108
  %1133 = call %nyx_string* @nyx_string_from_char(i8 %1132)
  %1134 = call %nyx_string* @nyx_string_concat(%nyx_string* %1131, %nyx_string* %1133)
  store %nyx_string* %1134, %nyx_string** %1091
  %1135 = load i64, i64* %1092
  %1136 = add i64 %1135, 1
  store i64 %1136, i64* %1092
  br label %merge291
merge291:
  br label %while_cond280
while_end282:
  %1137 = load %nyx_string*, %nyx_string** %1091
  %1138 = load %nyx_string*, %nyx_string** %725
  %1139 = call i1 @nyx_string_equals(%nyx_string* %1137, %nyx_string* %1138)
  %1140 = xor i1 %1139, true
  br i1 %1140, label %then292, label %else293
then292:
  %1141 = load { i64, i8* }*, { i64, i8* }** %707
  %1142 = load %nyx_string*, %nyx_string** %1091
  %1143 = ptrtoint %nyx_string* %1142 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1141, i64 %1143, i64 2)
  br label %merge294
else293:
  br label %merge294
merge294:
  br label %merge279
else278:
  br label %merge279
merge279:
  %1144 = load %nyx_string*, %nyx_string** %771
  %1145 = load %nyx_string*, %nyx_string** %743
  %1146 = call i1 @nyx_string_starts_with(%nyx_string* %1144, %nyx_string* %1145)
  br i1 %1146, label %then295, label %else296
then295:
  %1147 = load %nyx_string*, %nyx_string** %771
  %1148 = load %nyx_string*, %nyx_string** %771
  %1149 = call i64 @nyx_string_byte_length(%nyx_string* %1148)
  %1150 = call %nyx_string* @nyx_string_substring(%nyx_string* %1147, i64 9, i64 %1149)
  %1151 = alloca %nyx_string*
  store %nyx_string* %1150, %nyx_string** %1151
  %1152 = load %nyx_string*, %nyx_string** %725
  %1153 = alloca %nyx_string*
  store %nyx_string* %1152, %nyx_string** %1153
  %1154 = alloca i64
  store i64 0, i64* %1154
  %1155 = alloca i1
  store i1 0, i1* %1155
  %1156 = call i8* @llvm.stacksave()
  br label %while_cond298
while_cond298:
  %1157 = alloca i1
  store i1 false, i1* %1157
  %1158 = load i64, i64* %1154
  %1159 = load %nyx_string*, %nyx_string** %1151
  %1160 = call i64 @nyx_string_byte_length(%nyx_string* %1159)
  %1161 = icmp slt i64 %1158, %1160
  br i1 %1161, label %sc_and_rhs301, label %sc_and_end302
sc_and_rhs301:
  %1162 = load i1, i1* %1155
  %1163 = xor i1 %1162, true
  store i1 %1163, i1* %1157
  br label %sc_and_end302
sc_and_end302:
  %1164 = load i1, i1* %1157
  br i1 %1164, label %while_body299, label %while_end300
while_body299:
  call void @llvm.stackrestore(i8* %1156)
  %1165 = load %nyx_string*, %nyx_string** %1151
  %1166 = load i64, i64* %1154
  %1167 = call i8 @nyx_string_char_at(%nyx_string* %1165, i64 %1166)
  %1168 = zext i8 %1167 to i64
  %1169 = trunc i64 %1168 to i8
  %1170 = alloca i8
  store i8 %1169, i8* %1170
  %1171 = alloca i1
  store i1 true, i1* %1171
  %1172 = alloca i1
  store i1 true, i1* %1172
  %1173 = load i8, i8* %1170
  %1174 = getelementptr [1 x i8], [1 x i8]* @.str104, i32 0, i32 0
  %1175 = load i8, i8* %1174
  %1176 = zext i8 %1175 to i64
  %1177 = zext i8 %1173 to i64
  %1178 = icmp eq i64 %1177, %1176
  br i1 %1178, label %sc_or_end304, label %sc_or_rhs303
sc_or_rhs303:
  %1179 = load i8, i8* %1170
  %1180 = getelementptr [1 x i8], [1 x i8]* @.str105, i32 0, i32 0
  %1181 = load i8, i8* %1180
  %1182 = zext i8 %1181 to i64
  %1183 = zext i8 %1179 to i64
  %1184 = icmp eq i64 %1183, %1182
  store i1 %1184, i1* %1172
  br label %sc_or_end304
sc_or_end304:
  %1185 = load i1, i1* %1172
  br i1 %1185, label %sc_or_end306, label %sc_or_rhs305
sc_or_rhs305:
  %1186 = load i8, i8* %1170
  %1187 = getelementptr [1 x i8], [1 x i8]* @.str106, i32 0, i32 0
  %1188 = load i8, i8* %1187
  %1189 = zext i8 %1188 to i64
  %1190 = zext i8 %1186 to i64
  %1191 = icmp eq i64 %1190, %1189
  store i1 %1191, i1* %1171
  br label %sc_or_end306
sc_or_end306:
  %1192 = load i1, i1* %1171
  br i1 %1192, label %then307, label %else308
then307:
  store i1 1, i1* %1155
  br label %merge309
else308:
  %1193 = load %nyx_string*, %nyx_string** %1153
  %1194 = load i8, i8* %1170
  %1195 = call %nyx_string* @nyx_string_from_char(i8 %1194)
  %1196 = call %nyx_string* @nyx_string_concat(%nyx_string* %1193, %nyx_string* %1195)
  store %nyx_string* %1196, %nyx_string** %1153
  %1197 = load i64, i64* %1154
  %1198 = add i64 %1197, 1
  store i64 %1198, i64* %1154
  br label %merge309
merge309:
  br label %while_cond298
while_end300:
  %1199 = load %nyx_string*, %nyx_string** %1153
  %1200 = load %nyx_string*, %nyx_string** %725
  %1201 = call i1 @nyx_string_equals(%nyx_string* %1199, %nyx_string* %1200)
  %1202 = xor i1 %1201, true
  br i1 %1202, label %then310, label %else311
then310:
  %1203 = load { i64, i8* }*, { i64, i8* }** %707
  %1204 = load %nyx_string*, %nyx_string** %1153
  %1205 = ptrtoint %nyx_string* %1204 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1203, i64 %1205, i64 2)
  br label %merge312
else311:
  br label %merge312
merge312:
  br label %merge297
else296:
  br label %merge297
merge297:
  %1206 = load %nyx_string*, %nyx_string** %771
  %1207 = load %nyx_string*, %nyx_string** %746
  %1208 = call i1 @nyx_string_starts_with(%nyx_string* %1206, %nyx_string* %1207)
  br i1 %1208, label %then313, label %else314
then313:
  %1209 = load %nyx_string*, %nyx_string** %771
  %1210 = load %nyx_string*, %nyx_string** %771
  %1211 = call i64 @nyx_string_byte_length(%nyx_string* %1210)
  %1212 = call %nyx_string* @nyx_string_substring(%nyx_string* %1209, i64 12, i64 %1211)
  %1213 = alloca %nyx_string*
  store %nyx_string* %1212, %nyx_string** %1213
  %1214 = load %nyx_string*, %nyx_string** %725
  %1215 = alloca %nyx_string*
  store %nyx_string* %1214, %nyx_string** %1215
  %1216 = alloca i64
  store i64 0, i64* %1216
  %1217 = alloca i1
  store i1 0, i1* %1217
  %1218 = call i8* @llvm.stacksave()
  br label %while_cond316
while_cond316:
  %1219 = alloca i1
  store i1 false, i1* %1219
  %1220 = load i64, i64* %1216
  %1221 = load %nyx_string*, %nyx_string** %1213
  %1222 = call i64 @nyx_string_byte_length(%nyx_string* %1221)
  %1223 = icmp slt i64 %1220, %1222
  br i1 %1223, label %sc_and_rhs319, label %sc_and_end320
sc_and_rhs319:
  %1224 = load i1, i1* %1217
  %1225 = xor i1 %1224, true
  store i1 %1225, i1* %1219
  br label %sc_and_end320
sc_and_end320:
  %1226 = load i1, i1* %1219
  br i1 %1226, label %while_body317, label %while_end318
while_body317:
  call void @llvm.stackrestore(i8* %1218)
  %1227 = load %nyx_string*, %nyx_string** %1213
  %1228 = load i64, i64* %1216
  %1229 = call i8 @nyx_string_char_at(%nyx_string* %1227, i64 %1228)
  %1230 = zext i8 %1229 to i64
  %1231 = trunc i64 %1230 to i8
  %1232 = alloca i8
  store i8 %1231, i8* %1232
  %1233 = alloca i1
  store i1 true, i1* %1233
  %1234 = alloca i1
  store i1 true, i1* %1234
  %1235 = load i8, i8* %1232
  %1236 = getelementptr [1 x i8], [1 x i8]* @.str107, i32 0, i32 0
  %1237 = load i8, i8* %1236
  %1238 = zext i8 %1237 to i64
  %1239 = zext i8 %1235 to i64
  %1240 = icmp eq i64 %1239, %1238
  br i1 %1240, label %sc_or_end322, label %sc_or_rhs321
sc_or_rhs321:
  %1241 = load i8, i8* %1232
  %1242 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %1243 = load i8, i8* %1242
  %1244 = zext i8 %1243 to i64
  %1245 = zext i8 %1241 to i64
  %1246 = icmp eq i64 %1245, %1244
  store i1 %1246, i1* %1234
  br label %sc_or_end322
sc_or_end322:
  %1247 = load i1, i1* %1234
  br i1 %1247, label %sc_or_end324, label %sc_or_rhs323
sc_or_rhs323:
  %1248 = load i8, i8* %1232
  %1249 = getelementptr [1 x i8], [1 x i8]* @.str109, i32 0, i32 0
  %1250 = load i8, i8* %1249
  %1251 = zext i8 %1250 to i64
  %1252 = zext i8 %1248 to i64
  %1253 = icmp eq i64 %1252, %1251
  store i1 %1253, i1* %1233
  br label %sc_or_end324
sc_or_end324:
  %1254 = load i1, i1* %1233
  br i1 %1254, label %then325, label %else326
then325:
  store i1 1, i1* %1217
  br label %merge327
else326:
  %1255 = load %nyx_string*, %nyx_string** %1215
  %1256 = load i8, i8* %1232
  %1257 = call %nyx_string* @nyx_string_from_char(i8 %1256)
  %1258 = call %nyx_string* @nyx_string_concat(%nyx_string* %1255, %nyx_string* %1257)
  store %nyx_string* %1258, %nyx_string** %1215
  %1259 = load i64, i64* %1216
  %1260 = add i64 %1259, 1
  store i64 %1260, i64* %1216
  br label %merge327
merge327:
  br label %while_cond316
while_end318:
  %1261 = load %nyx_string*, %nyx_string** %1215
  %1262 = load %nyx_string*, %nyx_string** %725
  %1263 = call i1 @nyx_string_equals(%nyx_string* %1261, %nyx_string* %1262)
  %1264 = xor i1 %1263, true
  br i1 %1264, label %then328, label %else329
then328:
  %1265 = load { i64, i8* }*, { i64, i8* }** %707
  %1266 = load %nyx_string*, %nyx_string** %1215
  %1267 = ptrtoint %nyx_string* %1266 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1265, i64 %1267, i64 2)
  br label %merge330
else329:
  br label %merge330
merge330:
  br label %merge315
else314:
  br label %merge315
merge315:
  %1268 = load i64, i64* %713
  %1269 = add i64 %1268, 1
  store i64 %1269, i64* %713
  br label %while_cond179
while_end181:
  %1270 = load { i64, i8* }*, { i64, i8* }** %707
  ret { i64, i8* }* %1270
}

define internal %nyx_string* @detect_package_name(
%nyx_string* %resolved_path.param) {
  %resolved_path.ptr = alloca %nyx_string*
  store %nyx_string* %resolved_path.param, %nyx_string** %resolved_path.ptr
  %1271 = getelementptr [10 x i8], [10 x i8]* @.str110, i32 0, i32 0
  %1272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str110.c, i8* %1271, i64 9)
  %1273 = alloca %nyx_string*
  store %nyx_string* %1272, %nyx_string** %1273
  %1274 = load %nyx_string*, %nyx_string** %1273
  %1275 = call i64 @nyx_string_byte_length(%nyx_string* %1274)
  %1276 = alloca i64
  store i64 %1275, i64* %1276
  %1277 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1278 = load %nyx_string*, %nyx_string** %1273
  %1279 = call i1 @nyx_string_contains(%nyx_string* %1277, %nyx_string* %1278)
  %1280 = xor i1 %1279, true
  br i1 %1280, label %then331, label %else332
then331:
  %1281 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %1282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str111.c, i8* %1281, i64 0)
  ret %nyx_string* %1282
else332:
  br label %merge333
merge333:
  %1283 = alloca i64
  store i64 0, i64* %1283
  %1284 = sub i64 0, 1
  %1285 = alloca i64
  store i64 %1284, i64* %1285
  %1286 = call i8* @llvm.stacksave()
  br label %while_cond334
while_cond334:
  %1287 = load i64, i64* %1283
  %1288 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1289 = call i64 @nyx_string_byte_length(%nyx_string* %1288)
  %1290 = load i64, i64* %1276
  %1291 = sub i64 %1289, %1290
  %1292 = icmp sle i64 %1287, %1291
  br i1 %1292, label %while_body335, label %while_end336
while_body335:
  call void @llvm.stackrestore(i8* %1286)
  %1293 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1294 = load i64, i64* %1283
  %1295 = load i64, i64* %1283
  %1296 = load i64, i64* %1276
  %1297 = add i64 %1295, %1296
  %1298 = call %nyx_string* @nyx_string_substring(%nyx_string* %1293, i64 %1294, i64 %1297)
  %1299 = load %nyx_string*, %nyx_string** %1273
  %1300 = call i1 @nyx_string_equals(%nyx_string* %1298, %nyx_string* %1299)
  br i1 %1300, label %then337, label %else338
then337:
  %1301 = load i64, i64* %1283
  store i64 %1301, i64* %1285
  %1302 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1303 = call i64 @nyx_string_byte_length(%nyx_string* %1302)
  store i64 %1303, i64* %1283
  br label %merge339
else338:
  %1304 = load i64, i64* %1283
  %1305 = add i64 %1304, 1
  store i64 %1305, i64* %1283
  br label %merge339
merge339:
  br label %while_cond334
while_end336:
  %1306 = load i64, i64* %1285
  %1307 = icmp slt i64 %1306, 0
  br i1 %1307, label %then340, label %else341
then340:
  %1308 = getelementptr [1 x i8], [1 x i8]* @.str112, i32 0, i32 0
  %1309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1308, i64 0)
  ret %nyx_string* %1309
else341:
  br label %merge342
merge342:
  %1310 = load i64, i64* %1285
  %1311 = load i64, i64* %1276
  %1312 = add i64 %1310, %1311
  %1313 = alloca i64
  store i64 %1312, i64* %1313
  %1314 = load i64, i64* %1313
  %1315 = alloca i64
  store i64 %1314, i64* %1315
  %1316 = call i8* @llvm.stacksave()
  br label %while_cond343
while_cond343:
  %1317 = load i64, i64* %1315
  %1318 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1319 = call i64 @nyx_string_byte_length(%nyx_string* %1318)
  %1320 = icmp slt i64 %1317, %1319
  br i1 %1320, label %while_body344, label %while_end345
while_body344:
  call void @llvm.stackrestore(i8* %1316)
  %1321 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1322 = load i64, i64* %1315
  %1323 = call i8 @nyx_string_char_at(%nyx_string* %1321, i64 %1322)
  %1324 = zext i8 %1323 to i64
  %1325 = trunc i64 %1324 to i8
  %1326 = alloca i8
  store i8 %1325, i8* %1326
  %1327 = load i8, i8* %1326
  %1328 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1329 = load i8, i8* %1328
  %1330 = zext i8 %1329 to i64
  %1331 = zext i8 %1327 to i64
  %1332 = icmp eq i64 %1331, %1330
  br i1 %1332, label %then346, label %else347
then346:
  %1333 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1334 = call i64 @nyx_string_byte_length(%nyx_string* %1333)
  %1335 = add i64 %1334, 1
  store i64 %1335, i64* %1315
  br label %merge348
else347:
  %1336 = load i64, i64* %1315
  %1337 = add i64 %1336, 1
  store i64 %1337, i64* %1315
  br label %merge348
merge348:
  br label %while_cond343
while_end345:
  %1338 = load i64, i64* %1315
  %1339 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1340 = call i64 @nyx_string_byte_length(%nyx_string* %1339)
  %1341 = icmp sgt i64 %1338, %1340
  br i1 %1341, label %then349, label %else350
then349:
  %1342 = load i64, i64* %1315
  %1343 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1344 = call i64 @nyx_string_byte_length(%nyx_string* %1343)
  %1345 = add i64 %1344, 1
  %1346 = sub i64 %1342, %1345
  %1347 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1348 = call i64 @nyx_string_byte_length(%nyx_string* %1347)
  %1349 = add i64 %1346, %1348
  %1350 = alloca i64
  store i64 %1349, i64* %1350
  %1351 = load i64, i64* %1313
  %1352 = alloca i64
  store i64 %1351, i64* %1352
  %1353 = call i8* @llvm.stacksave()
  br label %while_cond352
while_cond352:
  %1354 = load i64, i64* %1352
  %1355 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1356 = call i64 @nyx_string_byte_length(%nyx_string* %1355)
  %1357 = icmp slt i64 %1354, %1356
  br i1 %1357, label %while_body353, label %while_end354
while_body353:
  call void @llvm.stackrestore(i8* %1353)
  %1358 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1359 = load i64, i64* %1352
  %1360 = call i8 @nyx_string_char_at(%nyx_string* %1358, i64 %1359)
  %1361 = zext i8 %1360 to i64
  %1362 = trunc i64 %1361 to i8
  %1363 = alloca i8
  store i8 %1362, i8* %1363
  %1364 = load i8, i8* %1363
  %1365 = getelementptr [1 x i8], [1 x i8]* @.str114, i32 0, i32 0
  %1366 = load i8, i8* %1365
  %1367 = zext i8 %1366 to i64
  %1368 = zext i8 %1364 to i64
  %1369 = icmp eq i64 %1368, %1367
  br i1 %1369, label %then355, label %else356
then355:
  %1370 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1371 = load i64, i64* %1313
  %1372 = load i64, i64* %1352
  %1373 = call %nyx_string* @nyx_string_substring(%nyx_string* %1370, i64 %1371, i64 %1372)
  ret %nyx_string* %1373
else356:
  br label %merge357
merge357:
  %1374 = load i64, i64* %1352
  %1375 = add i64 %1374, 1
  store i64 %1375, i64* %1352
  br label %while_cond352
while_end354:
  br label %merge351
else350:
  br label %merge351
merge351:
  %1376 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1377 = load i64, i64* %1313
  %1378 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1379 = call i64 @nyx_string_byte_length(%nyx_string* %1378)
  %1380 = call %nyx_string* @nyx_string_substring(%nyx_string* %1376, i64 %1377, i64 %1379)
  ret %nyx_string* %1380
}

define internal %nyx_string* @rewrite_package_imports(
%nyx_string* %source.param, %nyx_string* %pkg_name.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %pkg_name.ptr = alloca %nyx_string*
  store %nyx_string* %pkg_name.param, %nyx_string** %pkg_name.ptr
  %1381 = getelementptr [6 x i8], [6 x i8]* @.str115, i32 0, i32 0
  %1382 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str115.c, i8* %1381, i64 5)
  %1383 = alloca %nyx_string*
  store %nyx_string* %1382, %nyx_string** %1383
  %1384 = load %nyx_string*, %nyx_string** %1383
  %1385 = call i64 @nyx_string_byte_length(%nyx_string* %1384)
  %1386 = alloca i64
  store i64 %1385, i64* %1386
  %1387 = load %nyx_string*, %nyx_string** %source.ptr
  %1388 = load %nyx_string*, %nyx_string** %1383
  %1389 = call i1 @nyx_string_contains(%nyx_string* %1387, %nyx_string* %1388)
  %1390 = xor i1 %1389, true
  br i1 %1390, label %then358, label %else359
then358:
  %1391 = load %nyx_string*, %nyx_string** %source.ptr
  ret %nyx_string* %1391
else359:
  br label %merge360
merge360:
  %1392 = load %nyx_string*, %nyx_string** %source.ptr
  %1393 = getelementptr [2 x i8], [2 x i8]* @.str116, i32 0, i32 0
  %1394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str116.c, i8* %1393, i64 1)
  %1395 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1392, %nyx_string* %1394)
  %1396 = alloca { i64, i8* }*
  store { i64, i8* }* %1395, { i64, i8* }** %1396
  %1397 = getelementptr [1 x i8], [1 x i8]* @.str117, i32 0, i32 0
  %1398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1397, i64 0)
  %1399 = alloca %nyx_string*
  store %nyx_string* %1398, %nyx_string** %1399
  %1400 = alloca i64
  store i64 0, i64* %1400
  %1401 = getelementptr [7 x i8], [7 x i8]* @.str118, i32 0, i32 0
  %1402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1401, i64 6)
  %1403 = alloca %nyx_string*
  store %nyx_string* %1402, %nyx_string** %1403
  %1404 = getelementptr [1 x i8], [1 x i8]* @.str119, i32 0, i32 0
  %1405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1404, i64 0)
  %1406 = alloca %nyx_string*
  store %nyx_string* %1405, %nyx_string** %1406
  %1407 = getelementptr [2 x i8], [2 x i8]* @.str120, i32 0, i32 0
  %1408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1407, i64 1)
  %1409 = alloca %nyx_string*
  store %nyx_string* %1408, %nyx_string** %1409
  %1410 = getelementptr [6 x i8], [6 x i8]* @.str121, i32 0, i32 0
  %1411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1410, i64 5)
  %1412 = alloca %nyx_string*
  store %nyx_string* %1411, %nyx_string** %1412
  %1413 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1413, i64 1)
  %1415 = alloca %nyx_string*
  store %nyx_string* %1414, %nyx_string** %1415
  %1416 = call i8* @llvm.stacksave()
  br label %while_cond361
while_cond361:
  %1417 = load i64, i64* %1400
  %1418 = load { i64, i8* }*, { i64, i8* }** %1396
  %1419 = call i64 @nyx_array_length({ i64, i8* }* %1418)
  %1420 = icmp slt i64 %1417, %1419
  br i1 %1420, label %while_body362, label %while_end363
while_body362:
  call void @llvm.stackrestore(i8* %1416)
  %1421 = load { i64, i8* }*, { i64, i8* }** %1396
  %1422 = load i64, i64* %1400
  %1423 = call i64 @nyx_array_get_checked({ i64, i8* }* %1421, i64 %1422, i64 2)
  %1424 = inttoptr i64 %1423 to %nyx_string*
  %1425 = alloca %nyx_string*
  store %nyx_string* %1424, %nyx_string** %1425
  %1426 = alloca i1
  store i1 false, i1* %1426
  %1427 = load %nyx_string*, %nyx_string** %1425
  %1428 = load %nyx_string*, %nyx_string** %1403
  %1429 = call i1 @nyx_string_contains(%nyx_string* %1427, %nyx_string* %1428)
  br i1 %1429, label %sc_and_rhs364, label %sc_and_end365
sc_and_rhs364:
  %1430 = load %nyx_string*, %nyx_string** %1425
  %1431 = load %nyx_string*, %nyx_string** %1383
  %1432 = call i1 @nyx_string_contains(%nyx_string* %1430, %nyx_string* %1431)
  store i1 %1432, i1* %1426
  br label %sc_and_end365
sc_and_end365:
  %1433 = load i1, i1* %1426
  br i1 %1433, label %then366, label %else367
then366:
  %1434 = load %nyx_string*, %nyx_string** %1406
  %1435 = alloca %nyx_string*
  store %nyx_string* %1434, %nyx_string** %1435
  %1436 = alloca i64
  store i64 0, i64* %1436
  %1437 = alloca i1
  store i1 0, i1* %1437
  %1438 = call i8* @llvm.stacksave()
  br label %while_cond369
while_cond369:
  %1439 = load i64, i64* %1436
  %1440 = load %nyx_string*, %nyx_string** %1425
  %1441 = call i64 @nyx_string_byte_length(%nyx_string* %1440)
  %1442 = icmp slt i64 %1439, %1441
  br i1 %1442, label %while_body370, label %while_end371
while_body370:
  call void @llvm.stackrestore(i8* %1438)
  %1443 = alloca i1
  store i1 false, i1* %1443
  %1444 = load i1, i1* %1437
  %1445 = xor i1 %1444, true
  br i1 %1445, label %sc_and_rhs372, label %sc_and_end373
sc_and_rhs372:
  %1446 = load i64, i64* %1436
  %1447 = load i64, i64* %1386
  %1448 = add i64 %1446, %1447
  %1449 = load %nyx_string*, %nyx_string** %1425
  %1450 = call i64 @nyx_string_byte_length(%nyx_string* %1449)
  %1451 = icmp sle i64 %1448, %1450
  store i1 %1451, i1* %1443
  br label %sc_and_end373
sc_and_end373:
  %1452 = load i1, i1* %1443
  br i1 %1452, label %then374, label %else375
then374:
  %1453 = load %nyx_string*, %nyx_string** %1425
  %1454 = load i64, i64* %1436
  %1455 = load i64, i64* %1436
  %1456 = load i64, i64* %1386
  %1457 = add i64 %1455, %1456
  %1458 = call %nyx_string* @nyx_string_substring(%nyx_string* %1453, i64 %1454, i64 %1457)
  %1459 = load %nyx_string*, %nyx_string** %1383
  %1460 = call i1 @nyx_string_equals(%nyx_string* %1458, %nyx_string* %1459)
  br i1 %1460, label %then377, label %else378
then377:
  %1461 = load %nyx_string*, %nyx_string** %1435
  %1462 = load %nyx_string*, %nyx_string** %1409
  %1463 = call %nyx_string* @nyx_string_concat(%nyx_string* %1461, %nyx_string* %1462)
  %1464 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1465 = call %nyx_string* @nyx_string_concat(%nyx_string* %1463, %nyx_string* %1464)
  %1466 = load %nyx_string*, %nyx_string** %1412
  %1467 = call %nyx_string* @nyx_string_concat(%nyx_string* %1465, %nyx_string* %1466)
  store %nyx_string* %1467, %nyx_string** %1435
  %1468 = load i64, i64* %1436
  %1469 = load i64, i64* %1386
  %1470 = add i64 %1468, %1469
  store i64 %1470, i64* %1436
  store i1 1, i1* %1437
  br label %merge379
else378:
  %1471 = load %nyx_string*, %nyx_string** %1425
  %1472 = load i64, i64* %1436
  %1473 = call i8 @nyx_string_char_at(%nyx_string* %1471, i64 %1472)
  %1474 = zext i8 %1473 to i64
  %1475 = trunc i64 %1474 to i8
  %1476 = alloca i8
  store i8 %1475, i8* %1476
  %1477 = load %nyx_string*, %nyx_string** %1435
  %1478 = load i8, i8* %1476
  %1479 = call %nyx_string* @nyx_string_from_char(i8 %1478)
  %1480 = call %nyx_string* @nyx_string_concat(%nyx_string* %1477, %nyx_string* %1479)
  store %nyx_string* %1480, %nyx_string** %1435
  %1481 = load i64, i64* %1436
  %1482 = add i64 %1481, 1
  store i64 %1482, i64* %1436
  br label %merge379
merge379:
  br label %merge376
else375:
  %1483 = load %nyx_string*, %nyx_string** %1425
  %1484 = load i64, i64* %1436
  %1485 = call i8 @nyx_string_char_at(%nyx_string* %1483, i64 %1484)
  %1486 = zext i8 %1485 to i64
  %1487 = trunc i64 %1486 to i8
  %1488 = alloca i8
  store i8 %1487, i8* %1488
  %1489 = load %nyx_string*, %nyx_string** %1435
  %1490 = load i8, i8* %1488
  %1491 = call %nyx_string* @nyx_string_from_char(i8 %1490)
  %1492 = call %nyx_string* @nyx_string_concat(%nyx_string* %1489, %nyx_string* %1491)
  store %nyx_string* %1492, %nyx_string** %1435
  %1493 = load i64, i64* %1436
  %1494 = add i64 %1493, 1
  store i64 %1494, i64* %1436
  br label %merge376
merge376:
  br label %while_cond369
while_end371:
  %1495 = load i64, i64* %1400
  %1496 = icmp sgt i64 %1495, 0
  br i1 %1496, label %then380, label %else381
then380:
  %1497 = load %nyx_string*, %nyx_string** %1399
  %1498 = load %nyx_string*, %nyx_string** %1415
  %1499 = call %nyx_string* @nyx_string_concat(%nyx_string* %1497, %nyx_string* %1498)
  store %nyx_string* %1499, %nyx_string** %1399
  br label %merge382
else381:
  br label %merge382
merge382:
  %1500 = load %nyx_string*, %nyx_string** %1399
  %1501 = load %nyx_string*, %nyx_string** %1435
  %1502 = call %nyx_string* @nyx_string_concat(%nyx_string* %1500, %nyx_string* %1501)
  store %nyx_string* %1502, %nyx_string** %1399
  br label %merge368
else367:
  %1503 = load i64, i64* %1400
  %1504 = icmp sgt i64 %1503, 0
  br i1 %1504, label %then383, label %else384
then383:
  %1505 = load %nyx_string*, %nyx_string** %1399
  %1506 = load %nyx_string*, %nyx_string** %1415
  %1507 = call %nyx_string* @nyx_string_concat(%nyx_string* %1505, %nyx_string* %1506)
  store %nyx_string* %1507, %nyx_string** %1399
  br label %merge385
else384:
  br label %merge385
merge385:
  %1508 = load %nyx_string*, %nyx_string** %1399
  %1509 = load %nyx_string*, %nyx_string** %1425
  %1510 = call %nyx_string* @nyx_string_concat(%nyx_string* %1508, %nyx_string* %1509)
  store %nyx_string* %1510, %nyx_string** %1399
  br label %merge368
merge368:
  %1511 = load i64, i64* %1400
  %1512 = add i64 %1511, 1
  store i64 %1512, i64* %1400
  br label %while_cond361
while_end363:
  %1513 = load %nyx_string*, %nyx_string** %1399
  ret %nyx_string* %1513
}

define internal %nyx_string* @strip_duplicate_structs(
%nyx_string* %source.param, i8* %declared.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %declared.ptr = alloca i8*
  store i8* %declared.param, i8** %declared.ptr
  %1514 = load %nyx_string*, %nyx_string** %source.ptr
  %1515 = getelementptr [2 x i8], [2 x i8]* @.str123, i32 0, i32 0
  %1516 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1515, i64 1)
  %1517 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1514, %nyx_string* %1516)
  %1518 = alloca { i64, i8* }*
  store { i64, i8* }* %1517, { i64, i8* }** %1518
  %1519 = getelementptr [1 x i8], [1 x i8]* @.str124, i32 0, i32 0
  %1520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1519, i64 0)
  %1521 = alloca %nyx_string*
  store %nyx_string* %1520, %nyx_string** %1521
  %1522 = alloca i64
  store i64 0, i64* %1522
  %1523 = alloca i64
  store i64 0, i64* %1523
  %1524 = getelementptr [15 x i8], [15 x i8]* @.str125, i32 0, i32 0
  %1525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1524, i64 14)
  %1526 = alloca %nyx_string*
  store %nyx_string* %1525, %nyx_string** %1526
  %1527 = getelementptr [8 x i8], [8 x i8]* @.str126, i32 0, i32 0
  %1528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1527, i64 7)
  %1529 = alloca %nyx_string*
  store %nyx_string* %1528, %nyx_string** %1529
  %1530 = getelementptr [2 x i8], [2 x i8]* @.str127, i32 0, i32 0
  %1531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1530, i64 1)
  %1532 = alloca %nyx_string*
  store %nyx_string* %1531, %nyx_string** %1532
  %1533 = getelementptr [1 x i8], [1 x i8]* @.str128, i32 0, i32 0
  %1534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1533, i64 0)
  %1535 = alloca %nyx_string*
  store %nyx_string* %1534, %nyx_string** %1535
  %1536 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %1537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1536, i64 1)
  %1538 = alloca %nyx_string*
  store %nyx_string* %1537, %nyx_string** %1538
  %1539 = call i8* @llvm.stacksave()
  br label %while_cond386
while_cond386:
  %1540 = load i64, i64* %1522
  %1541 = load { i64, i8* }*, { i64, i8* }** %1518
  %1542 = call i64 @nyx_array_length({ i64, i8* }* %1541)
  %1543 = icmp slt i64 %1540, %1542
  br i1 %1543, label %while_body387, label %while_end388
while_body387:
  call void @llvm.stackrestore(i8* %1539)
  %1544 = load { i64, i8* }*, { i64, i8* }** %1518
  %1545 = load i64, i64* %1522
  %1546 = call i64 @nyx_array_get_checked({ i64, i8* }* %1544, i64 %1545, i64 2)
  %1547 = inttoptr i64 %1546 to %nyx_string*
  %1548 = alloca %nyx_string*
  store %nyx_string* %1547, %nyx_string** %1548
  %1549 = load i64, i64* %1523
  %1550 = icmp sgt i64 %1549, 0
  br i1 %1550, label %then389, label %else390
then389:
  %1551 = alloca i64
  store i64 0, i64* %1551
  %1552 = call i8* @llvm.stacksave()
  br label %while_cond392
while_cond392:
  %1553 = load i64, i64* %1551
  %1554 = load %nyx_string*, %nyx_string** %1548
  %1555 = call i64 @nyx_string_byte_length(%nyx_string* %1554)
  %1556 = icmp slt i64 %1553, %1555
  br i1 %1556, label %while_body393, label %while_end394
while_body393:
  call void @llvm.stackrestore(i8* %1552)
  %1557 = load %nyx_string*, %nyx_string** %1548
  %1558 = load i64, i64* %1551
  %1559 = call i8 @nyx_string_char_at(%nyx_string* %1557, i64 %1558)
  %1560 = zext i8 %1559 to i64
  %1561 = trunc i64 %1560 to i8
  %1562 = alloca i8
  store i8 %1561, i8* %1562
  %1563 = load i8, i8* %1562
  %1564 = getelementptr [1 x i8], [1 x i8]* @.str130, i32 0, i32 0
  %1565 = load i8, i8* %1564
  %1566 = zext i8 %1565 to i64
  %1567 = zext i8 %1563 to i64
  %1568 = icmp eq i64 %1567, %1566
  br i1 %1568, label %then395, label %else396
then395:
  %1569 = load i64, i64* %1523
  %1570 = add i64 %1569, 1
  store i64 %1570, i64* %1523
  br label %merge397
else396:
  br label %merge397
merge397:
  %1571 = load i8, i8* %1562
  %1572 = getelementptr [1 x i8], [1 x i8]* @.str131, i32 0, i32 0
  %1573 = load i8, i8* %1572
  %1574 = zext i8 %1573 to i64
  %1575 = zext i8 %1571 to i64
  %1576 = icmp eq i64 %1575, %1574
  br i1 %1576, label %then398, label %else399
then398:
  %1577 = load i64, i64* %1523
  %1578 = sub i64 %1577, 1
  store i64 %1578, i64* %1523
  br label %merge400
else399:
  br label %merge400
merge400:
  %1579 = load i64, i64* %1551
  %1580 = add i64 %1579, 1
  store i64 %1580, i64* %1551
  br label %while_cond392
while_end394:
  br label %merge391
else390:
  %1581 = load %nyx_string*, %nyx_string** %1548
  %1582 = call %nyx_string* @nyx_string_trim(%nyx_string* %1581)
  %1583 = alloca %nyx_string*
  store %nyx_string* %1582, %nyx_string** %1583
  %1584 = load %nyx_string*, %nyx_string** %1583
  %1585 = alloca %nyx_string*
  store %nyx_string* %1584, %nyx_string** %1585
  %1586 = alloca i1
  store i1 0, i1* %1586
  %1587 = load %nyx_string*, %nyx_string** %1585
  %1588 = load %nyx_string*, %nyx_string** %1526
  %1589 = call i1 @nyx_string_starts_with(%nyx_string* %1587, %nyx_string* %1588)
  br i1 %1589, label %then401, label %else402
then401:
  %1590 = load %nyx_string*, %nyx_string** %1585
  %1591 = load %nyx_string*, %nyx_string** %1585
  %1592 = call i64 @nyx_string_byte_length(%nyx_string* %1591)
  %1593 = call %nyx_string* @nyx_string_substring(%nyx_string* %1590, i64 14, i64 %1592)
  store %nyx_string* %1593, %nyx_string** %1585
  store i1 1, i1* %1586
  br label %merge403
else402:
  %1594 = load %nyx_string*, %nyx_string** %1585
  %1595 = load %nyx_string*, %nyx_string** %1529
  %1596 = call i1 @nyx_string_starts_with(%nyx_string* %1594, %nyx_string* %1595)
  br i1 %1596, label %then404, label %else405
then404:
  %1597 = load %nyx_string*, %nyx_string** %1585
  %1598 = load %nyx_string*, %nyx_string** %1585
  %1599 = call i64 @nyx_string_byte_length(%nyx_string* %1598)
  %1600 = call %nyx_string* @nyx_string_substring(%nyx_string* %1597, i64 7, i64 %1599)
  store %nyx_string* %1600, %nyx_string** %1585
  store i1 1, i1* %1586
  br label %merge406
else405:
  br label %merge406
merge406:
  br label %merge403
merge403:
  %1601 = alloca i1
  store i1 false, i1* %1601
  %1602 = load i1, i1* %1586
  br i1 %1602, label %sc_and_rhs407, label %sc_and_end408
sc_and_rhs407:
  %1603 = load %nyx_string*, %nyx_string** %1583
  %1604 = load %nyx_string*, %nyx_string** %1532
  %1605 = call i1 @nyx_string_contains(%nyx_string* %1603, %nyx_string* %1604)
  store i1 %1605, i1* %1601
  br label %sc_and_end408
sc_and_end408:
  %1606 = load i1, i1* %1601
  br i1 %1606, label %then409, label %else410
then409:
  %1607 = load %nyx_string*, %nyx_string** %1535
  %1608 = alloca %nyx_string*
  store %nyx_string* %1607, %nyx_string** %1608
  %1609 = alloca i64
  store i64 0, i64* %1609
  %1610 = alloca i1
  store i1 0, i1* %1610
  %1611 = call i8* @llvm.stacksave()
  br label %while_cond412
while_cond412:
  %1612 = alloca i1
  store i1 false, i1* %1612
  %1613 = load i64, i64* %1609
  %1614 = load %nyx_string*, %nyx_string** %1585
  %1615 = call i64 @nyx_string_byte_length(%nyx_string* %1614)
  %1616 = icmp slt i64 %1613, %1615
  br i1 %1616, label %sc_and_rhs415, label %sc_and_end416
sc_and_rhs415:
  %1617 = load i1, i1* %1610
  %1618 = xor i1 %1617, true
  store i1 %1618, i1* %1612
  br label %sc_and_end416
sc_and_end416:
  %1619 = load i1, i1* %1612
  br i1 %1619, label %while_body413, label %while_end414
while_body413:
  call void @llvm.stackrestore(i8* %1611)
  %1620 = load %nyx_string*, %nyx_string** %1585
  %1621 = load i64, i64* %1609
  %1622 = call i8 @nyx_string_char_at(%nyx_string* %1620, i64 %1621)
  %1623 = zext i8 %1622 to i64
  %1624 = trunc i64 %1623 to i8
  %1625 = alloca i8
  store i8 %1624, i8* %1625
  %1626 = alloca i1
  store i1 true, i1* %1626
  %1627 = alloca i1
  store i1 true, i1* %1627
  %1628 = load i8, i8* %1625
  %1629 = getelementptr [1 x i8], [1 x i8]* @.str132, i32 0, i32 0
  %1630 = load i8, i8* %1629
  %1631 = zext i8 %1630 to i64
  %1632 = zext i8 %1628 to i64
  %1633 = icmp eq i64 %1632, %1631
  br i1 %1633, label %sc_or_end418, label %sc_or_rhs417
sc_or_rhs417:
  %1634 = load i8, i8* %1625
  %1635 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %1636 = load i8, i8* %1635
  %1637 = zext i8 %1636 to i64
  %1638 = zext i8 %1634 to i64
  %1639 = icmp eq i64 %1638, %1637
  store i1 %1639, i1* %1627
  br label %sc_or_end418
sc_or_end418:
  %1640 = load i1, i1* %1627
  br i1 %1640, label %sc_or_end420, label %sc_or_rhs419
sc_or_rhs419:
  %1641 = load i8, i8* %1625
  %1642 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %1643 = load i8, i8* %1642
  %1644 = zext i8 %1643 to i64
  %1645 = zext i8 %1641 to i64
  %1646 = icmp eq i64 %1645, %1644
  store i1 %1646, i1* %1626
  br label %sc_or_end420
sc_or_end420:
  %1647 = load i1, i1* %1626
  br i1 %1647, label %then421, label %else422
then421:
  store i1 1, i1* %1610
  br label %merge423
else422:
  %1648 = load %nyx_string*, %nyx_string** %1608
  %1649 = load i8, i8* %1625
  %1650 = call %nyx_string* @nyx_string_from_char(i8 %1649)
  %1651 = call %nyx_string* @nyx_string_concat(%nyx_string* %1648, %nyx_string* %1650)
  store %nyx_string* %1651, %nyx_string** %1608
  %1652 = load i64, i64* %1609
  %1653 = add i64 %1652, 1
  store i64 %1653, i64* %1609
  br label %merge423
merge423:
  br label %while_cond412
while_end414:
  %1654 = load i8*, i8** %declared.ptr
  %1655 = load %nyx_string*, %nyx_string** %1608
  %1656 = call i8* @nyx_string_to_cstr(%nyx_string* %1655)
  %1657 = call i1 @nyx_map_contains_str(i8* %1654, i8* %1656)
  br i1 %1657, label %then424, label %else425
then424:
  %1658 = alloca i64
  store i64 0, i64* %1658
  %1659 = alloca i64
  store i64 0, i64* %1659
  %1660 = call i8* @llvm.stacksave()
  br label %while_cond427
while_cond427:
  %1661 = load i64, i64* %1659
  %1662 = load %nyx_string*, %nyx_string** %1548
  %1663 = call i64 @nyx_string_byte_length(%nyx_string* %1662)
  %1664 = icmp slt i64 %1661, %1663
  br i1 %1664, label %while_body428, label %while_end429
while_body428:
  call void @llvm.stackrestore(i8* %1660)
  %1665 = load %nyx_string*, %nyx_string** %1548
  %1666 = load i64, i64* %1659
  %1667 = call i8 @nyx_string_char_at(%nyx_string* %1665, i64 %1666)
  %1668 = zext i8 %1667 to i64
  %1669 = trunc i64 %1668 to i8
  %1670 = alloca i8
  store i8 %1669, i8* %1670
  %1671 = load i8, i8* %1670
  %1672 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %1673 = load i8, i8* %1672
  %1674 = zext i8 %1673 to i64
  %1675 = zext i8 %1671 to i64
  %1676 = icmp eq i64 %1675, %1674
  br i1 %1676, label %then430, label %else431
then430:
  %1677 = load i64, i64* %1658
  %1678 = add i64 %1677, 1
  store i64 %1678, i64* %1658
  br label %merge432
else431:
  br label %merge432
merge432:
  %1679 = load i8, i8* %1670
  %1680 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %1681 = load i8, i8* %1680
  %1682 = zext i8 %1681 to i64
  %1683 = zext i8 %1679 to i64
  %1684 = icmp eq i64 %1683, %1682
  br i1 %1684, label %then433, label %else434
then433:
  %1685 = load i64, i64* %1658
  %1686 = sub i64 %1685, 1
  store i64 %1686, i64* %1658
  br label %merge435
else434:
  br label %merge435
merge435:
  %1687 = load i64, i64* %1659
  %1688 = add i64 %1687, 1
  store i64 %1688, i64* %1659
  br label %while_cond427
while_end429:
  %1689 = load i64, i64* %1658
  %1690 = icmp sgt i64 %1689, 0
  br i1 %1690, label %then436, label %else437
then436:
  %1691 = load i64, i64* %1658
  store i64 %1691, i64* %1523
  br label %merge438
else437:
  br label %merge438
merge438:
  br label %merge426
else425:
  %1692 = load i8*, i8** %declared.ptr
  %1693 = load %nyx_string*, %nyx_string** %1608
  %1694 = call i8* @nyx_string_to_cstr(%nyx_string* %1693)
  call void @nyx_map_insert_int(i8* %1692, i8* %1694, i64 1)
  %1695 = load %nyx_string*, %nyx_string** %1521
  %1696 = load %nyx_string*, %nyx_string** %1548
  %1697 = call %nyx_string* @nyx_string_concat(%nyx_string* %1695, %nyx_string* %1696)
  %1698 = load %nyx_string*, %nyx_string** %1538
  %1699 = call %nyx_string* @nyx_string_concat(%nyx_string* %1697, %nyx_string* %1698)
  store %nyx_string* %1699, %nyx_string** %1521
  br label %merge426
merge426:
  br label %merge411
else410:
  %1700 = load %nyx_string*, %nyx_string** %1521
  %1701 = load %nyx_string*, %nyx_string** %1548
  %1702 = call %nyx_string* @nyx_string_concat(%nyx_string* %1700, %nyx_string* %1701)
  %1703 = load %nyx_string*, %nyx_string** %1538
  %1704 = call %nyx_string* @nyx_string_concat(%nyx_string* %1702, %nyx_string* %1703)
  store %nyx_string* %1704, %nyx_string** %1521
  br label %merge411
merge411:
  br label %merge391
merge391:
  %1705 = load i64, i64* %1522
  %1706 = add i64 %1705, 1
  store i64 %1706, i64* %1522
  br label %while_cond386
while_end388:
  %1707 = load %nyx_string*, %nyx_string** %1521
  ret %nyx_string* %1707
}

define %nyx_string* @resolve_module_path(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1708 = getelementptr [16 x i8], [16 x i8]* @.str137, i32 0, i32 0
  %1709 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str137.c, i8* %1708, i64 15)
  %1710 = call i8* @nyx_string_to_cstr(%nyx_string* %1709)
  %1711 = call %nyx_string* @nyx_getenv(i8* %1710)
  %1712 = alloca %nyx_string*
  store %nyx_string* %1711, %nyx_string** %1712
  %1713 = load %nyx_string*, %nyx_string** %1712
  %1714 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %1715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str138.c, i8* %1714, i64 0)
  %1716 = call i1 @nyx_string_equals(%nyx_string* %1713, %nyx_string* %1715)
  %1717 = xor i1 %1716, true
  br i1 %1717, label %then439, label %else440
then439:
  %1718 = load %nyx_string*, %nyx_string** %1712
  %1719 = getelementptr [2 x i8], [2 x i8]* @.str139, i32 0, i32 0
  %1720 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1719, i64 1)
  %1721 = call %nyx_string* @nyx_string_concat(%nyx_string* %1718, %nyx_string* %1720)
  %1722 = load %nyx_string*, %nyx_string** %path.ptr
  %1723 = call %nyx_string* @nyx_string_concat(%nyx_string* %1721, %nyx_string* %1722)
  %1724 = getelementptr [4 x i8], [4 x i8]* @.str140, i32 0, i32 0
  %1725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1724, i64 3)
  %1726 = call %nyx_string* @nyx_string_concat(%nyx_string* %1723, %nyx_string* %1725)
  %1727 = alloca %nyx_string*
  store %nyx_string* %1726, %nyx_string** %1727
  %1728 = load %nyx_string*, %nyx_string** %1727
  %1729 = call i8* @nyx_string_to_cstr(%nyx_string* %1728)
  %1730 = call i1 @nyx_file_exists(i8* %1729)
  br i1 %1730, label %then442, label %else443
then442:
  %1731 = load %nyx_string*, %nyx_string** %1727
  ret %nyx_string* %1731
else443:
  br label %merge444
merge444:
  br label %merge441
else440:
  br label %merge441
merge441:
  %1732 = sub i64 0, 1
  %1733 = alloca i64
  store i64 %1732, i64* %1733
  %1734 = alloca i64
  store i64 0, i64* %1734
  %1735 = call i8* @llvm.stacksave()
  br label %while_cond445
while_cond445:
  %1736 = load i64, i64* %1734
  %1737 = load %nyx_string*, %nyx_string** %path.ptr
  %1738 = call i64 @nyx_string_byte_length(%nyx_string* %1737)
  %1739 = icmp slt i64 %1736, %1738
  br i1 %1739, label %while_body446, label %while_end447
while_body446:
  call void @llvm.stackrestore(i8* %1735)
  %1740 = load %nyx_string*, %nyx_string** %path.ptr
  %1741 = load i64, i64* %1734
  %1742 = call i8 @nyx_string_char_at(%nyx_string* %1740, i64 %1741)
  %1743 = zext i8 %1742 to i64
  %1744 = trunc i64 %1743 to i8
  %1745 = alloca i8
  store i8 %1744, i8* %1745
  %1746 = load i8, i8* %1745
  %1747 = getelementptr [1 x i8], [1 x i8]* @.str141, i32 0, i32 0
  %1748 = load i8, i8* %1747
  %1749 = zext i8 %1748 to i64
  %1750 = zext i8 %1746 to i64
  %1751 = icmp eq i64 %1750, %1749
  br i1 %1751, label %then448, label %else449
then448:
  %1752 = load i64, i64* %1734
  store i64 %1752, i64* %1733
  %1753 = load %nyx_string*, %nyx_string** %path.ptr
  %1754 = call i64 @nyx_string_byte_length(%nyx_string* %1753)
  store i64 %1754, i64* %1734
  br label %merge450
else449:
  %1755 = load i64, i64* %1734
  %1756 = add i64 %1755, 1
  store i64 %1756, i64* %1734
  br label %merge450
merge450:
  br label %while_cond445
while_end447:
  %1757 = load i64, i64* %1733
  %1758 = icmp sgt i64 %1757, 0
  br i1 %1758, label %then451, label %else452
then451:
  %1759 = load %nyx_string*, %nyx_string** %path.ptr
  %1760 = load i64, i64* %1733
  %1761 = call %nyx_string* @nyx_string_substring(%nyx_string* %1759, i64 0, i64 %1760)
  %1762 = alloca %nyx_string*
  store %nyx_string* %1761, %nyx_string** %1762
  %1763 = alloca i1
  store i1 false, i1* %1763
  %1764 = alloca i1
  store i1 false, i1* %1764
  %1765 = load %nyx_string*, %nyx_string** %1762
  %1766 = getelementptr [4 x i8], [4 x i8]* @.str142, i32 0, i32 0
  %1767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1766, i64 3)
  %1768 = call i1 @nyx_string_equals(%nyx_string* %1765, %nyx_string* %1767)
  %1769 = xor i1 %1768, true
  br i1 %1769, label %sc_and_rhs454, label %sc_and_end455
sc_and_rhs454:
  %1770 = load %nyx_string*, %nyx_string** %1762
  %1771 = getelementptr [4 x i8], [4 x i8]* @.str143, i32 0, i32 0
  %1772 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str143.c, i8* %1771, i64 3)
  %1773 = call i1 @nyx_string_equals(%nyx_string* %1770, %nyx_string* %1772)
  %1774 = xor i1 %1773, true
  store i1 %1774, i1* %1764
  br label %sc_and_end455
sc_and_end455:
  %1775 = load i1, i1* %1764
  br i1 %1775, label %sc_and_rhs456, label %sc_and_end457
sc_and_rhs456:
  %1776 = load %nyx_string*, %nyx_string** %1762
  %1777 = getelementptr [9 x i8], [9 x i8]* @.str144, i32 0, i32 0
  %1778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1777, i64 8)
  %1779 = call i1 @nyx_string_equals(%nyx_string* %1776, %nyx_string* %1778)
  %1780 = xor i1 %1779, true
  store i1 %1780, i1* %1763
  br label %sc_and_end457
sc_and_end457:
  %1781 = load i1, i1* %1763
  br i1 %1781, label %then458, label %else459
then458:
  %1782 = load %nyx_string*, %nyx_string** %1712
  %1783 = getelementptr [1 x i8], [1 x i8]* @.str145, i32 0, i32 0
  %1784 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1783, i64 0)
  %1785 = call i1 @nyx_string_equals(%nyx_string* %1782, %nyx_string* %1784)
  %1786 = xor i1 %1785, true
  br i1 %1786, label %then461, label %else462
then461:
  %1787 = load %nyx_string*, %nyx_string** %1712
  %1788 = getelementptr [11 x i8], [11 x i8]* @.str146, i32 0, i32 0
  %1789 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1788, i64 10)
  %1790 = call %nyx_string* @nyx_string_concat(%nyx_string* %1787, %nyx_string* %1789)
  %1791 = load %nyx_string*, %nyx_string** %path.ptr
  %1792 = call %nyx_string* @nyx_string_concat(%nyx_string* %1790, %nyx_string* %1791)
  %1793 = getelementptr [4 x i8], [4 x i8]* @.str147, i32 0, i32 0
  %1794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1793, i64 3)
  %1795 = call %nyx_string* @nyx_string_concat(%nyx_string* %1792, %nyx_string* %1794)
  %1796 = alloca %nyx_string*
  store %nyx_string* %1795, %nyx_string** %1796
  %1797 = load %nyx_string*, %nyx_string** %1796
  %1798 = call i8* @nyx_string_to_cstr(%nyx_string* %1797)
  %1799 = call i1 @nyx_file_exists(i8* %1798)
  br i1 %1799, label %then464, label %else465
then464:
  %1800 = load %nyx_string*, %nyx_string** %1796
  ret %nyx_string* %1800
else465:
  br label %merge466
merge466:
  br label %merge463
else462:
  br label %merge463
merge463:
  %1801 = getelementptr [10 x i8], [10 x i8]* @.str148, i32 0, i32 0
  %1802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1801, i64 9)
  %1803 = load %nyx_string*, %nyx_string** %path.ptr
  %1804 = call %nyx_string* @nyx_string_concat(%nyx_string* %1802, %nyx_string* %1803)
  %1805 = getelementptr [4 x i8], [4 x i8]* @.str149, i32 0, i32 0
  %1806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1805, i64 3)
  %1807 = call %nyx_string* @nyx_string_concat(%nyx_string* %1804, %nyx_string* %1806)
  %1808 = alloca %nyx_string*
  store %nyx_string* %1807, %nyx_string** %1808
  %1809 = load %nyx_string*, %nyx_string** %1808
  %1810 = call i8* @nyx_string_to_cstr(%nyx_string* %1809)
  %1811 = call i1 @nyx_file_exists(i8* %1810)
  br i1 %1811, label %then467, label %else468
then467:
  %1812 = load %nyx_string*, %nyx_string** %1808
  ret %nyx_string* %1812
else468:
  br label %merge469
merge469:
  br label %merge460
else459:
  br label %merge460
merge460:
  br label %merge453
else452:
  br label %merge453
merge453:
  %1813 = load %nyx_string*, %nyx_string** %path.ptr
  %1814 = getelementptr [4 x i8], [4 x i8]* @.str150, i32 0, i32 0
  %1815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1814, i64 3)
  %1816 = call %nyx_string* @nyx_string_concat(%nyx_string* %1813, %nyx_string* %1815)
  %1817 = alloca %nyx_string*
  store %nyx_string* %1816, %nyx_string** %1817
  %1818 = load %nyx_string*, %nyx_string** %1817
  %1819 = call i8* @nyx_string_to_cstr(%nyx_string* %1818)
  %1820 = call i1 @nyx_file_exists(i8* %1819)
  br i1 %1820, label %then470, label %else471
then470:
  %1821 = load %nyx_string*, %nyx_string** %1817
  ret %nyx_string* %1821
else471:
  br label %merge472
merge472:
  %1822 = getelementptr [5 x i8], [5 x i8]* @.str151, i32 0, i32 0
  %1823 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1822, i64 4)
  %1824 = load %nyx_string*, %nyx_string** %path.ptr
  %1825 = call %nyx_string* @nyx_string_concat(%nyx_string* %1823, %nyx_string* %1824)
  %1826 = getelementptr [4 x i8], [4 x i8]* @.str152, i32 0, i32 0
  %1827 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1826, i64 3)
  %1828 = call %nyx_string* @nyx_string_concat(%nyx_string* %1825, %nyx_string* %1827)
  %1829 = alloca %nyx_string*
  store %nyx_string* %1828, %nyx_string** %1829
  %1830 = load %nyx_string*, %nyx_string** %1829
  %1831 = call i8* @nyx_string_to_cstr(%nyx_string* %1830)
  %1832 = call i1 @nyx_file_exists(i8* %1831)
  br i1 %1832, label %then473, label %else474
then473:
  %1833 = load %nyx_string*, %nyx_string** %1829
  ret %nyx_string* %1833
else474:
  br label %merge475
merge475:
  %1834 = getelementptr [9 x i8], [9 x i8]* @.str153, i32 0, i32 0
  %1835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1834, i64 8)
  %1836 = call i8* @nyx_string_to_cstr(%nyx_string* %1835)
  %1837 = call %nyx_string* @nyx_getenv(i8* %1836)
  %1838 = alloca %nyx_string*
  store %nyx_string* %1837, %nyx_string** %1838
  %1839 = load %nyx_string*, %nyx_string** %1838
  %1840 = getelementptr [1 x i8], [1 x i8]* @.str154, i32 0, i32 0
  %1841 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1840, i64 0)
  %1842 = call i1 @nyx_string_equals(%nyx_string* %1839, %nyx_string* %1841)
  %1843 = xor i1 %1842, true
  br i1 %1843, label %then476, label %else477
then476:
  %1844 = load %nyx_string*, %nyx_string** %1838
  %1845 = getelementptr [6 x i8], [6 x i8]* @.str155, i32 0, i32 0
  %1846 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1845, i64 5)
  %1847 = call %nyx_string* @nyx_string_concat(%nyx_string* %1844, %nyx_string* %1846)
  %1848 = load %nyx_string*, %nyx_string** %path.ptr
  %1849 = call %nyx_string* @nyx_string_concat(%nyx_string* %1847, %nyx_string* %1848)
  %1850 = getelementptr [4 x i8], [4 x i8]* @.str156, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1850, i64 3)
  %1852 = call %nyx_string* @nyx_string_concat(%nyx_string* %1849, %nyx_string* %1851)
  %1853 = alloca %nyx_string*
  store %nyx_string* %1852, %nyx_string** %1853
  %1854 = load %nyx_string*, %nyx_string** %1853
  %1855 = call i8* @nyx_string_to_cstr(%nyx_string* %1854)
  %1856 = call i1 @nyx_file_exists(i8* %1855)
  br i1 %1856, label %then479, label %else480
then479:
  %1857 = load %nyx_string*, %nyx_string** %1853
  ret %nyx_string* %1857
else480:
  br label %merge481
merge481:
  %1858 = load %nyx_string*, %nyx_string** %1838
  %1859 = getelementptr [2 x i8], [2 x i8]* @.str157, i32 0, i32 0
  %1860 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1859, i64 1)
  %1861 = call %nyx_string* @nyx_string_concat(%nyx_string* %1858, %nyx_string* %1860)
  %1862 = load %nyx_string*, %nyx_string** %path.ptr
  %1863 = call %nyx_string* @nyx_string_concat(%nyx_string* %1861, %nyx_string* %1862)
  %1864 = getelementptr [4 x i8], [4 x i8]* @.str158, i32 0, i32 0
  %1865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1864, i64 3)
  %1866 = call %nyx_string* @nyx_string_concat(%nyx_string* %1863, %nyx_string* %1865)
  %1867 = alloca %nyx_string*
  store %nyx_string* %1866, %nyx_string** %1867
  %1868 = load %nyx_string*, %nyx_string** %1867
  %1869 = call i8* @nyx_string_to_cstr(%nyx_string* %1868)
  %1870 = call i1 @nyx_file_exists(i8* %1869)
  br i1 %1870, label %then482, label %else483
then482:
  %1871 = load %nyx_string*, %nyx_string** %1867
  ret %nyx_string* %1871
else483:
  br label %merge484
merge484:
  br label %merge478
else477:
  br label %merge478
merge478:
  %1872 = call %nyx_string* @dir_usuario_res()
  %1873 = alloca %nyx_string*
  store %nyx_string* %1872, %nyx_string** %1873
  %1874 = load %nyx_string*, %nyx_string** %1873
  %1875 = getelementptr [1 x i8], [1 x i8]* @.str159, i32 0, i32 0
  %1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1875, i64 0)
  %1877 = call i1 @nyx_string_equals(%nyx_string* %1874, %nyx_string* %1876)
  %1878 = xor i1 %1877, true
  br i1 %1878, label %then485, label %else486
then485:
  %1879 = load %nyx_string*, %nyx_string** %1873
  %1880 = getelementptr [11 x i8], [11 x i8]* @.str160, i32 0, i32 0
  %1881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1880, i64 10)
  %1882 = call %nyx_string* @nyx_string_concat(%nyx_string* %1879, %nyx_string* %1881)
  %1883 = load %nyx_string*, %nyx_string** %path.ptr
  %1884 = call %nyx_string* @nyx_string_concat(%nyx_string* %1882, %nyx_string* %1883)
  %1885 = getelementptr [4 x i8], [4 x i8]* @.str161, i32 0, i32 0
  %1886 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1885, i64 3)
  %1887 = call %nyx_string* @nyx_string_concat(%nyx_string* %1884, %nyx_string* %1886)
  %1888 = alloca %nyx_string*
  store %nyx_string* %1887, %nyx_string** %1888
  %1889 = load %nyx_string*, %nyx_string** %1888
  %1890 = call i8* @nyx_string_to_cstr(%nyx_string* %1889)
  %1891 = call i1 @nyx_file_exists(i8* %1890)
  br i1 %1891, label %then488, label %else489
then488:
  %1892 = load %nyx_string*, %nyx_string** %1888
  ret %nyx_string* %1892
else489:
  br label %merge490
merge490:
  %1893 = load %nyx_string*, %nyx_string** %1873
  %1894 = getelementptr [7 x i8], [7 x i8]* @.str162, i32 0, i32 0
  %1895 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1894, i64 6)
  %1896 = call %nyx_string* @nyx_string_concat(%nyx_string* %1893, %nyx_string* %1895)
  %1897 = load %nyx_string*, %nyx_string** %path.ptr
  %1898 = call %nyx_string* @nyx_string_concat(%nyx_string* %1896, %nyx_string* %1897)
  %1899 = getelementptr [4 x i8], [4 x i8]* @.str163, i32 0, i32 0
  %1900 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1899, i64 3)
  %1901 = call %nyx_string* @nyx_string_concat(%nyx_string* %1898, %nyx_string* %1900)
  %1902 = alloca %nyx_string*
  store %nyx_string* %1901, %nyx_string** %1902
  %1903 = load %nyx_string*, %nyx_string** %1902
  %1904 = call i8* @nyx_string_to_cstr(%nyx_string* %1903)
  %1905 = call i1 @nyx_file_exists(i8* %1904)
  br i1 %1905, label %then491, label %else492
then491:
  %1906 = load %nyx_string*, %nyx_string** %1902
  ret %nyx_string* %1906
else492:
  br label %merge493
merge493:
  br label %merge487
else486:
  br label %merge487
merge487:
  %1907 = getelementptr [1 x i8], [1 x i8]* @.str164, i32 0, i32 0
  %1908 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1907, i64 0)
  ret %nyx_string* %1908
}

define internal { i64, i8* }* @prelude_module_list(
%nyx_string* %prelude.param) {
  %prelude.ptr = alloca %nyx_string*
  store %nyx_string* %prelude.param, %nyx_string** %prelude.ptr
  %1909 = getelementptr [20 x i8], [20 x i8]* @.str165, i32 0, i32 0
  %1910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1909, i64 19)
  %1911 = alloca %nyx_string*
  store %nyx_string* %1910, %nyx_string** %1911
  %1912 = load %nyx_string*, %nyx_string** %prelude.ptr
  %1913 = load %nyx_string*, %nyx_string** %1911
  %1914 = call i64 @nyx_string_index_of(%nyx_string* %1912, %nyx_string* %1913)
  %1915 = alloca i64
  store i64 %1914, i64* %1915
  %1916 = load i64, i64* %1915
  %1917 = icmp slt i64 %1916, 0
  br i1 %1917, label %then494, label %else495
then494:
  %1918 = call { i64, i8* }* @nyx_array_new_ptr()
  %1919 = getelementptr [3 x i8], [3 x i8]* @.str166, i32 0, i32 0
  %1920 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1919, i64 2)
  %1921 = ptrtoint %nyx_string* %1920 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1918, i64 %1921, i64 2)
  %1922 = getelementptr [5 x i8], [5 x i8]* @.str167, i32 0, i32 0
  %1923 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1922, i64 4)
  %1924 = ptrtoint %nyx_string* %1923 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1918, i64 %1924, i64 2)
  %1925 = getelementptr [6 x i8], [6 x i8]* @.str168, i32 0, i32 0
  %1926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1925, i64 5)
  %1927 = ptrtoint %nyx_string* %1926 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1918, i64 %1927, i64 2)
  %1928 = getelementptr [5 x i8], [5 x i8]* @.str169, i32 0, i32 0
  %1929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1928, i64 4)
  %1930 = ptrtoint %nyx_string* %1929 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1918, i64 %1930, i64 2)
  %1931 = getelementptr [4 x i8], [4 x i8]* @.str170, i32 0, i32 0
  %1932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1931, i64 3)
  %1933 = ptrtoint %nyx_string* %1932 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1918, i64 %1933, i64 2)
  ret { i64, i8* }* %1918
else495:
  br label %merge496
merge496:
  %1934 = load %nyx_string*, %nyx_string** %prelude.ptr
  %1935 = load i64, i64* %1915
  %1936 = load %nyx_string*, %nyx_string** %1911
  %1937 = call i64 @nyx_string_byte_length(%nyx_string* %1936)
  %1938 = add i64 %1935, %1937
  %1939 = load %nyx_string*, %nyx_string** %prelude.ptr
  %1940 = call i64 @nyx_string_byte_length(%nyx_string* %1939)
  %1941 = call %nyx_string* @nyx_string_substring(%nyx_string* %1934, i64 %1938, i64 %1940)
  %1942 = alloca %nyx_string*
  store %nyx_string* %1941, %nyx_string** %1942
  %1943 = load %nyx_string*, %nyx_string** %1942
  %1944 = getelementptr [2 x i8], [2 x i8]* @.str171, i32 0, i32 0
  %1945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1944, i64 1)
  %1946 = call i64 @nyx_string_index_of(%nyx_string* %1943, %nyx_string* %1945)
  %1947 = alloca i64
  store i64 %1946, i64* %1947
  %1948 = load %nyx_string*, %nyx_string** %1942
  %1949 = alloca %nyx_string*
  store %nyx_string* %1948, %nyx_string** %1949
  %1950 = load i64, i64* %1947
  %1951 = icmp sge i64 %1950, 0
  br i1 %1951, label %then497, label %else498
then497:
  %1952 = load %nyx_string*, %nyx_string** %1942
  %1953 = load i64, i64* %1947
  %1954 = call %nyx_string* @nyx_string_substring(%nyx_string* %1952, i64 0, i64 %1953)
  store %nyx_string* %1954, %nyx_string** %1949
  br label %merge499
else498:
  br label %merge499
merge499:
  %1955 = call { i64, i8* }* @nyx_array_new_ptr()
  %1956 = alloca { i64, i8* }*
  store { i64, i8* }* %1955, { i64, i8* }** %1956
  %1957 = load %nyx_string*, %nyx_string** %1949
  %1958 = getelementptr [2 x i8], [2 x i8]* @.str172, i32 0, i32 0
  %1959 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1958, i64 1)
  %1960 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1957, %nyx_string* %1959)
  %1961 = alloca { i64, i8* }*
  store { i64, i8* }* %1960, { i64, i8* }** %1961
  %1962 = alloca i64
  store i64 0, i64* %1962
  %1963 = getelementptr [1 x i8], [1 x i8]* @.str173, i32 0, i32 0
  %1964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1963, i64 0)
  %1965 = alloca %nyx_string*
  store %nyx_string* %1964, %nyx_string** %1965
  %1966 = call i8* @llvm.stacksave()
  br label %while_cond500
while_cond500:
  %1967 = load i64, i64* %1962
  %1968 = load { i64, i8* }*, { i64, i8* }** %1961
  %1969 = call i64 @nyx_array_length({ i64, i8* }* %1968)
  %1970 = icmp slt i64 %1967, %1969
  br i1 %1970, label %while_body501, label %while_end502
while_body501:
  call void @llvm.stackrestore(i8* %1966)
  %1971 = load { i64, i8* }*, { i64, i8* }** %1961
  %1972 = load i64, i64* %1962
  %1973 = call i64 @nyx_array_get_checked({ i64, i8* }* %1971, i64 %1972, i64 2)
  %1974 = inttoptr i64 %1973 to %nyx_string*
  %1975 = alloca %nyx_string*
  store %nyx_string* %1974, %nyx_string** %1975
  %1976 = load %nyx_string*, %nyx_string** %1975
  %1977 = call %nyx_string* @nyx_string_trim(%nyx_string* %1976)
  %1978 = alloca %nyx_string*
  store %nyx_string* %1977, %nyx_string** %1978
  %1979 = load %nyx_string*, %nyx_string** %1978
  %1980 = load %nyx_string*, %nyx_string** %1965
  %1981 = call i1 @nyx_string_equals(%nyx_string* %1979, %nyx_string* %1980)
  %1982 = xor i1 %1981, true
  br i1 %1982, label %then503, label %else504
then503:
  %1983 = load { i64, i8* }*, { i64, i8* }** %1956
  %1984 = load %nyx_string*, %nyx_string** %1978
  %1985 = ptrtoint %nyx_string* %1984 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1983, i64 %1985, i64 2)
  br label %merge505
else504:
  br label %merge505
merge505:
  %1986 = load i64, i64* %1962
  %1987 = add i64 %1986, 1
  store i64 %1987, i64* %1962
  br label %while_cond500
while_end502:
  %1988 = load { i64, i8* }*, { i64, i8* }** %1956
  %1989 = call i64 @nyx_array_length({ i64, i8* }* %1988)
  %1990 = icmp eq i64 %1989, 0
  br i1 %1990, label %then506, label %else507
then506:
  %1991 = call { i64, i8* }* @nyx_array_new_ptr()
  %1992 = getelementptr [3 x i8], [3 x i8]* @.str174, i32 0, i32 0
  %1993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1992, i64 2)
  %1994 = ptrtoint %nyx_string* %1993 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1991, i64 %1994, i64 2)
  %1995 = getelementptr [5 x i8], [5 x i8]* @.str175, i32 0, i32 0
  %1996 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1995, i64 4)
  %1997 = ptrtoint %nyx_string* %1996 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1991, i64 %1997, i64 2)
  %1998 = getelementptr [6 x i8], [6 x i8]* @.str176, i32 0, i32 0
  %1999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %1998, i64 5)
  %2000 = ptrtoint %nyx_string* %1999 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1991, i64 %2000, i64 2)
  %2001 = getelementptr [5 x i8], [5 x i8]* @.str177, i32 0, i32 0
  %2002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %2001, i64 4)
  %2003 = ptrtoint %nyx_string* %2002 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1991, i64 %2003, i64 2)
  %2004 = getelementptr [4 x i8], [4 x i8]* @.str178, i32 0, i32 0
  %2005 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %2004, i64 3)
  %2006 = ptrtoint %nyx_string* %2005 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1991, i64 %2006, i64 2)
  ret { i64, i8* }* %1991
else507:
  br label %merge508
merge508:
  %2007 = load { i64, i8* }*, { i64, i8* }** %1956
  ret { i64, i8* }* %2007
}

define internal i1 @es_modulo_del_compilador(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  %2008 = alloca i1
  store i1 false, i1* %2008
  %2009 = load %nyx_string*, %nyx_string** %raw.ptr
  %2010 = getelementptr [10 x i8], [10 x i8]* @.str179, i32 0, i32 0
  %2011 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %2010, i64 9)
  %2012 = call i1 @nyx_string_contains(%nyx_string* %2009, %nyx_string* %2011)
  %2013 = xor i1 %2012, true
  br i1 %2013, label %sc_and_rhs509, label %sc_and_end510
sc_and_rhs509:
  %2014 = load %nyx_string*, %nyx_string** %raw.ptr
  %2015 = getelementptr [16 x i8], [16 x i8]* @.str180, i32 0, i32 0
  %2016 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %2015, i64 15)
  %2017 = call i1 @nyx_string_contains(%nyx_string* %2014, %nyx_string* %2016)
  %2018 = xor i1 %2017, true
  store i1 %2018, i1* %2008
  br label %sc_and_end510
sc_and_end510:
  %2019 = load i1, i1* %2008
  br i1 %2019, label %then511, label %else512
then511:
  ret i1 0
else512:
  br label %merge513
merge513:
  %2020 = load %nyx_string*, %nyx_string** %raw.ptr
  %2021 = getelementptr [2 x i8], [2 x i8]* @.str181, i32 0, i32 0
  %2022 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %2021, i64 1)
  %2023 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2020, %nyx_string* %2022)
  %2024 = alloca { i64, i8* }*
  store { i64, i8* }* %2023, { i64, i8* }** %2024
  %2025 = alloca i64
  store i64 0, i64* %2025
  %2026 = getelementptr [19 x i8], [19 x i8]* @.str182, i32 0, i32 0
  %2027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %2026, i64 18)
  %2028 = alloca %nyx_string*
  store %nyx_string* %2027, %nyx_string** %2028
  %2029 = getelementptr [8 x i8], [8 x i8]* @.str183, i32 0, i32 0
  %2030 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %2029, i64 7)
  %2031 = alloca %nyx_string*
  store %nyx_string* %2030, %nyx_string** %2031
  %2032 = getelementptr [11 x i8], [11 x i8]* @.str184, i32 0, i32 0
  %2033 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %2032, i64 10)
  %2034 = alloca %nyx_string*
  store %nyx_string* %2033, %nyx_string** %2034
  %2035 = call i8* @llvm.stacksave()
  br label %while_cond514
while_cond514:
  %2036 = load i64, i64* %2025
  %2037 = load { i64, i8* }*, { i64, i8* }** %2024
  %2038 = call i64 @nyx_array_length({ i64, i8* }* %2037)
  %2039 = icmp slt i64 %2036, %2038
  br i1 %2039, label %while_body515, label %while_end516
while_body515:
  call void @llvm.stackrestore(i8* %2035)
  %2040 = load { i64, i8* }*, { i64, i8* }** %2024
  %2041 = load i64, i64* %2025
  %2042 = call i64 @nyx_array_get_checked({ i64, i8* }* %2040, i64 %2041, i64 2)
  %2043 = inttoptr i64 %2042 to %nyx_string*
  %2044 = alloca %nyx_string*
  store %nyx_string* %2043, %nyx_string** %2044
  %2045 = load %nyx_string*, %nyx_string** %2044
  %2046 = call %nyx_string* @nyx_string_trim(%nyx_string* %2045)
  %2047 = alloca %nyx_string*
  store %nyx_string* %2046, %nyx_string** %2047
  %2048 = load %nyx_string*, %nyx_string** %2047
  %2049 = load %nyx_string*, %nyx_string** %2028
  %2050 = call i1 @nyx_string_starts_with(%nyx_string* %2048, %nyx_string* %2049)
  br i1 %2050, label %then517, label %else518
then517:
  ret i1 1
else518:
  br label %merge519
merge519:
  %2051 = alloca i1
  store i1 false, i1* %2051
  %2052 = load %nyx_string*, %nyx_string** %2047
  %2053 = load %nyx_string*, %nyx_string** %2031
  %2054 = call i1 @nyx_string_starts_with(%nyx_string* %2052, %nyx_string* %2053)
  br i1 %2054, label %sc_and_rhs520, label %sc_and_end521
sc_and_rhs520:
  %2055 = load %nyx_string*, %nyx_string** %2047
  %2056 = load %nyx_string*, %nyx_string** %2034
  %2057 = call i1 @nyx_string_contains(%nyx_string* %2055, %nyx_string* %2056)
  store i1 %2057, i1* %2051
  br label %sc_and_end521
sc_and_end521:
  %2058 = load i1, i1* %2051
  br i1 %2058, label %then522, label %else523
then522:
  ret i1 1
else523:
  br label %merge524
merge524:
  %2059 = load i64, i64* %2025
  %2060 = add i64 %2059, 1
  store i64 %2060, i64* %2025
  br label %while_cond514
while_end516:
  ret i1 0
}

define internal %nyx_string* @marca_cierre(
%nyx_string* %padre.param) {
  %padre.ptr = alloca %nyx_string*
  store %nyx_string* %padre.param, %nyx_string** %padre.ptr
  %2061 = getelementptr [13 x i8], [13 x i8]* @.str185, i32 0, i32 0
  %2062 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %2061, i64 12)
  %2063 = call i8* @nyx_string_to_cstr(%nyx_string* %2062)
  %2064 = call %nyx_string* @nyx_getenv(i8* %2063)
  %2065 = alloca %nyx_string*
  store %nyx_string* %2064, %nyx_string** %2065
  %2066 = alloca i1
  store i1 true, i1* %2066
  %2067 = load %nyx_string*, %nyx_string** %padre.ptr
  %2068 = getelementptr [1 x i8], [1 x i8]* @.str186, i32 0, i32 0
  %2069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %2068, i64 0)
  %2070 = call i1 @nyx_string_equals(%nyx_string* %2067, %nyx_string* %2069)
  br i1 %2070, label %sc_or_end526, label %sc_or_rhs525
sc_or_rhs525:
  %2071 = load %nyx_string*, %nyx_string** %padre.ptr
  %2072 = load %nyx_string*, %nyx_string** %2065
  %2073 = call i1 @nyx_string_equals(%nyx_string* %2071, %nyx_string* %2072)
  store i1 %2073, i1* %2066
  br label %sc_or_end526
sc_or_end526:
  %2074 = load i1, i1* %2066
  br i1 %2074, label %then527, label %else528
then527:
  %2075 = load %nyx_string*, %nyx_string** %2065
  %2076 = getelementptr [1 x i8], [1 x i8]* @.str187, i32 0, i32 0
  %2077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %2076, i64 0)
  %2078 = call i1 @nyx_string_equals(%nyx_string* %2075, %nyx_string* %2077)
  %2079 = xor i1 %2078, true
  br i1 %2079, label %then530, label %else531
then530:
  %2080 = getelementptr [11 x i8], [11 x i8]* @.str188, i32 0, i32 0
  %2081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %2080, i64 10)
  %2082 = load %nyx_string*, %nyx_string** %2065
  %2083 = call %nyx_string* @nyx_string_concat(%nyx_string* %2081, %nyx_string* %2082)
  %2084 = getelementptr [2 x i8], [2 x i8]* @.str189, i32 0, i32 0
  %2085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %2084, i64 1)
  %2086 = call %nyx_string* @nyx_string_concat(%nyx_string* %2083, %nyx_string* %2085)
  ret %nyx_string* %2086
else531:
  br label %merge532
merge532:
  %2087 = getelementptr [11 x i8], [11 x i8]* @.str190, i32 0, i32 0
  %2088 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %2087, i64 10)
  ret %nyx_string* %2088
else528:
  br label %merge529
merge529:
  %2089 = getelementptr [11 x i8], [11 x i8]* @.str191, i32 0, i32 0
  %2090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %2089, i64 10)
  %2091 = load %nyx_string*, %nyx_string** %padre.ptr
  %2092 = call %nyx_string* @nyx_string_concat(%nyx_string* %2090, %nyx_string* %2091)
  %2093 = getelementptr [2 x i8], [2 x i8]* @.str192, i32 0, i32 0
  %2094 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %2093, i64 1)
  %2095 = call %nyx_string* @nyx_string_concat(%nyx_string* %2092, %nyx_string* %2094)
  ret %nyx_string* %2095
}

define internal %nyx_string* @path_de_marca(
%nyx_string* %t.param) {
  %t.ptr = alloca %nyx_string*
  store %nyx_string* %t.param, %nyx_string** %t.ptr
  %2096 = load %nyx_string*, %nyx_string** %t.ptr
  %2097 = load %nyx_string*, %nyx_string** %t.ptr
  %2098 = call i64 @nyx_string_byte_length(%nyx_string* %2097)
  %2099 = call %nyx_string* @nyx_string_substring(%nyx_string* %2096, i64 9, i64 %2098)
  %2100 = alloca %nyx_string*
  store %nyx_string* %2099, %nyx_string** %2100
  %2101 = load %nyx_string*, %nyx_string** %2100
  %2102 = getelementptr [8 x i8], [8 x i8]* @.str193, i32 0, i32 0
  %2103 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %2102, i64 7)
  %2104 = call i1 @nyx_string_starts_with(%nyx_string* %2101, %nyx_string* %2103)
  br i1 %2104, label %then533, label %else534
then533:
  %2105 = load %nyx_string*, %nyx_string** %2100
  %2106 = load %nyx_string*, %nyx_string** %2100
  %2107 = call i64 @nyx_string_byte_length(%nyx_string* %2106)
  %2108 = call %nyx_string* @nyx_string_substring(%nyx_string* %2105, i64 7, i64 %2107)
  %2109 = call %nyx_string* @nyx_string_trim(%nyx_string* %2108)
  ret %nyx_string* %2109
else534:
  br label %merge535
merge535:
  %2110 = load %nyx_string*, %nyx_string** %2100
  %2111 = call %nyx_string* @nyx_string_trim(%nyx_string* %2110)
  ret %nyx_string* %2111
}

define internal %nyx_string* @import_ya_inlineado(
) {
  %2112 = getelementptr [2 x i8], [2 x i8]* @.str194, i32 0, i32 0
  %2113 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %2112, i64 1)
  ret %nyx_string* %2113
}

define %nyx_string* @resolve_source(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  %2114 = alloca i1
  store i1 false, i1* %2114
  %2115 = load %nyx_string*, %nyx_string** %raw.ptr
  %2116 = call i1 @es_modulo_del_compilador(%nyx_string* %2115)
  br i1 %2116, label %sc_and_rhs536, label %sc_and_end537
sc_and_rhs536:
  %2117 = getelementptr [20 x i8], [20 x i8]* @.str195, i32 0, i32 0
  %2118 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %2117, i64 19)
  %2119 = call i8* @nyx_string_to_cstr(%nyx_string* %2118)
  %2120 = call %nyx_string* @nyx_getenv(i8* %2119)
  %2121 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %2122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2121, i64 1)
  %2123 = call i1 @nyx_string_equals(%nyx_string* %2120, %nyx_string* %2122)
  %2124 = xor i1 %2123, true
  store i1 %2124, i1* %2114
  br label %sc_and_end537
sc_and_end537:
  %2125 = load i1, i1* %2114
  %2126 = alloca i1
  store i1 %2125, i1* %2126
  %2127 = getelementptr [13 x i8], [13 x i8]* @.str197, i32 0, i32 0
  %2128 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2127, i64 12)
  %2129 = call i8* @nyx_string_to_cstr(%nyx_string* %2128)
  %2130 = call %nyx_string* @nyx_getenv(i8* %2129)
  %2131 = getelementptr [2 x i8], [2 x i8]* @.str198, i32 0, i32 0
  %2132 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2131, i64 1)
  %2133 = call i1 @nyx_string_equals(%nyx_string* %2130, %nyx_string* %2132)
  br i1 %2133, label %then538, label %else539
then538:
  %2134 = load %nyx_string*, %nyx_string** %raw.ptr
  %2135 = call %nyx_string* @razon_no_separable(%nyx_string* %2134)
  %2136 = alloca %nyx_string*
  store %nyx_string* %2135, %nyx_string** %2136
  %2137 = load %nyx_string*, %nyx_string** %2136
  %2138 = getelementptr [1 x i8], [1 x i8]* @.str199, i32 0, i32 0
  %2139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2138, i64 0)
  %2140 = call i1 @nyx_string_equals(%nyx_string* %2137, %nyx_string* %2139)
  %2141 = xor i1 %2140, true
  br i1 %2141, label %then541, label %else542
then541:
  %2142 = getelementptr [43 x i8], [43 x i8]* @.str200, i32 0, i32 0
  %2143 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2142, i64 42)
  %2144 = load %nyx_string*, %nyx_string** %2136
  %2145 = call %nyx_string* @nyx_string_concat(%nyx_string* %2143, %nyx_string* %2144)
  %2146 = getelementptr [52 x i8], [52 x i8]* @.str201, i32 0, i32 0
  %2147 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2146, i64 51)
  %2148 = call %nyx_string* @nyx_string_concat(%nyx_string* %2145, %nyx_string* %2147)
  %2149 = getelementptr [42 x i8], [42 x i8]* @.str202, i32 0, i32 0
  %2150 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2149, i64 41)
  %2151 = load %nyx_string*, %nyx_string** %2136
  %2152 = call %nyx_string* @nyx_string_concat(%nyx_string* %2150, %nyx_string* %2151)
  %2153 = getelementptr [65 x i8], [65 x i8]* @.str203, i32 0, i32 0
  %2154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2153, i64 64)
  %2155 = call %nyx_string* @nyx_string_concat(%nyx_string* %2152, %nyx_string* %2154)
  %2156 = call %nyx_string* @nyx_msg(%nyx_string* %2148, %nyx_string* %2155)
  %2157 = call i8* @nyx_string_to_cstr(%nyx_string* %2156)
  call void @nyx_print_string(i8* %2157)
  call void @nyx_exit(i64 3)
  br label %merge543
else542:
  br label %merge543
merge543:
  br label %merge540
else539:
  br label %merge540
merge540:
  %2158 = call i8* @nyx_map_new(i32 0)
  %2159 = alloca i8*
  store i8* %2158, i8** %2159
  %2160 = call i8* @nyx_map_new(i32 0)
  %2161 = alloca i8*
  store i8* %2160, i8** %2161
  %2162 = getelementptr [1 x i8], [1 x i8]* @.str204, i32 0, i32 0
  %2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2162, i64 0)
  %2164 = alloca %nyx_string*
  store %nyx_string* %2163, %nyx_string** %2164
  %2165 = load i1, i1* %2126
  %2166 = xor i1 %2165, true
  br i1 %2166, label %then544, label %else545
then544:
  %2167 = getelementptr [12 x i8], [12 x i8]* @.str205, i32 0, i32 0
  %2168 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2167, i64 11)
  %2169 = call %nyx_string* @resolve_module_path(%nyx_string* %2168)
  %2170 = alloca %nyx_string*
  store %nyx_string* %2169, %nyx_string** %2170
  %2171 = load %nyx_string*, %nyx_string** %2170
  %2172 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %2173 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2172, i64 0)
  %2174 = call i1 @nyx_string_equals(%nyx_string* %2171, %nyx_string* %2173)
  %2175 = xor i1 %2174, true
  br i1 %2175, label %then547, label %else548
then547:
  %2176 = load %nyx_string*, %nyx_string** %2170
  %2177 = call i8* @nyx_string_to_cstr(%nyx_string* %2176)
  %2178 = call %nyx_string* @nyx_read_file(i8* %2177)
  %2179 = alloca %nyx_string*
  store %nyx_string* %2178, %nyx_string** %2179
  %2180 = load %nyx_string*, %nyx_string** %2179
  %2181 = getelementptr [2 x i8], [2 x i8]* @.str207, i32 0, i32 0
  %2182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2181, i64 1)
  %2183 = call %nyx_string* @nyx_string_concat(%nyx_string* %2180, %nyx_string* %2182)
  store %nyx_string* %2183, %nyx_string** %2164
  %2184 = load %nyx_string*, %nyx_string** %2179
  %2185 = call { i64, i8* }* @prelude_module_list(%nyx_string* %2184)
  %2186 = alloca { i64, i8* }*
  store { i64, i8* }* %2185, { i64, i8* }** %2186
  %2187 = alloca i64
  store i64 0, i64* %2187
  %2188 = call i8* @llvm.stacksave()
  br label %while_cond550
while_cond550:
  %2189 = load i64, i64* %2187
  %2190 = load { i64, i8* }*, { i64, i8* }** %2186
  %2191 = call i64 @nyx_array_length({ i64, i8* }* %2190)
  %2192 = icmp slt i64 %2189, %2191
  br i1 %2192, label %while_body551, label %while_end552
while_body551:
  call void @llvm.stackrestore(i8* %2188)
  %2193 = load { i64, i8* }*, { i64, i8* }** %2186
  %2194 = load i64, i64* %2187
  %2195 = call i64 @nyx_array_get_checked({ i64, i8* }* %2193, i64 %2194, i64 2)
  %2196 = inttoptr i64 %2195 to %nyx_string*
  %2197 = alloca %nyx_string*
  store %nyx_string* %2196, %nyx_string** %2197
  %2198 = load i8*, i8** %2159
  %2199 = getelementptr [5 x i8], [5 x i8]* @.str208, i32 0, i32 0
  %2200 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2199, i64 4)
  %2201 = load %nyx_string*, %nyx_string** %2197
  %2202 = call %nyx_string* @nyx_string_concat(%nyx_string* %2200, %nyx_string* %2201)
  %2203 = call i8* @nyx_string_to_cstr(%nyx_string* %2202)
  call void @nyx_map_insert_int(i8* %2198, i8* %2203, i64 1)
  %2204 = load i64, i64* %2187
  %2205 = add i64 %2204, 1
  store i64 %2205, i64* %2187
  br label %while_cond550
while_end552:
  %2206 = load i8*, i8** %2159
  %2207 = getelementptr [12 x i8], [12 x i8]* @.str209, i32 0, i32 0
  %2208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2207, i64 11)
  %2209 = call i8* @nyx_string_to_cstr(%nyx_string* %2208)
  call void @nyx_map_insert_int(i8* %2206, i8* %2209, i64 1)
  br label %merge549
else548:
  br label %merge549
merge549:
  br label %merge546
else545:
  br label %merge546
merge546:
  %2210 = getelementptr [13 x i8], [13 x i8]* @.str210, i32 0, i32 0
  %2211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2210, i64 12)
  %2212 = call i8* @nyx_string_to_cstr(%nyx_string* %2211)
  %2213 = call %nyx_string* @nyx_getenv(i8* %2212)
  %2214 = alloca %nyx_string*
  store %nyx_string* %2213, %nyx_string** %2214
  %2215 = load %nyx_string*, %nyx_string** %2214
  %2216 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %2217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2216, i64 0)
  %2218 = call i1 @nyx_string_equals(%nyx_string* %2215, %nyx_string* %2217)
  %2219 = xor i1 %2218, true
  br i1 %2219, label %then553, label %else554
then553:
  %2220 = load i8*, i8** %2159
  %2221 = load %nyx_string*, %nyx_string** %2214
  %2222 = call i8* @nyx_string_to_cstr(%nyx_string* %2221)
  call void @nyx_map_insert_int(i8* %2220, i8* %2222, i64 1)
  br label %merge555
else554:
  br label %merge555
merge555:
  %2223 = call i8* @nyx_sb_new(i64 1024)
  %2224 = alloca i8*
  store i8* %2223, i8** %2224
  %2225 = load %nyx_string*, %nyx_string** %raw.ptr
  %2226 = getelementptr [2 x i8], [2 x i8]* @.str212, i32 0, i32 0
  %2227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2226, i64 1)
  %2228 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2225, %nyx_string* %2227)
  %2229 = alloca { i64, i8* }*
  store { i64, i8* }* %2228, { i64, i8* }** %2229
  %2230 = call i8* @nyx_sb_new(i64 1024)
  %2231 = alloca i8*
  store i8* %2230, i8** %2231
  %2232 = alloca i64
  store i64 0, i64* %2232
  %2233 = call i8* @llvm.stacksave()
  br label %while_cond556
while_cond556:
  %2234 = load i64, i64* %2232
  %2235 = load { i64, i8* }*, { i64, i8* }** %2229
  %2236 = call i64 @nyx_array_length({ i64, i8* }* %2235)
  %2237 = icmp slt i64 %2234, %2236
  br i1 %2237, label %while_body557, label %while_end558
while_body557:
  call void @llvm.stackrestore(i8* %2233)
  %2238 = load { i64, i8* }*, { i64, i8* }** %2229
  %2239 = load i64, i64* %2232
  %2240 = call i64 @nyx_array_get_checked({ i64, i8* }* %2238, i64 %2239, i64 2)
  %2241 = inttoptr i64 %2240 to %nyx_string*
  %2242 = alloca %nyx_string*
  store %nyx_string* %2241, %nyx_string** %2242
  %2243 = load %nyx_string*, %nyx_string** %2242
  %2244 = call i1 @is_module_import(%nyx_string* %2243)
  br i1 %2244, label %then559, label %else560
then559:
  %2245 = load %nyx_string*, %nyx_string** %2242
  %2246 = call %nyx_string* @find_import_path(%nyx_string* %2245)
  %2247 = alloca %nyx_string*
  store %nyx_string* %2246, %nyx_string** %2247
  %2248 = load %nyx_string*, %nyx_string** %2247
  %2249 = getelementptr [1 x i8], [1 x i8]* @.str213, i32 0, i32 0
  %2250 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2249, i64 0)
  %2251 = call i1 @nyx_string_equals(%nyx_string* %2248, %nyx_string* %2250)
  %2252 = xor i1 %2251, true
  br i1 %2252, label %then562, label %else563
then562:
  %2253 = load %nyx_string*, %nyx_string** %2242
  %2254 = call %nyx_string* @extract_module_alias(%nyx_string* %2253)
  %2255 = alloca %nyx_string*
  store %nyx_string* %2254, %nyx_string** %2255
  %2256 = load i8*, i8** %2159
  %2257 = load %nyx_string*, %nyx_string** %2247
  %2258 = call i8* @nyx_string_to_cstr(%nyx_string* %2257)
  %2259 = call i1 @nyx_map_contains_str(i8* %2256, i8* %2258)
  %2260 = alloca i1
  store i1 %2259, i1* %2260
  %2261 = load i1, i1* %2260
  %2262 = xor i1 %2261, true
  br i1 %2262, label %then565, label %else566
then565:
  %2263 = load i8*, i8** %2159
  %2264 = load %nyx_string*, %nyx_string** %2247
  %2265 = call i8* @nyx_string_to_cstr(%nyx_string* %2264)
  call void @nyx_map_insert_int(i8* %2263, i8* %2265, i64 1)
  %2266 = load %nyx_string*, %nyx_string** %2242
  %2267 = load %nyx_string*, %nyx_string** %2247
  %2268 = call i64 @aviso_no_separable(%nyx_string* %2266, %nyx_string* %2267)
  %2269 = load %nyx_string*, %nyx_string** %2242
  %2270 = load %nyx_string*, %nyx_string** %2247
  %2271 = load i8*, i8** %2159
  %2272 = call i64 @lib_decl_registrar(%nyx_string* %2269, %nyx_string* %2270, i8* %2271)
  br label %merge567
else566:
  br label %merge567
merge567:
  %2273 = load %nyx_string*, %nyx_string** %2247
  %2274 = call %nyx_string* @resolve_module_path(%nyx_string* %2273)
  %2275 = alloca %nyx_string*
  store %nyx_string* %2274, %nyx_string** %2275
  %2276 = load %nyx_string*, %nyx_string** %2275
  %2277 = getelementptr [1 x i8], [1 x i8]* @.str214, i32 0, i32 0
  %2278 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2277, i64 0)
  %2279 = call i1 @nyx_string_equals(%nyx_string* %2276, %nyx_string* %2278)
  %2280 = xor i1 %2279, true
  br i1 %2280, label %then568, label %else569
then568:
  %2281 = load %nyx_string*, %nyx_string** %2275
  %2282 = call i8* @nyx_string_to_cstr(%nyx_string* %2281)
  %2283 = call %nyx_string* @nyx_read_file(i8* %2282)
  %2284 = alloca %nyx_string*
  store %nyx_string* %2283, %nyx_string** %2284
  %2285 = load %nyx_string*, %nyx_string** %2275
  %2286 = call %nyx_string* @detect_package_name(%nyx_string* %2285)
  %2287 = alloca %nyx_string*
  store %nyx_string* %2286, %nyx_string** %2287
  %2288 = load %nyx_string*, %nyx_string** %2287
  %2289 = getelementptr [1 x i8], [1 x i8]* @.str215, i32 0, i32 0
  %2290 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2289, i64 0)
  %2291 = call i1 @nyx_string_equals(%nyx_string* %2288, %nyx_string* %2290)
  %2292 = xor i1 %2291, true
  br i1 %2292, label %then571, label %else572
then571:
  %2293 = load %nyx_string*, %nyx_string** %2284
  %2294 = load %nyx_string*, %nyx_string** %2287
  %2295 = call %nyx_string* @rewrite_package_imports(%nyx_string* %2293, %nyx_string* %2294)
  store %nyx_string* %2295, %nyx_string** %2284
  br label %merge573
else572:
  br label %merge573
merge573:
  %2296 = load %nyx_string*, %nyx_string** %2247
  %2297 = getelementptr [10 x i8], [10 x i8]* @.str216, i32 0, i32 0
  %2298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2297, i64 9)
  %2299 = call i1 @nyx_string_contains(%nyx_string* %2296, %nyx_string* %2298)
  br i1 %2299, label %then574, label %else575
then574:
  %2300 = load %nyx_string*, %nyx_string** %2284
  %2301 = load i8*, i8** %2161
  %2302 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %2300, i8* %2301)
  store %nyx_string* %2302, %nyx_string** %2284
  br label %merge576
else575:
  br label %merge576
merge576:
  %2303 = load %nyx_string*, %nyx_string** %2284
  %2304 = call { i64, i8* }* @extract_exports(%nyx_string* %2303)
  %2305 = alloca { i64, i8* }*
  store { i64, i8* }* %2304, { i64, i8* }** %2305
  %2306 = load i8*, i8** %2224
  %2307 = getelementptr [8 x i8], [8 x i8]* @.str217, i32 0, i32 0
  %2308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2307, i64 7)
  %2309 = load %nyx_string*, %nyx_string** %2255
  %2310 = call %nyx_string* @nyx_string_concat(%nyx_string* %2308, %nyx_string* %2309)
  %2311 = getelementptr [5 x i8], [5 x i8]* @.str218, i32 0, i32 0
  %2312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2311, i64 4)
  %2313 = call %nyx_string* @nyx_string_concat(%nyx_string* %2310, %nyx_string* %2312)
  %2314 = load %nyx_string*, %nyx_string** %2247
  %2315 = call %nyx_string* @nyx_string_concat(%nyx_string* %2313, %nyx_string* %2314)
  %2316 = getelementptr [4 x i8], [4 x i8]* @.str219, i32 0, i32 0
  %2317 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2316, i64 3)
  %2318 = call %nyx_string* @nyx_string_concat(%nyx_string* %2315, %nyx_string* %2317)
  %2319 = load { i64, i8* }*, { i64, i8* }** %2305
  %2320 = getelementptr [3 x i8], [3 x i8]* @.str220, i32 0, i32 0
  %2321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2320, i64 2)
  %2322 = call %nyx_string* @nyx_string_join({ i64, i8* }* %2319, %nyx_string* %2321)
  %2323 = call %nyx_string* @nyx_string_concat(%nyx_string* %2318, %nyx_string* %2322)
  %2324 = getelementptr [3 x i8], [3 x i8]* @.str221, i32 0, i32 0
  %2325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2324, i64 2)
  %2326 = call %nyx_string* @nyx_string_concat(%nyx_string* %2323, %nyx_string* %2325)
  call void @nyx_sb_append(i8* %2306, %nyx_string* %2326)
  %2327 = load i1, i1* %2260
  %2328 = xor i1 %2327, true
  br i1 %2328, label %then577, label %else578
then577:
  %2329 = load i8*, i8** %2231
  %2330 = getelementptr [11 x i8], [11 x i8]* @.str222, i32 0, i32 0
  %2331 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2330, i64 10)
  %2332 = load %nyx_string*, %nyx_string** %2247
  %2333 = call %nyx_string* @nyx_string_concat(%nyx_string* %2331, %nyx_string* %2332)
  %2334 = getelementptr [2 x i8], [2 x i8]* @.str223, i32 0, i32 0
  %2335 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2334, i64 1)
  %2336 = call %nyx_string* @nyx_string_concat(%nyx_string* %2333, %nyx_string* %2335)
  %2337 = getelementptr [11 x i8], [11 x i8]* @.str224, i32 0, i32 0
  %2338 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2337, i64 10)
  %2339 = call %nyx_string* @nyx_string_concat(%nyx_string* %2336, %nyx_string* %2338)
  %2340 = load %nyx_string*, %nyx_string** %2284
  %2341 = call %nyx_string* @nyx_string_concat(%nyx_string* %2339, %nyx_string* %2340)
  %2342 = getelementptr [2 x i8], [2 x i8]* @.str225, i32 0, i32 0
  %2343 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2342, i64 1)
  %2344 = call %nyx_string* @nyx_string_concat(%nyx_string* %2341, %nyx_string* %2343)
  %2345 = getelementptr [1 x i8], [1 x i8]* @.str226, i32 0, i32 0
  %2346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2345, i64 0)
  %2347 = call %nyx_string* @marca_cierre(%nyx_string* %2346)
  %2348 = call %nyx_string* @nyx_string_concat(%nyx_string* %2344, %nyx_string* %2347)
  call void @nyx_sb_append(i8* %2329, %nyx_string* %2348)
  br label %merge579
else578:
  br label %merge579
merge579:
  br label %merge570
else569:
  %2349 = load %nyx_string*, %nyx_string** %2247
  %2350 = call i64 @import_not_found(%nyx_string* %2349)
  br label %merge570
merge570:
  %2351 = load i8*, i8** %2231
  %2352 = load %nyx_string*, %nyx_string** %2242
  %2353 = getelementptr [2 x i8], [2 x i8]* @.str227, i32 0, i32 0
  %2354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2353, i64 1)
  %2355 = call %nyx_string* @nyx_string_concat(%nyx_string* %2352, %nyx_string* %2354)
  %2356 = getelementptr [9 x i8], [9 x i8]* @.str228, i32 0, i32 0
  %2357 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2356, i64 8)
  %2358 = call %nyx_string* @nyx_string_concat(%nyx_string* %2355, %nyx_string* %2357)
  %2359 = load i64, i64* %2232
  %2360 = add i64 %2359, 2
  %2361 = call %nyx_string* @nyx_string_from_int(i64 %2360)
  %2362 = call %nyx_string* @nyx_string_concat(%nyx_string* %2358, %nyx_string* %2361)
  %2363 = getelementptr [2 x i8], [2 x i8]* @.str229, i32 0, i32 0
  %2364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2363, i64 1)
  %2365 = call %nyx_string* @nyx_string_concat(%nyx_string* %2362, %nyx_string* %2364)
  call void @nyx_sb_append(i8* %2351, %nyx_string* %2365)
  br label %merge564
else563:
  %2366 = load i8*, i8** %2231
  %2367 = load %nyx_string*, %nyx_string** %2242
  %2368 = getelementptr [2 x i8], [2 x i8]* @.str230, i32 0, i32 0
  %2369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2368, i64 1)
  %2370 = call %nyx_string* @nyx_string_concat(%nyx_string* %2367, %nyx_string* %2369)
  call void @nyx_sb_append(i8* %2366, %nyx_string* %2370)
  br label %merge564
merge564:
  br label %merge561
else560:
  %2371 = load %nyx_string*, %nyx_string** %2242
  %2372 = call i1 @is_user_import(%nyx_string* %2371)
  br i1 %2372, label %then580, label %else581
then580:
  %2373 = load %nyx_string*, %nyx_string** %2242
  %2374 = call %nyx_string* @find_import_path(%nyx_string* %2373)
  %2375 = alloca %nyx_string*
  store %nyx_string* %2374, %nyx_string** %2375
  %2376 = load %nyx_string*, %nyx_string** %2375
  %2377 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %2378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2377, i64 0)
  %2379 = call i1 @nyx_string_equals(%nyx_string* %2376, %nyx_string* %2378)
  %2380 = xor i1 %2379, true
  br i1 %2380, label %then583, label %else584
then583:
  %2381 = load i8*, i8** %2159
  %2382 = load %nyx_string*, %nyx_string** %2375
  %2383 = call i8* @nyx_string_to_cstr(%nyx_string* %2382)
  %2384 = call i1 @nyx_map_contains_str(i8* %2381, i8* %2383)
  %2385 = xor i1 %2384, true
  br i1 %2385, label %then586, label %else587
then586:
  %2386 = load i8*, i8** %2159
  %2387 = load %nyx_string*, %nyx_string** %2375
  %2388 = call i8* @nyx_string_to_cstr(%nyx_string* %2387)
  call void @nyx_map_insert_int(i8* %2386, i8* %2388, i64 1)
  %2389 = load %nyx_string*, %nyx_string** %2242
  %2390 = load %nyx_string*, %nyx_string** %2375
  %2391 = call i64 @aviso_no_separable(%nyx_string* %2389, %nyx_string* %2390)
  %2392 = load %nyx_string*, %nyx_string** %2242
  %2393 = load %nyx_string*, %nyx_string** %2375
  %2394 = load i8*, i8** %2159
  %2395 = call i64 @lib_decl_registrar(%nyx_string* %2392, %nyx_string* %2393, i8* %2394)
  %2396 = load %nyx_string*, %nyx_string** %2375
  %2397 = call %nyx_string* @resolve_module_path(%nyx_string* %2396)
  %2398 = alloca %nyx_string*
  store %nyx_string* %2397, %nyx_string** %2398
  %2399 = load %nyx_string*, %nyx_string** %2398
  %2400 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %2401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2400, i64 0)
  %2402 = call i1 @nyx_string_equals(%nyx_string* %2399, %nyx_string* %2401)
  %2403 = xor i1 %2402, true
  br i1 %2403, label %then589, label %else590
then589:
  %2404 = load %nyx_string*, %nyx_string** %2398
  %2405 = call i8* @nyx_string_to_cstr(%nyx_string* %2404)
  %2406 = call %nyx_string* @nyx_read_file(i8* %2405)
  %2407 = alloca %nyx_string*
  store %nyx_string* %2406, %nyx_string** %2407
  %2408 = load %nyx_string*, %nyx_string** %2398
  %2409 = call %nyx_string* @detect_package_name(%nyx_string* %2408)
  %2410 = alloca %nyx_string*
  store %nyx_string* %2409, %nyx_string** %2410
  %2411 = load %nyx_string*, %nyx_string** %2410
  %2412 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %2413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2412, i64 0)
  %2414 = call i1 @nyx_string_equals(%nyx_string* %2411, %nyx_string* %2413)
  %2415 = xor i1 %2414, true
  br i1 %2415, label %then592, label %else593
then592:
  %2416 = load %nyx_string*, %nyx_string** %2407
  %2417 = load %nyx_string*, %nyx_string** %2410
  %2418 = call %nyx_string* @rewrite_package_imports(%nyx_string* %2416, %nyx_string* %2417)
  store %nyx_string* %2418, %nyx_string** %2407
  br label %merge594
else593:
  br label %merge594
merge594:
  %2419 = load %nyx_string*, %nyx_string** %2375
  %2420 = getelementptr [10 x i8], [10 x i8]* @.str234, i32 0, i32 0
  %2421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2420, i64 9)
  %2422 = call i1 @nyx_string_contains(%nyx_string* %2419, %nyx_string* %2421)
  br i1 %2422, label %then595, label %else596
then595:
  %2423 = load %nyx_string*, %nyx_string** %2407
  %2424 = load i8*, i8** %2161
  %2425 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %2423, i8* %2424)
  store %nyx_string* %2425, %nyx_string** %2407
  br label %merge597
else596:
  br label %merge597
merge597:
  %2426 = load i8*, i8** %2231
  %2427 = getelementptr [11 x i8], [11 x i8]* @.str235, i32 0, i32 0
  %2428 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2427, i64 10)
  %2429 = load %nyx_string*, %nyx_string** %2375
  %2430 = call %nyx_string* @nyx_string_concat(%nyx_string* %2428, %nyx_string* %2429)
  %2431 = getelementptr [2 x i8], [2 x i8]* @.str236, i32 0, i32 0
  %2432 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2431, i64 1)
  %2433 = call %nyx_string* @nyx_string_concat(%nyx_string* %2430, %nyx_string* %2432)
  %2434 = getelementptr [11 x i8], [11 x i8]* @.str237, i32 0, i32 0
  %2435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2434, i64 10)
  %2436 = call %nyx_string* @nyx_string_concat(%nyx_string* %2433, %nyx_string* %2435)
  %2437 = load %nyx_string*, %nyx_string** %2407
  %2438 = call %nyx_string* @nyx_string_concat(%nyx_string* %2436, %nyx_string* %2437)
  %2439 = getelementptr [2 x i8], [2 x i8]* @.str238, i32 0, i32 0
  %2440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2439, i64 1)
  %2441 = call %nyx_string* @nyx_string_concat(%nyx_string* %2438, %nyx_string* %2440)
  %2442 = getelementptr [1 x i8], [1 x i8]* @.str239, i32 0, i32 0
  %2443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2442, i64 0)
  %2444 = call %nyx_string* @marca_cierre(%nyx_string* %2443)
  %2445 = call %nyx_string* @nyx_string_concat(%nyx_string* %2441, %nyx_string* %2444)
  %2446 = getelementptr [9 x i8], [9 x i8]* @.str240, i32 0, i32 0
  %2447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2446, i64 8)
  %2448 = call %nyx_string* @nyx_string_concat(%nyx_string* %2445, %nyx_string* %2447)
  %2449 = load i64, i64* %2232
  %2450 = add i64 %2449, 2
  %2451 = call %nyx_string* @nyx_string_from_int(i64 %2450)
  %2452 = call %nyx_string* @nyx_string_concat(%nyx_string* %2448, %nyx_string* %2451)
  %2453 = getelementptr [2 x i8], [2 x i8]* @.str241, i32 0, i32 0
  %2454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2453, i64 1)
  %2455 = call %nyx_string* @nyx_string_concat(%nyx_string* %2452, %nyx_string* %2454)
  call void @nyx_sb_append(i8* %2426, %nyx_string* %2455)
  br label %merge591
else590:
  %2456 = load %nyx_string*, %nyx_string** %2375
  %2457 = call i64 @import_not_found(%nyx_string* %2456)
  br label %merge591
merge591:
  br label %merge588
else587:
  %2458 = load i8*, i8** %2231
  %2459 = call %nyx_string* @import_ya_inlineado()
  call void @nyx_sb_append(i8* %2458, %nyx_string* %2459)
  br label %merge588
merge588:
  br label %merge585
else584:
  %2460 = load i8*, i8** %2231
  %2461 = load %nyx_string*, %nyx_string** %2242
  %2462 = getelementptr [2 x i8], [2 x i8]* @.str242, i32 0, i32 0
  %2463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2462, i64 1)
  %2464 = call %nyx_string* @nyx_string_concat(%nyx_string* %2461, %nyx_string* %2463)
  call void @nyx_sb_append(i8* %2460, %nyx_string* %2464)
  br label %merge585
merge585:
  br label %merge582
else581:
  %2465 = load i8*, i8** %2231
  %2466 = load %nyx_string*, %nyx_string** %2242
  %2467 = getelementptr [2 x i8], [2 x i8]* @.str243, i32 0, i32 0
  %2468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2467, i64 1)
  %2469 = call %nyx_string* @nyx_string_concat(%nyx_string* %2466, %nyx_string* %2468)
  call void @nyx_sb_append(i8* %2465, %nyx_string* %2469)
  br label %merge582
merge582:
  br label %merge561
merge561:
  %2470 = load i64, i64* %2232
  %2471 = add i64 %2470, 1
  store i64 %2471, i64* %2232
  br label %while_cond556
while_end558:
  %2472 = load i8*, i8** %2231
  %2473 = call %nyx_string* @nyx_sb_to_string(i8* %2472)
  %2474 = alloca %nyx_string*
  store %nyx_string* %2473, %nyx_string** %2474
  %2475 = alloca i1
  store i1 1, i1* %2475
  %2476 = call i8* @llvm.stacksave()
  br label %while_cond598
while_cond598:
  %2477 = load i1, i1* %2475
  br i1 %2477, label %while_body599, label %while_end600
while_body599:
  call void @llvm.stackrestore(i8* %2476)
  store i1 0, i1* %2475
  %2478 = load %nyx_string*, %nyx_string** %2474
  %2479 = getelementptr [2 x i8], [2 x i8]* @.str244, i32 0, i32 0
  %2480 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2479, i64 1)
  %2481 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2478, %nyx_string* %2480)
  %2482 = alloca { i64, i8* }*
  store { i64, i8* }* %2481, { i64, i8* }** %2482
  %2483 = call i8* @nyx_sb_new(i64 1024)
  %2484 = alloca i8*
  store i8* %2483, i8** %2484
  %2485 = alloca i64
  store i64 0, i64* %2485
  %2486 = alloca i64
  store i64 1, i64* %2486
  %2487 = getelementptr [1 x i8], [1 x i8]* @.str245, i32 0, i32 0
  %2488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2487, i64 0)
  %2489 = alloca %nyx_string*
  store %nyx_string* %2488, %nyx_string** %2489
  %2490 = call i8* @llvm.stacksave()
  br label %while_cond601
while_cond601:
  %2491 = load i64, i64* %2485
  %2492 = load { i64, i8* }*, { i64, i8* }** %2482
  %2493 = call i64 @nyx_array_length({ i64, i8* }* %2492)
  %2494 = icmp slt i64 %2491, %2493
  br i1 %2494, label %while_body602, label %while_end603
while_body602:
  call void @llvm.stackrestore(i8* %2490)
  %2495 = load { i64, i8* }*, { i64, i8* }** %2482
  %2496 = load i64, i64* %2485
  %2497 = call i64 @nyx_array_get_checked({ i64, i8* }* %2495, i64 %2496, i64 2)
  %2498 = inttoptr i64 %2497 to %nyx_string*
  %2499 = alloca %nyx_string*
  store %nyx_string* %2498, %nyx_string** %2499
  %2500 = load %nyx_string*, %nyx_string** %2499
  %2501 = call %nyx_string* @nyx_string_trim(%nyx_string* %2500)
  %2502 = alloca %nyx_string*
  store %nyx_string* %2501, %nyx_string** %2502
  %2503 = load %nyx_string*, %nyx_string** %2502
  %2504 = getelementptr [10 x i8], [10 x i8]* @.str246, i32 0, i32 0
  %2505 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2504, i64 9)
  %2506 = call i1 @nyx_string_starts_with(%nyx_string* %2503, %nyx_string* %2505)
  br i1 %2506, label %then604, label %else605
then604:
  %2507 = load %nyx_string*, %nyx_string** %2502
  %2508 = call %nyx_string* @path_de_marca(%nyx_string* %2507)
  store %nyx_string* %2508, %nyx_string** %2489
  br label %merge606
else605:
  br label %merge606
merge606:
  %2509 = load %nyx_string*, %nyx_string** %2502
  %2510 = getelementptr [9 x i8], [9 x i8]* @.str247, i32 0, i32 0
  %2511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2510, i64 8)
  %2512 = call i1 @nyx_string_starts_with(%nyx_string* %2509, %nyx_string* %2511)
  br i1 %2512, label %then607, label %else608
then607:
  %2513 = load %nyx_string*, %nyx_string** %2502
  %2514 = load %nyx_string*, %nyx_string** %2502
  %2515 = call i64 @nyx_string_byte_length(%nyx_string* %2514)
  %2516 = call %nyx_string* @nyx_string_substring(%nyx_string* %2513, i64 8, i64 %2515)
  %2517 = call %nyx_string* @nyx_string_trim(%nyx_string* %2516)
  %2518 = call i64 @nyx_string_to_int(%nyx_string* %2517)
  %2519 = alloca i64
  store i64 %2518, i64* %2519
  %2520 = load i64, i64* %2519
  %2521 = icmp sgt i64 %2520, 0
  br i1 %2521, label %then610, label %else611
then610:
  %2522 = load i64, i64* %2519
  store i64 %2522, i64* %2486
  br label %merge612
else611:
  br label %merge612
merge612:
  %2523 = load i8*, i8** %2484
  %2524 = load %nyx_string*, %nyx_string** %2499
  %2525 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %2526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2525, i64 1)
  %2527 = call %nyx_string* @nyx_string_concat(%nyx_string* %2524, %nyx_string* %2526)
  call void @nyx_sb_append(i8* %2523, %nyx_string* %2527)
  %2528 = load i64, i64* %2485
  %2529 = add i64 %2528, 1
  store i64 %2529, i64* %2485
  br label %merge609
else608:
  %2530 = load %nyx_string*, %nyx_string** %2499
  %2531 = call i1 @is_module_import(%nyx_string* %2530)
  br i1 %2531, label %then613, label %else614
then613:
  %2532 = load %nyx_string*, %nyx_string** %2499
  %2533 = call %nyx_string* @find_import_path(%nyx_string* %2532)
  %2534 = alloca %nyx_string*
  store %nyx_string* %2533, %nyx_string** %2534
  %2535 = alloca i1
  store i1 false, i1* %2535
  %2536 = load %nyx_string*, %nyx_string** %2534
  %2537 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %2538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2537, i64 0)
  %2539 = call i1 @nyx_string_equals(%nyx_string* %2536, %nyx_string* %2538)
  %2540 = xor i1 %2539, true
  br i1 %2540, label %sc_and_rhs616, label %sc_and_end617
sc_and_rhs616:
  %2541 = load i8*, i8** %2159
  %2542 = load %nyx_string*, %nyx_string** %2534
  %2543 = call i8* @nyx_string_to_cstr(%nyx_string* %2542)
  %2544 = call i1 @nyx_map_contains_str(i8* %2541, i8* %2543)
  %2545 = xor i1 %2544, true
  store i1 %2545, i1* %2535
  br label %sc_and_end617
sc_and_end617:
  %2546 = load i1, i1* %2535
  br i1 %2546, label %then618, label %else619
then618:
  %2547 = load i8*, i8** %2159
  %2548 = load %nyx_string*, %nyx_string** %2534
  %2549 = call i8* @nyx_string_to_cstr(%nyx_string* %2548)
  call void @nyx_map_insert_int(i8* %2547, i8* %2549, i64 1)
  %2550 = load %nyx_string*, %nyx_string** %2499
  %2551 = load %nyx_string*, %nyx_string** %2534
  %2552 = call i64 @aviso_no_separable(%nyx_string* %2550, %nyx_string* %2551)
  %2553 = load %nyx_string*, %nyx_string** %2499
  %2554 = load %nyx_string*, %nyx_string** %2534
  %2555 = load i8*, i8** %2159
  %2556 = call i64 @lib_decl_registrar(%nyx_string* %2553, %nyx_string* %2554, i8* %2555)
  store i1 1, i1* %2475
  %2557 = load %nyx_string*, %nyx_string** %2534
  %2558 = call %nyx_string* @resolve_module_path(%nyx_string* %2557)
  %2559 = alloca %nyx_string*
  store %nyx_string* %2558, %nyx_string** %2559
  %2560 = load %nyx_string*, %nyx_string** %2559
  %2561 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %2562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2561, i64 0)
  %2563 = call i1 @nyx_string_equals(%nyx_string* %2560, %nyx_string* %2562)
  %2564 = xor i1 %2563, true
  br i1 %2564, label %then621, label %else622
then621:
  %2565 = load %nyx_string*, %nyx_string** %2559
  %2566 = call i8* @nyx_string_to_cstr(%nyx_string* %2565)
  %2567 = call %nyx_string* @nyx_read_file(i8* %2566)
  %2568 = alloca %nyx_string*
  store %nyx_string* %2567, %nyx_string** %2568
  %2569 = load %nyx_string*, %nyx_string** %2559
  %2570 = call %nyx_string* @detect_package_name(%nyx_string* %2569)
  %2571 = alloca %nyx_string*
  store %nyx_string* %2570, %nyx_string** %2571
  %2572 = load %nyx_string*, %nyx_string** %2571
  %2573 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %2574 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2573, i64 0)
  %2575 = call i1 @nyx_string_equals(%nyx_string* %2572, %nyx_string* %2574)
  %2576 = xor i1 %2575, true
  br i1 %2576, label %then624, label %else625
then624:
  %2577 = load %nyx_string*, %nyx_string** %2568
  %2578 = load %nyx_string*, %nyx_string** %2571
  %2579 = call %nyx_string* @rewrite_package_imports(%nyx_string* %2577, %nyx_string* %2578)
  store %nyx_string* %2579, %nyx_string** %2568
  br label %merge626
else625:
  br label %merge626
merge626:
  %2580 = load %nyx_string*, %nyx_string** %2534
  %2581 = getelementptr [10 x i8], [10 x i8]* @.str252, i32 0, i32 0
  %2582 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2581, i64 9)
  %2583 = call i1 @nyx_string_contains(%nyx_string* %2580, %nyx_string* %2582)
  br i1 %2583, label %then627, label %else628
then627:
  %2584 = load %nyx_string*, %nyx_string** %2568
  %2585 = load i8*, i8** %2161
  %2586 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %2584, i8* %2585)
  store %nyx_string* %2586, %nyx_string** %2568
  br label %merge629
else628:
  br label %merge629
merge629:
  %2587 = load %nyx_string*, %nyx_string** %2568
  %2588 = call { i64, i8* }* @extract_exports(%nyx_string* %2587)
  %2589 = alloca { i64, i8* }*
  store { i64, i8* }* %2588, { i64, i8* }** %2589
  %2590 = load i8*, i8** %2224
  %2591 = getelementptr [8 x i8], [8 x i8]* @.str253, i32 0, i32 0
  %2592 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2591, i64 7)
  %2593 = load %nyx_string*, %nyx_string** %2499
  %2594 = call %nyx_string* @extract_module_alias(%nyx_string* %2593)
  %2595 = call %nyx_string* @nyx_string_concat(%nyx_string* %2592, %nyx_string* %2594)
  %2596 = getelementptr [5 x i8], [5 x i8]* @.str254, i32 0, i32 0
  %2597 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2596, i64 4)
  %2598 = call %nyx_string* @nyx_string_concat(%nyx_string* %2595, %nyx_string* %2597)
  %2599 = load %nyx_string*, %nyx_string** %2534
  %2600 = call %nyx_string* @nyx_string_concat(%nyx_string* %2598, %nyx_string* %2599)
  %2601 = getelementptr [4 x i8], [4 x i8]* @.str255, i32 0, i32 0
  %2602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2601, i64 3)
  %2603 = call %nyx_string* @nyx_string_concat(%nyx_string* %2600, %nyx_string* %2602)
  %2604 = load { i64, i8* }*, { i64, i8* }** %2589
  %2605 = getelementptr [3 x i8], [3 x i8]* @.str256, i32 0, i32 0
  %2606 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2605, i64 2)
  %2607 = call %nyx_string* @nyx_string_join({ i64, i8* }* %2604, %nyx_string* %2606)
  %2608 = call %nyx_string* @nyx_string_concat(%nyx_string* %2603, %nyx_string* %2607)
  %2609 = getelementptr [3 x i8], [3 x i8]* @.str257, i32 0, i32 0
  %2610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2609, i64 2)
  %2611 = call %nyx_string* @nyx_string_concat(%nyx_string* %2608, %nyx_string* %2610)
  call void @nyx_sb_append(i8* %2590, %nyx_string* %2611)
  %2612 = load i8*, i8** %2484
  %2613 = getelementptr [11 x i8], [11 x i8]* @.str258, i32 0, i32 0
  %2614 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2613, i64 10)
  %2615 = load %nyx_string*, %nyx_string** %2534
  %2616 = call %nyx_string* @nyx_string_concat(%nyx_string* %2614, %nyx_string* %2615)
  %2617 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %2618 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2617, i64 1)
  %2619 = call %nyx_string* @nyx_string_concat(%nyx_string* %2616, %nyx_string* %2618)
  %2620 = getelementptr [11 x i8], [11 x i8]* @.str260, i32 0, i32 0
  %2621 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2620, i64 10)
  %2622 = call %nyx_string* @nyx_string_concat(%nyx_string* %2619, %nyx_string* %2621)
  %2623 = load %nyx_string*, %nyx_string** %2568
  %2624 = call %nyx_string* @nyx_string_concat(%nyx_string* %2622, %nyx_string* %2623)
  %2625 = getelementptr [2 x i8], [2 x i8]* @.str261, i32 0, i32 0
  %2626 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2625, i64 1)
  %2627 = call %nyx_string* @nyx_string_concat(%nyx_string* %2624, %nyx_string* %2626)
  %2628 = load %nyx_string*, %nyx_string** %2489
  %2629 = call %nyx_string* @marca_cierre(%nyx_string* %2628)
  %2630 = call %nyx_string* @nyx_string_concat(%nyx_string* %2627, %nyx_string* %2629)
  call void @nyx_sb_append(i8* %2612, %nyx_string* %2630)
  br label %merge623
else622:
  %2631 = load %nyx_string*, %nyx_string** %2534
  %2632 = call i64 @import_not_found(%nyx_string* %2631)
  br label %merge623
merge623:
  %2633 = load i8*, i8** %2484
  %2634 = load %nyx_string*, %nyx_string** %2499
  %2635 = getelementptr [2 x i8], [2 x i8]* @.str262, i32 0, i32 0
  %2636 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2635, i64 1)
  %2637 = call %nyx_string* @nyx_string_concat(%nyx_string* %2634, %nyx_string* %2636)
  %2638 = getelementptr [9 x i8], [9 x i8]* @.str263, i32 0, i32 0
  %2639 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2638, i64 8)
  %2640 = call %nyx_string* @nyx_string_concat(%nyx_string* %2637, %nyx_string* %2639)
  %2641 = load i64, i64* %2486
  %2642 = add i64 %2641, 1
  %2643 = call %nyx_string* @nyx_string_from_int(i64 %2642)
  %2644 = call %nyx_string* @nyx_string_concat(%nyx_string* %2640, %nyx_string* %2643)
  %2645 = getelementptr [2 x i8], [2 x i8]* @.str264, i32 0, i32 0
  %2646 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2645, i64 1)
  %2647 = call %nyx_string* @nyx_string_concat(%nyx_string* %2644, %nyx_string* %2646)
  call void @nyx_sb_append(i8* %2633, %nyx_string* %2647)
  br label %merge620
else619:
  %2648 = load %nyx_string*, %nyx_string** %2499
  %2649 = call %nyx_string* @extract_module_alias(%nyx_string* %2648)
  %2650 = alloca %nyx_string*
  store %nyx_string* %2649, %nyx_string** %2650
  %2651 = alloca i1
  store i1 false, i1* %2651
  %2652 = load %nyx_string*, %nyx_string** %2534
  %2653 = getelementptr [1 x i8], [1 x i8]* @.str265, i32 0, i32 0
  %2654 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2653, i64 0)
  %2655 = call i1 @nyx_string_equals(%nyx_string* %2652, %nyx_string* %2654)
  %2656 = xor i1 %2655, true
  br i1 %2656, label %sc_and_rhs630, label %sc_and_end631
sc_and_rhs630:
  %2657 = load %nyx_string*, %nyx_string** %2650
  %2658 = getelementptr [1 x i8], [1 x i8]* @.str266, i32 0, i32 0
  %2659 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2658, i64 0)
  %2660 = call i1 @nyx_string_equals(%nyx_string* %2657, %nyx_string* %2659)
  %2661 = xor i1 %2660, true
  store i1 %2661, i1* %2651
  br label %sc_and_end631
sc_and_end631:
  %2662 = load i1, i1* %2651
  br i1 %2662, label %then632, label %else633
then632:
  %2663 = load %nyx_string*, %nyx_string** %2534
  %2664 = call %nyx_string* @resolve_module_path(%nyx_string* %2663)
  %2665 = alloca %nyx_string*
  store %nyx_string* %2664, %nyx_string** %2665
  %2666 = load %nyx_string*, %nyx_string** %2665
  %2667 = getelementptr [1 x i8], [1 x i8]* @.str267, i32 0, i32 0
  %2668 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2667, i64 0)
  %2669 = call i1 @nyx_string_equals(%nyx_string* %2666, %nyx_string* %2668)
  %2670 = xor i1 %2669, true
  br i1 %2670, label %then635, label %else636
then635:
  %2671 = load %nyx_string*, %nyx_string** %2665
  %2672 = call i8* @nyx_string_to_cstr(%nyx_string* %2671)
  %2673 = call %nyx_string* @nyx_read_file(i8* %2672)
  %2674 = alloca %nyx_string*
  store %nyx_string* %2673, %nyx_string** %2674
  %2675 = load %nyx_string*, %nyx_string** %2674
  %2676 = call { i64, i8* }* @extract_exports(%nyx_string* %2675)
  %2677 = alloca { i64, i8* }*
  store { i64, i8* }* %2676, { i64, i8* }** %2677
  %2678 = load i8*, i8** %2224
  %2679 = getelementptr [8 x i8], [8 x i8]* @.str268, i32 0, i32 0
  %2680 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2679, i64 7)
  %2681 = load %nyx_string*, %nyx_string** %2650
  %2682 = call %nyx_string* @nyx_string_concat(%nyx_string* %2680, %nyx_string* %2681)
  %2683 = getelementptr [5 x i8], [5 x i8]* @.str269, i32 0, i32 0
  %2684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2683, i64 4)
  %2685 = call %nyx_string* @nyx_string_concat(%nyx_string* %2682, %nyx_string* %2684)
  %2686 = load %nyx_string*, %nyx_string** %2534
  %2687 = call %nyx_string* @nyx_string_concat(%nyx_string* %2685, %nyx_string* %2686)
  %2688 = getelementptr [4 x i8], [4 x i8]* @.str270, i32 0, i32 0
  %2689 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2688, i64 3)
  %2690 = call %nyx_string* @nyx_string_concat(%nyx_string* %2687, %nyx_string* %2689)
  %2691 = load { i64, i8* }*, { i64, i8* }** %2677
  %2692 = getelementptr [3 x i8], [3 x i8]* @.str271, i32 0, i32 0
  %2693 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2692, i64 2)
  %2694 = call %nyx_string* @nyx_string_join({ i64, i8* }* %2691, %nyx_string* %2693)
  %2695 = call %nyx_string* @nyx_string_concat(%nyx_string* %2690, %nyx_string* %2694)
  %2696 = getelementptr [3 x i8], [3 x i8]* @.str272, i32 0, i32 0
  %2697 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2696, i64 2)
  %2698 = call %nyx_string* @nyx_string_concat(%nyx_string* %2695, %nyx_string* %2697)
  call void @nyx_sb_append(i8* %2678, %nyx_string* %2698)
  br label %merge637
else636:
  br label %merge637
merge637:
  br label %merge634
else633:
  br label %merge634
merge634:
  %2699 = load i8*, i8** %2484
  %2700 = load %nyx_string*, %nyx_string** %2499
  %2701 = getelementptr [2 x i8], [2 x i8]* @.str273, i32 0, i32 0
  %2702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2701, i64 1)
  %2703 = call %nyx_string* @nyx_string_concat(%nyx_string* %2700, %nyx_string* %2702)
  call void @nyx_sb_append(i8* %2699, %nyx_string* %2703)
  br label %merge620
merge620:
  br label %merge615
else614:
  %2704 = load %nyx_string*, %nyx_string** %2499
  %2705 = call i1 @is_user_import(%nyx_string* %2704)
  br i1 %2705, label %then638, label %else639
then638:
  %2706 = load %nyx_string*, %nyx_string** %2499
  %2707 = call %nyx_string* @find_import_path(%nyx_string* %2706)
  %2708 = alloca %nyx_string*
  store %nyx_string* %2707, %nyx_string** %2708
  %2709 = alloca i1
  store i1 false, i1* %2709
  %2710 = load %nyx_string*, %nyx_string** %2708
  %2711 = getelementptr [1 x i8], [1 x i8]* @.str274, i32 0, i32 0
  %2712 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2711, i64 0)
  %2713 = call i1 @nyx_string_equals(%nyx_string* %2710, %nyx_string* %2712)
  %2714 = xor i1 %2713, true
  br i1 %2714, label %sc_and_rhs641, label %sc_and_end642
sc_and_rhs641:
  %2715 = load i8*, i8** %2159
  %2716 = load %nyx_string*, %nyx_string** %2708
  %2717 = call i8* @nyx_string_to_cstr(%nyx_string* %2716)
  %2718 = call i1 @nyx_map_contains_str(i8* %2715, i8* %2717)
  %2719 = xor i1 %2718, true
  store i1 %2719, i1* %2709
  br label %sc_and_end642
sc_and_end642:
  %2720 = load i1, i1* %2709
  br i1 %2720, label %then643, label %else644
then643:
  %2721 = load i8*, i8** %2159
  %2722 = load %nyx_string*, %nyx_string** %2708
  %2723 = call i8* @nyx_string_to_cstr(%nyx_string* %2722)
  call void @nyx_map_insert_int(i8* %2721, i8* %2723, i64 1)
  %2724 = load %nyx_string*, %nyx_string** %2499
  %2725 = load %nyx_string*, %nyx_string** %2708
  %2726 = call i64 @aviso_no_separable(%nyx_string* %2724, %nyx_string* %2725)
  %2727 = load %nyx_string*, %nyx_string** %2499
  %2728 = load %nyx_string*, %nyx_string** %2708
  %2729 = load i8*, i8** %2159
  %2730 = call i64 @lib_decl_registrar(%nyx_string* %2727, %nyx_string* %2728, i8* %2729)
  store i1 1, i1* %2475
  %2731 = load %nyx_string*, %nyx_string** %2708
  %2732 = call %nyx_string* @resolve_module_path(%nyx_string* %2731)
  %2733 = alloca %nyx_string*
  store %nyx_string* %2732, %nyx_string** %2733
  %2734 = load %nyx_string*, %nyx_string** %2733
  %2735 = getelementptr [1 x i8], [1 x i8]* @.str275, i32 0, i32 0
  %2736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2735, i64 0)
  %2737 = call i1 @nyx_string_equals(%nyx_string* %2734, %nyx_string* %2736)
  %2738 = xor i1 %2737, true
  br i1 %2738, label %then646, label %else647
then646:
  %2739 = load %nyx_string*, %nyx_string** %2733
  %2740 = call i8* @nyx_string_to_cstr(%nyx_string* %2739)
  %2741 = call %nyx_string* @nyx_read_file(i8* %2740)
  %2742 = alloca %nyx_string*
  store %nyx_string* %2741, %nyx_string** %2742
  %2743 = load %nyx_string*, %nyx_string** %2733
  %2744 = call %nyx_string* @detect_package_name(%nyx_string* %2743)
  %2745 = alloca %nyx_string*
  store %nyx_string* %2744, %nyx_string** %2745
  %2746 = load %nyx_string*, %nyx_string** %2745
  %2747 = getelementptr [1 x i8], [1 x i8]* @.str276, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2747, i64 0)
  %2749 = call i1 @nyx_string_equals(%nyx_string* %2746, %nyx_string* %2748)
  %2750 = xor i1 %2749, true
  br i1 %2750, label %then649, label %else650
then649:
  %2751 = load %nyx_string*, %nyx_string** %2742
  %2752 = load %nyx_string*, %nyx_string** %2745
  %2753 = call %nyx_string* @rewrite_package_imports(%nyx_string* %2751, %nyx_string* %2752)
  store %nyx_string* %2753, %nyx_string** %2742
  br label %merge651
else650:
  br label %merge651
merge651:
  %2754 = load %nyx_string*, %nyx_string** %2708
  %2755 = getelementptr [10 x i8], [10 x i8]* @.str277, i32 0, i32 0
  %2756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2755, i64 9)
  %2757 = call i1 @nyx_string_contains(%nyx_string* %2754, %nyx_string* %2756)
  br i1 %2757, label %then652, label %else653
then652:
  %2758 = load %nyx_string*, %nyx_string** %2742
  %2759 = load i8*, i8** %2161
  %2760 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %2758, i8* %2759)
  store %nyx_string* %2760, %nyx_string** %2742
  br label %merge654
else653:
  br label %merge654
merge654:
  %2761 = load i8*, i8** %2484
  %2762 = getelementptr [11 x i8], [11 x i8]* @.str278, i32 0, i32 0
  %2763 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2762, i64 10)
  %2764 = load %nyx_string*, %nyx_string** %2708
  %2765 = call %nyx_string* @nyx_string_concat(%nyx_string* %2763, %nyx_string* %2764)
  %2766 = getelementptr [2 x i8], [2 x i8]* @.str279, i32 0, i32 0
  %2767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2766, i64 1)
  %2768 = call %nyx_string* @nyx_string_concat(%nyx_string* %2765, %nyx_string* %2767)
  %2769 = getelementptr [11 x i8], [11 x i8]* @.str280, i32 0, i32 0
  %2770 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2769, i64 10)
  %2771 = call %nyx_string* @nyx_string_concat(%nyx_string* %2768, %nyx_string* %2770)
  %2772 = load %nyx_string*, %nyx_string** %2742
  %2773 = call %nyx_string* @nyx_string_concat(%nyx_string* %2771, %nyx_string* %2772)
  %2774 = getelementptr [2 x i8], [2 x i8]* @.str281, i32 0, i32 0
  %2775 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2774, i64 1)
  %2776 = call %nyx_string* @nyx_string_concat(%nyx_string* %2773, %nyx_string* %2775)
  %2777 = load %nyx_string*, %nyx_string** %2489
  %2778 = call %nyx_string* @marca_cierre(%nyx_string* %2777)
  %2779 = call %nyx_string* @nyx_string_concat(%nyx_string* %2776, %nyx_string* %2778)
  %2780 = getelementptr [9 x i8], [9 x i8]* @.str282, i32 0, i32 0
  %2781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2780, i64 8)
  %2782 = call %nyx_string* @nyx_string_concat(%nyx_string* %2779, %nyx_string* %2781)
  %2783 = load i64, i64* %2486
  %2784 = add i64 %2783, 1
  %2785 = call %nyx_string* @nyx_string_from_int(i64 %2784)
  %2786 = call %nyx_string* @nyx_string_concat(%nyx_string* %2782, %nyx_string* %2785)
  %2787 = getelementptr [2 x i8], [2 x i8]* @.str283, i32 0, i32 0
  %2788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2787, i64 1)
  %2789 = call %nyx_string* @nyx_string_concat(%nyx_string* %2786, %nyx_string* %2788)
  call void @nyx_sb_append(i8* %2761, %nyx_string* %2789)
  br label %merge648
else647:
  %2790 = load %nyx_string*, %nyx_string** %2708
  %2791 = call i64 @import_not_found(%nyx_string* %2790)
  br label %merge648
merge648:
  br label %merge645
else644:
  %2792 = load %nyx_string*, %nyx_string** %2708
  %2793 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %2794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2793, i64 0)
  %2795 = call i1 @nyx_string_equals(%nyx_string* %2792, %nyx_string* %2794)
  %2796 = xor i1 %2795, true
  br i1 %2796, label %then655, label %else656
then655:
  %2797 = load i8*, i8** %2484
  %2798 = call %nyx_string* @import_ya_inlineado()
  call void @nyx_sb_append(i8* %2797, %nyx_string* %2798)
  br label %merge657
else656:
  %2799 = load i8*, i8** %2484
  %2800 = load %nyx_string*, %nyx_string** %2499
  %2801 = getelementptr [2 x i8], [2 x i8]* @.str285, i32 0, i32 0
  %2802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2801, i64 1)
  %2803 = call %nyx_string* @nyx_string_concat(%nyx_string* %2800, %nyx_string* %2802)
  call void @nyx_sb_append(i8* %2799, %nyx_string* %2803)
  br label %merge657
merge657:
  br label %merge645
merge645:
  br label %merge640
else639:
  %2804 = load i8*, i8** %2484
  %2805 = load %nyx_string*, %nyx_string** %2499
  %2806 = getelementptr [2 x i8], [2 x i8]* @.str286, i32 0, i32 0
  %2807 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2806, i64 1)
  %2808 = call %nyx_string* @nyx_string_concat(%nyx_string* %2805, %nyx_string* %2807)
  call void @nyx_sb_append(i8* %2804, %nyx_string* %2808)
  br label %merge640
merge640:
  br label %merge615
merge615:
  %2809 = load i64, i64* %2486
  %2810 = add i64 %2809, 1
  store i64 %2810, i64* %2486
  %2811 = load i64, i64* %2485
  %2812 = add i64 %2811, 1
  store i64 %2812, i64* %2485
  br label %merge609
merge609:
  br label %while_cond601
while_end603:
  %2813 = load i8*, i8** %2484
  %2814 = call %nyx_string* @nyx_sb_to_string(i8* %2813)
  store %nyx_string* %2814, %nyx_string** %2474
  br label %while_cond598
while_end600:
  %2815 = getelementptr [1 x i8], [1 x i8]* @.str287, i32 0, i32 0
  %2816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2815, i64 0)
  %2817 = alloca %nyx_string*
  store %nyx_string* %2816, %nyx_string** %2817
  %2818 = load %nyx_string*, %nyx_string** %2164
  %2819 = getelementptr [1 x i8], [1 x i8]* @.str288, i32 0, i32 0
  %2820 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2819, i64 0)
  %2821 = call i1 @nyx_string_equals(%nyx_string* %2818, %nyx_string* %2820)
  %2822 = xor i1 %2821, true
  br i1 %2822, label %then658, label %else659
then658:
  %2823 = getelementptr [17 x i8], [17 x i8]* @.str289, i32 0, i32 0
  %2824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2823, i64 16)
  store %nyx_string* %2824, %nyx_string** %2817
  br label %merge660
else659:
  br label %merge660
merge660:
  %2825 = getelementptr [1 x i8], [1 x i8]* @.str290, i32 0, i32 0
  %2826 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2825, i64 0)
  %2827 = alloca %nyx_string*
  store %nyx_string* %2826, %nyx_string** %2827
  %2828 = load i8*, i8** %2159
  %2829 = call { i64, i8* }* @nyx_map_keys_array(i8* %2828)
  %2830 = alloca { i64, i8* }*
  store { i64, i8* }* %2829, { i64, i8* }** %2830
  %2831 = alloca i64
  store i64 0, i64* %2831
  %2832 = call i8* @llvm.stacksave()
  br label %while_cond661
while_cond661:
  %2833 = load i64, i64* %2831
  %2834 = load { i64, i8* }*, { i64, i8* }** %2830
  %2835 = call i64 @nyx_array_length({ i64, i8* }* %2834)
  %2836 = icmp slt i64 %2833, %2835
  br i1 %2836, label %while_body662, label %while_end663
while_body662:
  call void @llvm.stackrestore(i8* %2832)
  %2837 = load { i64, i8* }*, { i64, i8* }** %2830
  %2838 = load i64, i64* %2831
  %2839 = call i64 @nyx_array_get_checked({ i64, i8* }* %2837, i64 %2838, i64 2)
  %2840 = inttoptr i64 %2839 to %nyx_string*
  %2841 = alloca %nyx_string*
  store %nyx_string* %2840, %nyx_string** %2841
  %2842 = load %nyx_string*, %nyx_string** %2841
  %2843 = getelementptr [9 x i8], [9 x i8]* @.str291, i32 0, i32 0
  %2844 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2843, i64 8)
  %2845 = call i1 @nyx_string_starts_with(%nyx_string* %2842, %nyx_string* %2844)
  br i1 %2845, label %then664, label %else665
then664:
  %2846 = load %nyx_string*, %nyx_string** %2827
  %2847 = getelementptr [1 x i8], [1 x i8]* @.str292, i32 0, i32 0
  %2848 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2847, i64 0)
  %2849 = call i1 @nyx_string_equals(%nyx_string* %2846, %nyx_string* %2848)
  %2850 = xor i1 %2849, true
  br i1 %2850, label %then667, label %else668
then667:
  %2851 = load %nyx_string*, %nyx_string** %2827
  %2852 = getelementptr [2 x i8], [2 x i8]* @.str293, i32 0, i32 0
  %2853 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2852, i64 1)
  %2854 = call %nyx_string* @nyx_string_concat(%nyx_string* %2851, %nyx_string* %2853)
  store %nyx_string* %2854, %nyx_string** %2827
  br label %merge669
else668:
  br label %merge669
merge669:
  %2855 = load %nyx_string*, %nyx_string** %2827
  %2856 = load %nyx_string*, %nyx_string** %2841
  %2857 = load %nyx_string*, %nyx_string** %2841
  %2858 = call i64 @nyx_string_byte_length(%nyx_string* %2857)
  %2859 = call %nyx_string* @nyx_string_substring(%nyx_string* %2856, i64 8, i64 %2858)
  %2860 = call %nyx_string* @nyx_string_concat(%nyx_string* %2855, %nyx_string* %2859)
  store %nyx_string* %2860, %nyx_string** %2827
  br label %merge666
else665:
  br label %merge666
merge666:
  %2861 = load i64, i64* %2831
  %2862 = add i64 %2861, 1
  store i64 %2862, i64* %2831
  br label %while_cond661
while_end663:
  %2863 = getelementptr [13 x i8], [13 x i8]* @.str294, i32 0, i32 0
  %2864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2863, i64 12)
  %2865 = load %nyx_string*, %nyx_string** %2827
  %2866 = call i8* @nyx_string_to_cstr(%nyx_string* %2864)
  %2867 = call i8* @nyx_string_to_cstr(%nyx_string* %2865)
  call void @nyx_setenv(i8* %2866, i8* %2867)
  %2868 = getelementptr [1 x i8], [1 x i8]* @.str295, i32 0, i32 0
  %2869 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2868, i64 0)
  %2870 = alloca %nyx_string*
  store %nyx_string* %2869, %nyx_string** %2870
  %2871 = getelementptr [13 x i8], [13 x i8]* @.str296, i32 0, i32 0
  %2872 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2871, i64 12)
  %2873 = call i8* @nyx_string_to_cstr(%nyx_string* %2872)
  %2874 = call %nyx_string* @nyx_getenv(i8* %2873)
  %2875 = getelementptr [1 x i8], [1 x i8]* @.str297, i32 0, i32 0
  %2876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2875, i64 0)
  %2877 = call i1 @nyx_string_equals(%nyx_string* %2874, %nyx_string* %2876)
  %2878 = xor i1 %2877, true
  br i1 %2878, label %then670, label %else671
then670:
  %2879 = getelementptr [1 x i8], [1 x i8]* @.str298, i32 0, i32 0
  %2880 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2879, i64 0)
  %2881 = call %nyx_string* @marca_cierre(%nyx_string* %2880)
  store %nyx_string* %2881, %nyx_string** %2870
  br label %merge672
else671:
  br label %merge672
merge672:
  %2882 = load %nyx_string*, %nyx_string** %2817
  %2883 = load %nyx_string*, %nyx_string** %2164
  %2884 = call %nyx_string* @nyx_string_concat(%nyx_string* %2882, %nyx_string* %2883)
  %2885 = load i8*, i8** %2224
  %2886 = call %nyx_string* @nyx_sb_to_string(i8* %2885)
  %2887 = call %nyx_string* @nyx_string_concat(%nyx_string* %2884, %nyx_string* %2886)
  %2888 = load %nyx_string*, %nyx_string** %2870
  %2889 = call %nyx_string* @nyx_string_concat(%nyx_string* %2887, %nyx_string* %2888)
  %2890 = getelementptr [11 x i8], [11 x i8]* @.str299, i32 0, i32 0
  %2891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2890, i64 10)
  %2892 = call %nyx_string* @nyx_string_concat(%nyx_string* %2889, %nyx_string* %2891)
  %2893 = load %nyx_string*, %nyx_string** %2474
  %2894 = call %nyx_string* @nyx_string_concat(%nyx_string* %2892, %nyx_string* %2893)
  ret %nyx_string* %2894
}

define %nyx_string* @nyx_msg(
%nyx_string* %es.param, %nyx_string* %en.param) {
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %2895 = getelementptr [9 x i8], [9 x i8]* @.str300, i32 0, i32 0
  %2896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2895, i64 8)
  %2897 = call i8* @nyx_string_to_cstr(%nyx_string* %2896)
  %2898 = call %nyx_string* @nyx_getenv(i8* %2897)
  %2899 = alloca %nyx_string*
  store %nyx_string* %2898, %nyx_string** %2899
  %2900 = load %nyx_string*, %nyx_string** %2899
  %2901 = getelementptr [3 x i8], [3 x i8]* @.str301, i32 0, i32 0
  %2902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2901, i64 2)
  %2903 = call i1 @nyx_string_equals(%nyx_string* %2900, %nyx_string* %2902)
  br i1 %2903, label %then673, label %else674
then673:
  %2904 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %2904
else674:
  br label %merge675
merge675:
  %2905 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %2905
}

define internal %nyx_string* @import_levenshtein_best(
%nyx_string* %target.param, { i64, i8* }* %candidates.param) {
  %target.ptr = alloca %nyx_string*
  store %nyx_string* %target.param, %nyx_string** %target.ptr
  %candidates.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %candidates.param, { i64, i8* }** %candidates.ptr
  %2906 = load %nyx_string*, %nyx_string** %target.ptr
  %2907 = call i64 @nyx_string_byte_length(%nyx_string* %2906)
  %2908 = alloca i64
  store i64 %2907, i64* %2908
  %2909 = load i64, i64* %2908
  %2910 = icmp eq i64 %2909, 0
  br i1 %2910, label %then676, label %else677
then676:
  %2911 = getelementptr [1 x i8], [1 x i8]* @.str302, i32 0, i32 0
  %2912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2911, i64 0)
  ret %nyx_string* %2912
else677:
  br label %merge678
merge678:
  %2913 = getelementptr [1 x i8], [1 x i8]* @.str303, i32 0, i32 0
  %2914 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2913, i64 0)
  %2915 = alloca %nyx_string*
  store %nyx_string* %2914, %nyx_string** %2915
  %2916 = alloca i64
  store i64 999, i64* %2916
  %2917 = alloca i64
  store i64 0, i64* %2917
  %2918 = call i8* @llvm.stacksave()
  br label %while_cond679
while_cond679:
  %2919 = load i64, i64* %2917
  %2920 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %2921 = call i64 @nyx_array_length({ i64, i8* }* %2920)
  %2922 = icmp slt i64 %2919, %2921
  br i1 %2922, label %while_body680, label %while_end681
while_body680:
  call void @llvm.stackrestore(i8* %2918)
  %2923 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %2924 = load i64, i64* %2917
  %2925 = call i64 @nyx_array_get_checked({ i64, i8* }* %2923, i64 %2924, i64 2)
  %2926 = inttoptr i64 %2925 to %nyx_string*
  %2927 = alloca %nyx_string*
  store %nyx_string* %2926, %nyx_string** %2927
  %2928 = load %nyx_string*, %nyx_string** %2927
  %2929 = call i64 @nyx_string_byte_length(%nyx_string* %2928)
  %2930 = alloca i64
  store i64 %2929, i64* %2930
  %2931 = call { i64, i8* }* @nyx_array_new_ptr()
  %2932 = alloca { i64, i8* }*
  store { i64, i8* }* %2931, { i64, i8* }** %2932
  %2933 = alloca i64
  store i64 0, i64* %2933
  %2934 = call i8* @llvm.stacksave()
  br label %while_cond682
while_cond682:
  %2935 = load i64, i64* %2933
  %2936 = load i64, i64* %2930
  %2937 = icmp sle i64 %2935, %2936
  br i1 %2937, label %while_body683, label %while_end684
while_body683:
  call void @llvm.stackrestore(i8* %2934)
  %2938 = load { i64, i8* }*, { i64, i8* }** %2932
  %2939 = load i64, i64* %2933
  call void @nyx_array_push_tagged({ i64, i8* }* %2938, i64 %2939, i64 1)
  %2940 = load i64, i64* %2933
  %2941 = add i64 %2940, 1
  store i64 %2941, i64* %2933
  br label %while_cond682
while_end684:
  %2942 = alloca i64
  store i64 1, i64* %2942
  %2943 = call i8* @llvm.stacksave()
  br label %while_cond685
while_cond685:
  %2944 = load i64, i64* %2942
  %2945 = load i64, i64* %2908
  %2946 = icmp sle i64 %2944, %2945
  br i1 %2946, label %while_body686, label %while_end687
while_body686:
  call void @llvm.stackrestore(i8* %2943)
  %2947 = call { i64, i8* }* @nyx_array_new_ptr()
  %2948 = alloca { i64, i8* }*
  store { i64, i8* }* %2947, { i64, i8* }** %2948
  %2949 = load { i64, i8* }*, { i64, i8* }** %2948
  %2950 = load i64, i64* %2942
  call void @nyx_array_push_tagged({ i64, i8* }* %2949, i64 %2950, i64 1)
  %2951 = load %nyx_string*, %nyx_string** %target.ptr
  %2952 = load i64, i64* %2942
  %2953 = sub i64 %2952, 1
  %2954 = call i8 @nyx_string_char_at(%nyx_string* %2951, i64 %2953)
  %2955 = zext i8 %2954 to i64
  %2956 = alloca i64
  store i64 %2955, i64* %2956
  store i64 1, i64* %2933
  %2957 = call i8* @llvm.stacksave()
  br label %while_cond688
while_cond688:
  %2958 = load i64, i64* %2933
  %2959 = load i64, i64* %2930
  %2960 = icmp sle i64 %2958, %2959
  br i1 %2960, label %while_body689, label %while_end690
while_body689:
  call void @llvm.stackrestore(i8* %2957)
  %2961 = load %nyx_string*, %nyx_string** %2927
  %2962 = load i64, i64* %2933
  %2963 = sub i64 %2962, 1
  %2964 = call i8 @nyx_string_char_at(%nyx_string* %2961, i64 %2963)
  %2965 = zext i8 %2964 to i64
  %2966 = alloca i64
  store i64 %2965, i64* %2966
  %2967 = alloca i64
  store i64 1, i64* %2967
  %2968 = load i64, i64* %2956
  %2969 = load i64, i64* %2966
  %2970 = icmp eq i64 %2968, %2969
  br i1 %2970, label %then691, label %else692
then691:
  store i64 0, i64* %2967
  br label %merge693
else692:
  br label %merge693
merge693:
  %2971 = load { i64, i8* }*, { i64, i8* }** %2948
  %2972 = load i64, i64* %2933
  %2973 = sub i64 %2972, 1
  %2974 = call i64 @nyx_array_get({ i64, i8* }* %2971, i64 %2973)
  %2975 = add i64 %2974, 1
  %2976 = alloca i64
  store i64 %2975, i64* %2976
  %2977 = load { i64, i8* }*, { i64, i8* }** %2932
  %2978 = load i64, i64* %2933
  %2979 = call i64 @nyx_array_get({ i64, i8* }* %2977, i64 %2978)
  %2980 = add i64 %2979, 1
  %2981 = alloca i64
  store i64 %2980, i64* %2981
  %2982 = load { i64, i8* }*, { i64, i8* }** %2932
  %2983 = load i64, i64* %2933
  %2984 = sub i64 %2983, 1
  %2985 = call i64 @nyx_array_get({ i64, i8* }* %2982, i64 %2984)
  %2986 = load i64, i64* %2967
  %2987 = add i64 %2985, %2986
  %2988 = alloca i64
  store i64 %2987, i64* %2988
  %2989 = load i64, i64* %2976
  %2990 = alloca i64
  store i64 %2989, i64* %2990
  %2991 = load i64, i64* %2981
  %2992 = load i64, i64* %2990
  %2993 = icmp slt i64 %2991, %2992
  br i1 %2993, label %then694, label %else695
then694:
  %2994 = load i64, i64* %2981
  store i64 %2994, i64* %2990
  br label %merge696
else695:
  br label %merge696
merge696:
  %2995 = load i64, i64* %2988
  %2996 = load i64, i64* %2990
  %2997 = icmp slt i64 %2995, %2996
  br i1 %2997, label %then697, label %else698
then697:
  %2998 = load i64, i64* %2988
  store i64 %2998, i64* %2990
  br label %merge699
else698:
  br label %merge699
merge699:
  %2999 = load { i64, i8* }*, { i64, i8* }** %2948
  %3000 = load i64, i64* %2990
  call void @nyx_array_push_tagged({ i64, i8* }* %2999, i64 %3000, i64 1)
  %3001 = load i64, i64* %2933
  %3002 = add i64 %3001, 1
  store i64 %3002, i64* %2933
  br label %while_cond688
while_end690:
  %3003 = load { i64, i8* }*, { i64, i8* }** %2948
  store { i64, i8* }* %3003, { i64, i8* }** %2932
  %3004 = load i64, i64* %2942
  %3005 = add i64 %3004, 1
  store i64 %3005, i64* %2942
  br label %while_cond685
while_end687:
  %3006 = load { i64, i8* }*, { i64, i8* }** %2932
  %3007 = load i64, i64* %2930
  %3008 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %3006, i64 %3007)
  %3009 = alloca i64
  store i64 %3008, i64* %3009
  %3010 = alloca i64
  store i64 3, i64* %3010
  %3011 = load i64, i64* %2908
  %3012 = sdiv i64 %3011, 2
  %3013 = alloca i64
  store i64 %3012, i64* %3013
  %3014 = load i64, i64* %3013
  %3015 = load i64, i64* %3010
  %3016 = icmp slt i64 %3014, %3015
  br i1 %3016, label %then700, label %else701
then700:
  %3017 = load i64, i64* %3013
  store i64 %3017, i64* %3010
  br label %merge702
else701:
  br label %merge702
merge702:
  %3018 = load i64, i64* %3010
  %3019 = icmp slt i64 %3018, 1
  br i1 %3019, label %then703, label %else704
then703:
  store i64 1, i64* %3010
  br label %merge705
else704:
  br label %merge705
merge705:
  %3020 = load i64, i64* %3009
  %3021 = load i64, i64* %3010
  %3022 = icmp sle i64 %3020, %3021
  br i1 %3022, label %then706, label %else707
then706:
  %3023 = load i64, i64* %3009
  %3024 = load i64, i64* %2916
  %3025 = icmp slt i64 %3023, %3024
  br i1 %3025, label %then709, label %else710
then709:
  %3026 = load i64, i64* %3009
  store i64 %3026, i64* %2916
  %3027 = load %nyx_string*, %nyx_string** %2927
  store %nyx_string* %3027, %nyx_string** %2915
  br label %merge711
else710:
  br label %merge711
merge711:
  br label %merge708
else707:
  br label %merge708
merge708:
  %3028 = load i64, i64* %2917
  %3029 = add i64 %3028, 1
  store i64 %3029, i64* %2917
  br label %while_cond679
while_end681:
  %3030 = load %nyx_string*, %nyx_string** %2915
  ret %nyx_string* %3030
}

define internal %nyx_string* @find_std_dir(
) {
  %3031 = getelementptr [4 x i8], [4 x i8]* @.str304, i32 0, i32 0
  %3032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %3031, i64 3)
  %3033 = call i8* @nyx_string_to_cstr(%nyx_string* %3032)
  %3034 = call i1 @nyx_file_exists(i8* %3033)
  br i1 %3034, label %then712, label %else713
then712:
  %3035 = getelementptr [4 x i8], [4 x i8]* @.str305, i32 0, i32 0
  %3036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %3035, i64 3)
  ret %nyx_string* %3036
else713:
  br label %merge714
merge714:
  %3037 = getelementptr [9 x i8], [9 x i8]* @.str306, i32 0, i32 0
  %3038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %3037, i64 8)
  %3039 = call i8* @nyx_string_to_cstr(%nyx_string* %3038)
  %3040 = call %nyx_string* @nyx_getenv(i8* %3039)
  %3041 = alloca %nyx_string*
  store %nyx_string* %3040, %nyx_string** %3041
  %3042 = alloca i1
  store i1 false, i1* %3042
  %3043 = load %nyx_string*, %nyx_string** %3041
  %3044 = getelementptr [1 x i8], [1 x i8]* @.str307, i32 0, i32 0
  %3045 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %3044, i64 0)
  %3046 = call i1 @nyx_string_equals(%nyx_string* %3043, %nyx_string* %3045)
  %3047 = xor i1 %3046, true
  br i1 %3047, label %sc_and_rhs715, label %sc_and_end716
sc_and_rhs715:
  %3048 = load %nyx_string*, %nyx_string** %3041
  %3049 = getelementptr [5 x i8], [5 x i8]* @.str308, i32 0, i32 0
  %3050 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %3049, i64 4)
  %3051 = call %nyx_string* @nyx_string_concat(%nyx_string* %3048, %nyx_string* %3050)
  %3052 = call i8* @nyx_string_to_cstr(%nyx_string* %3051)
  %3053 = call i1 @nyx_file_exists(i8* %3052)
  store i1 %3053, i1* %3042
  br label %sc_and_end716
sc_and_end716:
  %3054 = load i1, i1* %3042
  br i1 %3054, label %then717, label %else718
then717:
  %3055 = load %nyx_string*, %nyx_string** %3041
  %3056 = getelementptr [5 x i8], [5 x i8]* @.str309, i32 0, i32 0
  %3057 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %3056, i64 4)
  %3058 = call %nyx_string* @nyx_string_concat(%nyx_string* %3055, %nyx_string* %3057)
  ret %nyx_string* %3058
else718:
  br label %merge719
merge719:
  %3059 = call %nyx_string* @dir_usuario_res()
  %3060 = alloca %nyx_string*
  store %nyx_string* %3059, %nyx_string** %3060
  %3061 = alloca i1
  store i1 false, i1* %3061
  %3062 = load %nyx_string*, %nyx_string** %3060
  %3063 = getelementptr [1 x i8], [1 x i8]* @.str310, i32 0, i32 0
  %3064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %3063, i64 0)
  %3065 = call i1 @nyx_string_equals(%nyx_string* %3062, %nyx_string* %3064)
  %3066 = xor i1 %3065, true
  br i1 %3066, label %sc_and_rhs720, label %sc_and_end721
sc_and_rhs720:
  %3067 = load %nyx_string*, %nyx_string** %3060
  %3068 = getelementptr [10 x i8], [10 x i8]* @.str311, i32 0, i32 0
  %3069 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %3068, i64 9)
  %3070 = call %nyx_string* @nyx_string_concat(%nyx_string* %3067, %nyx_string* %3069)
  %3071 = call i8* @nyx_string_to_cstr(%nyx_string* %3070)
  %3072 = call i1 @nyx_file_exists(i8* %3071)
  store i1 %3072, i1* %3061
  br label %sc_and_end721
sc_and_end721:
  %3073 = load i1, i1* %3061
  br i1 %3073, label %then722, label %else723
then722:
  %3074 = load %nyx_string*, %nyx_string** %3060
  %3075 = getelementptr [10 x i8], [10 x i8]* @.str312, i32 0, i32 0
  %3076 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %3075, i64 9)
  %3077 = call %nyx_string* @nyx_string_concat(%nyx_string* %3074, %nyx_string* %3076)
  ret %nyx_string* %3077
else723:
  br label %merge724
merge724:
  %3078 = getelementptr [1 x i8], [1 x i8]* @.str313, i32 0, i32 0
  %3079 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %3078, i64 0)
  ret %nyx_string* %3079
}

define internal { i64, i8* }* @nx_basenames_in(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %3080 = call { i64, i8* }* @nyx_array_new_ptr()
  %3081 = alloca { i64, i8* }*
  store { i64, i8* }* %3080, { i64, i8* }** %3081
  %3082 = alloca i1
  store i1 true, i1* %3082
  %3083 = load %nyx_string*, %nyx_string** %dir.ptr
  %3084 = getelementptr [1 x i8], [1 x i8]* @.str314, i32 0, i32 0
  %3085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %3084, i64 0)
  %3086 = call i1 @nyx_string_equals(%nyx_string* %3083, %nyx_string* %3085)
  br i1 %3086, label %sc_or_end726, label %sc_or_rhs725
sc_or_rhs725:
  %3087 = load %nyx_string*, %nyx_string** %dir.ptr
  %3088 = call i8* @nyx_string_to_cstr(%nyx_string* %3087)
  %3089 = call i1 @nyx_file_exists(i8* %3088)
  %3090 = xor i1 %3089, true
  store i1 %3090, i1* %3082
  br label %sc_or_end726
sc_or_end726:
  %3091 = load i1, i1* %3082
  br i1 %3091, label %then727, label %else728
then727:
  %3092 = load { i64, i8* }*, { i64, i8* }** %3081
  ret { i64, i8* }* %3092
else728:
  br label %merge729
merge729:
  %3093 = load %nyx_string*, %nyx_string** %dir.ptr
  %3094 = call i8* @nyx_string_to_cstr(%nyx_string* %3093)
  %3095 = call { i64, i8* }* @nyx_readdir(i8* %3094)
  %3096 = alloca { i64, i8* }*
  store { i64, i8* }* %3095, { i64, i8* }** %3096
  %3097 = alloca i64
  store i64 0, i64* %3097
  %3098 = getelementptr [4 x i8], [4 x i8]* @.str315, i32 0, i32 0
  %3099 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %3098, i64 3)
  %3100 = alloca %nyx_string*
  store %nyx_string* %3099, %nyx_string** %3100
  %3101 = call i8* @llvm.stacksave()
  br label %while_cond730
while_cond730:
  %3102 = load i64, i64* %3097
  %3103 = load { i64, i8* }*, { i64, i8* }** %3096
  %3104 = call i64 @nyx_array_length({ i64, i8* }* %3103)
  %3105 = icmp slt i64 %3102, %3104
  br i1 %3105, label %while_body731, label %while_end732
while_body731:
  call void @llvm.stackrestore(i8* %3101)
  %3106 = load { i64, i8* }*, { i64, i8* }** %3096
  %3107 = load i64, i64* %3097
  %3108 = call i64 @nyx_array_get_checked({ i64, i8* }* %3106, i64 %3107, i64 2)
  %3109 = inttoptr i64 %3108 to %nyx_string*
  %3110 = alloca %nyx_string*
  store %nyx_string* %3109, %nyx_string** %3110
  %3111 = load %nyx_string*, %nyx_string** %3110
  %3112 = load %nyx_string*, %nyx_string** %3100
  %3113 = call i1 @nyx_string_ends_with(%nyx_string* %3111, %nyx_string* %3112)
  br i1 %3113, label %then733, label %else734
then733:
  %3114 = load { i64, i8* }*, { i64, i8* }** %3081
  %3115 = load %nyx_string*, %nyx_string** %3110
  %3116 = load %nyx_string*, %nyx_string** %3110
  %3117 = call i64 @nyx_string_byte_length(%nyx_string* %3116)
  %3118 = sub i64 %3117, 3
  %3119 = call %nyx_string* @nyx_string_substring(%nyx_string* %3115, i64 0, i64 %3118)
  %3120 = ptrtoint %nyx_string* %3119 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3114, i64 %3120, i64 2)
  br label %merge735
else734:
  br label %merge735
merge735:
  %3121 = load i64, i64* %3097
  %3122 = add i64 %3121, 1
  store i64 %3122, i64* %3097
  br label %while_cond730
while_end732:
  %3123 = load { i64, i8* }*, { i64, i8* }** %3081
  ret { i64, i8* }* %3123
}

define internal %nyx_string* @nyx_json_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %3124 = getelementptr [1 x i8], [1 x i8]* @.str316, i32 0, i32 0
  %3125 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3124, i64 0)
  %3126 = alloca %nyx_string*
  store %nyx_string* %3125, %nyx_string** %3126
  %3127 = alloca i64
  store i64 0, i64* %3127
  %3128 = alloca i64
  store i64 0, i64* %3128
  %3129 = load %nyx_string*, %nyx_string** %s.ptr
  %3130 = call i64 @nyx_string_byte_length(%nyx_string* %3129)
  %3131 = alloca i64
  store i64 %3130, i64* %3131
  %3132 = getelementptr [1 x i8], [1 x i8]* @.str317, i32 0, i32 0
  %3133 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3132, i64 0)
  %3134 = alloca %nyx_string*
  store %nyx_string* %3133, %nyx_string** %3134
  %3135 = getelementptr [3 x i8], [3 x i8]* @.str318, i32 0, i32 0
  %3136 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3135, i64 2)
  %3137 = alloca %nyx_string*
  store %nyx_string* %3136, %nyx_string** %3137
  %3138 = getelementptr [3 x i8], [3 x i8]* @.str319, i32 0, i32 0
  %3139 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3138, i64 2)
  %3140 = alloca %nyx_string*
  store %nyx_string* %3139, %nyx_string** %3140
  %3141 = getelementptr [3 x i8], [3 x i8]* @.str320, i32 0, i32 0
  %3142 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3141, i64 2)
  %3143 = alloca %nyx_string*
  store %nyx_string* %3142, %nyx_string** %3143
  %3144 = getelementptr [3 x i8], [3 x i8]* @.str321, i32 0, i32 0
  %3145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3144, i64 2)
  %3146 = alloca %nyx_string*
  store %nyx_string* %3145, %nyx_string** %3146
  %3147 = getelementptr [3 x i8], [3 x i8]* @.str322, i32 0, i32 0
  %3148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3147, i64 2)
  %3149 = alloca %nyx_string*
  store %nyx_string* %3148, %nyx_string** %3149
  %3150 = call i8* @llvm.stacksave()
  br label %while_cond736
while_cond736:
  %3151 = load i64, i64* %3128
  %3152 = load i64, i64* %3131
  %3153 = icmp slt i64 %3151, %3152
  br i1 %3153, label %while_body737, label %while_end738
while_body737:
  call void @llvm.stackrestore(i8* %3150)
  %3154 = load %nyx_string*, %nyx_string** %s.ptr
  %3155 = load i64, i64* %3128
  %3156 = call i8 @nyx_string_char_at(%nyx_string* %3154, i64 %3155)
  %3157 = zext i8 %3156 to i64
  %3158 = alloca i64
  store i64 %3157, i64* %3158
  %3159 = load %nyx_string*, %nyx_string** %3134
  %3160 = alloca %nyx_string*
  store %nyx_string* %3159, %nyx_string** %3160
  %3161 = load i64, i64* %3158
  %3162 = icmp eq i64 %3161, 34
  br i1 %3162, label %then739, label %else740
then739:
  %3163 = load %nyx_string*, %nyx_string** %3137
  store %nyx_string* %3163, %nyx_string** %3160
  br label %merge741
else740:
  br label %merge741
merge741:
  %3164 = load i64, i64* %3158
  %3165 = icmp eq i64 %3164, 92
  br i1 %3165, label %then742, label %else743
then742:
  %3166 = load %nyx_string*, %nyx_string** %3140
  store %nyx_string* %3166, %nyx_string** %3160
  br label %merge744
else743:
  br label %merge744
merge744:
  %3167 = load i64, i64* %3158
  %3168 = icmp eq i64 %3167, 10
  br i1 %3168, label %then745, label %else746
then745:
  %3169 = load %nyx_string*, %nyx_string** %3143
  store %nyx_string* %3169, %nyx_string** %3160
  br label %merge747
else746:
  br label %merge747
merge747:
  %3170 = load i64, i64* %3158
  %3171 = icmp eq i64 %3170, 13
  br i1 %3171, label %then748, label %else749
then748:
  %3172 = load %nyx_string*, %nyx_string** %3146
  store %nyx_string* %3172, %nyx_string** %3160
  br label %merge750
else749:
  br label %merge750
merge750:
  %3173 = load i64, i64* %3158
  %3174 = icmp eq i64 %3173, 9
  br i1 %3174, label %then751, label %else752
then751:
  %3175 = load %nyx_string*, %nyx_string** %3149
  store %nyx_string* %3175, %nyx_string** %3160
  br label %merge753
else752:
  br label %merge753
merge753:
  %3176 = load %nyx_string*, %nyx_string** %3160
  %3177 = load %nyx_string*, %nyx_string** %3134
  %3178 = call i1 @nyx_string_equals(%nyx_string* %3176, %nyx_string* %3177)
  %3179 = xor i1 %3178, true
  br i1 %3179, label %then754, label %else755
then754:
  %3180 = load %nyx_string*, %nyx_string** %3126
  %3181 = load %nyx_string*, %nyx_string** %s.ptr
  %3182 = load i64, i64* %3127
  %3183 = load i64, i64* %3128
  %3184 = call %nyx_string* @nyx_string_substring(%nyx_string* %3181, i64 %3182, i64 %3183)
  %3185 = call %nyx_string* @nyx_string_concat(%nyx_string* %3180, %nyx_string* %3184)
  %3186 = load %nyx_string*, %nyx_string** %3160
  %3187 = call %nyx_string* @nyx_string_concat(%nyx_string* %3185, %nyx_string* %3186)
  store %nyx_string* %3187, %nyx_string** %3126
  %3188 = load i64, i64* %3128
  %3189 = add i64 %3188, 1
  store i64 %3189, i64* %3127
  br label %merge756
else755:
  br label %merge756
merge756:
  %3190 = load i64, i64* %3128
  %3191 = add i64 %3190, 1
  store i64 %3191, i64* %3128
  br label %while_cond736
while_end738:
  %3192 = load i64, i64* %3127
  %3193 = icmp eq i64 %3192, 0
  br i1 %3193, label %then757, label %else758
then757:
  %3194 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %3194
else758:
  br label %merge759
merge759:
  %3195 = load %nyx_string*, %nyx_string** %3126
  %3196 = load %nyx_string*, %nyx_string** %s.ptr
  %3197 = load i64, i64* %3127
  %3198 = load i64, i64* %3131
  %3199 = call %nyx_string* @nyx_string_substring(%nyx_string* %3196, i64 %3197, i64 %3198)
  %3200 = call %nyx_string* @nyx_string_concat(%nyx_string* %3195, %nyx_string* %3199)
  ret %nyx_string* %3200
}

define i64 @set_resolve_soft_errors(
i1 %on.param) {
  %on.ptr = alloca i1
  store i1 %on.param, i1* %on.ptr
  %3201 = load i1, i1* %on.ptr
  store i1 %3201, i1* @g_resolve_soft
  store i64 0, i64* @g_resolve_errors
  ret i64 0
}

define i64 @get_resolve_error_count(
) {
  %3202 = load i64, i64* @g_resolve_errors
  ret i64 %3202
}

define internal i64 @import_not_found(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %3203 = load %nyx_string*, %nyx_string** %path.ptr
  %3204 = call %nyx_string* @base_name_from_path(%nyx_string* %3203)
  %3205 = alloca %nyx_string*
  store %nyx_string* %3204, %nyx_string** %3205
  %3206 = call { i64, i8* }* @nyx_array_new_ptr()
  %3207 = alloca { i64, i8* }*
  store { i64, i8* }* %3206, { i64, i8* }** %3207
  %3208 = call { i64, i8* }* @nyx_array_new_ptr()
  %3209 = alloca { i64, i8* }*
  store { i64, i8* }* %3208, { i64, i8* }** %3209
  %3210 = getelementptr [16 x i8], [16 x i8]* @.str323, i32 0, i32 0
  %3211 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3210, i64 15)
  %3212 = call i8* @nyx_string_to_cstr(%nyx_string* %3211)
  %3213 = call %nyx_string* @nyx_getenv(i8* %3212)
  %3214 = alloca %nyx_string*
  store %nyx_string* %3213, %nyx_string** %3214
  %3215 = load %nyx_string*, %nyx_string** %path.ptr
  %3216 = getelementptr [5 x i8], [5 x i8]* @.str324, i32 0, i32 0
  %3217 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3216, i64 4)
  %3218 = call i1 @nyx_string_starts_with(%nyx_string* %3215, %nyx_string* %3217)
  br i1 %3218, label %then760, label %else761
then760:
  %3219 = call %nyx_string* @find_std_dir()
  %3220 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %3219)
  store { i64, i8* }* %3220, { i64, i8* }** %3207
  br label %merge762
else761:
  %3221 = load %nyx_string*, %nyx_string** %path.ptr
  %3222 = getelementptr [5 x i8], [5 x i8]* @.str325, i32 0, i32 0
  %3223 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3222, i64 4)
  %3224 = call i1 @nyx_string_starts_with(%nyx_string* %3221, %nyx_string* %3223)
  br i1 %3224, label %then763, label %else764
then763:
  %3225 = load %nyx_string*, %nyx_string** %3214
  %3226 = getelementptr [1 x i8], [1 x i8]* @.str326, i32 0, i32 0
  %3227 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3226, i64 0)
  %3228 = call i1 @nyx_string_equals(%nyx_string* %3225, %nyx_string* %3227)
  %3229 = xor i1 %3228, true
  br i1 %3229, label %then766, label %else767
then766:
  %3230 = load %nyx_string*, %nyx_string** %3214
  %3231 = getelementptr [5 x i8], [5 x i8]* @.str327, i32 0, i32 0
  %3232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3231, i64 4)
  %3233 = call %nyx_string* @nyx_string_concat(%nyx_string* %3230, %nyx_string* %3232)
  %3234 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %3233)
  store { i64, i8* }* %3234, { i64, i8* }** %3209
  br label %merge768
else767:
  br label %merge768
merge768:
  br label %merge765
else764:
  %3235 = call %nyx_string* @find_std_dir()
  %3236 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %3235)
  store { i64, i8* }* %3236, { i64, i8* }** %3207
  %3237 = load %nyx_string*, %nyx_string** %3214
  %3238 = getelementptr [1 x i8], [1 x i8]* @.str328, i32 0, i32 0
  %3239 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3238, i64 0)
  %3240 = call i1 @nyx_string_equals(%nyx_string* %3237, %nyx_string* %3239)
  %3241 = xor i1 %3240, true
  br i1 %3241, label %then769, label %else770
then769:
  %3242 = load %nyx_string*, %nyx_string** %3214
  %3243 = getelementptr [5 x i8], [5 x i8]* @.str329, i32 0, i32 0
  %3244 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3243, i64 4)
  %3245 = call %nyx_string* @nyx_string_concat(%nyx_string* %3242, %nyx_string* %3244)
  %3246 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %3245)
  store { i64, i8* }* %3246, { i64, i8* }** %3209
  br label %merge771
else770:
  br label %merge771
merge771:
  br label %merge765
merge765:
  br label %merge762
merge762:
  %3247 = call { i64, i8* }* @nyx_array_new_ptr()
  %3248 = alloca { i64, i8* }*
  store { i64, i8* }* %3247, { i64, i8* }** %3248
  %3249 = alloca i64
  store i64 0, i64* %3249
  %3250 = call i8* @llvm.stacksave()
  br label %while_cond772
while_cond772:
  %3251 = load i64, i64* %3249
  %3252 = load { i64, i8* }*, { i64, i8* }** %3207
  %3253 = call i64 @nyx_array_length({ i64, i8* }* %3252)
  %3254 = icmp slt i64 %3251, %3253
  br i1 %3254, label %while_body773, label %while_end774
while_body773:
  call void @llvm.stackrestore(i8* %3250)
  %3255 = load { i64, i8* }*, { i64, i8* }** %3248
  %3256 = load { i64, i8* }*, { i64, i8* }** %3207
  %3257 = load i64, i64* %3249
  %3258 = call i64 @nyx_array_get({ i64, i8* }* %3256, i64 %3257)
  %3259 = load { i64, i8* }*, { i64, i8* }** %3207
  %3260 = load i64, i64* %3249
  %3261 = call i64 @nyx_array_get_tag({ i64, i8* }* %3259, i64 %3260)
  call void @nyx_array_push_tagged({ i64, i8* }* %3255, i64 %3258, i64 %3261)
  %3262 = load i64, i64* %3249
  %3263 = add i64 %3262, 1
  store i64 %3263, i64* %3249
  br label %while_cond772
while_end774:
  store i64 0, i64* %3249
  %3264 = call i8* @llvm.stacksave()
  br label %while_cond775
while_cond775:
  %3265 = load i64, i64* %3249
  %3266 = load { i64, i8* }*, { i64, i8* }** %3209
  %3267 = call i64 @nyx_array_length({ i64, i8* }* %3266)
  %3268 = icmp slt i64 %3265, %3267
  br i1 %3268, label %while_body776, label %while_end777
while_body776:
  call void @llvm.stackrestore(i8* %3264)
  %3269 = load { i64, i8* }*, { i64, i8* }** %3248
  %3270 = load { i64, i8* }*, { i64, i8* }** %3209
  %3271 = load i64, i64* %3249
  %3272 = call i64 @nyx_array_get({ i64, i8* }* %3270, i64 %3271)
  %3273 = load { i64, i8* }*, { i64, i8* }** %3209
  %3274 = load i64, i64* %3249
  %3275 = call i64 @nyx_array_get_tag({ i64, i8* }* %3273, i64 %3274)
  call void @nyx_array_push_tagged({ i64, i8* }* %3269, i64 %3272, i64 %3275)
  %3276 = load i64, i64* %3249
  %3277 = add i64 %3276, 1
  store i64 %3277, i64* %3249
  br label %while_cond775
while_end777:
  %3278 = getelementptr [1 x i8], [1 x i8]* @.str330, i32 0, i32 0
  %3279 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3278, i64 0)
  %3280 = alloca %nyx_string*
  store %nyx_string* %3279, %nyx_string** %3280
  %3281 = alloca i1
  store i1 false, i1* %3281
  %3282 = load %nyx_string*, %nyx_string** %3205
  %3283 = getelementptr [1 x i8], [1 x i8]* @.str331, i32 0, i32 0
  %3284 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3283, i64 0)
  %3285 = call i1 @nyx_string_equals(%nyx_string* %3282, %nyx_string* %3284)
  %3286 = xor i1 %3285, true
  br i1 %3286, label %sc_and_rhs778, label %sc_and_end779
sc_and_rhs778:
  %3287 = load { i64, i8* }*, { i64, i8* }** %3248
  %3288 = call i64 @nyx_array_length({ i64, i8* }* %3287)
  %3289 = icmp sgt i64 %3288, 0
  store i1 %3289, i1* %3281
  br label %sc_and_end779
sc_and_end779:
  %3290 = load i1, i1* %3281
  br i1 %3290, label %then780, label %else781
then780:
  %3291 = load %nyx_string*, %nyx_string** %3205
  %3292 = load { i64, i8* }*, { i64, i8* }** %3248
  %3293 = call %nyx_string* @import_levenshtein_best(%nyx_string* %3291, { i64, i8* }* %3292)
  store %nyx_string* %3293, %nyx_string** %3280
  br label %merge782
else781:
  br label %merge782
merge782:
  %3294 = getelementptr [1 x i8], [1 x i8]* @.str332, i32 0, i32 0
  %3295 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3294, i64 0)
  %3296 = alloca %nyx_string*
  store %nyx_string* %3295, %nyx_string** %3296
  %3297 = load %nyx_string*, %nyx_string** %path.ptr
  %3298 = getelementptr [5 x i8], [5 x i8]* @.str333, i32 0, i32 0
  %3299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3298, i64 4)
  %3300 = call i1 @nyx_string_starts_with(%nyx_string* %3297, %nyx_string* %3299)
  %3301 = xor i1 %3300, true
  br i1 %3301, label %then783, label %else784
then783:
  %3302 = getelementptr [5 x i8], [5 x i8]* @.str334, i32 0, i32 0
  %3303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3302, i64 4)
  %3304 = load %nyx_string*, %nyx_string** %path.ptr
  %3305 = call %nyx_string* @nyx_string_concat(%nyx_string* %3303, %nyx_string* %3304)
  store %nyx_string* %3305, %nyx_string** %3296
  br label %merge785
else784:
  br label %merge785
merge785:
  %3306 = load %nyx_string*, %nyx_string** %3280
  %3307 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %3308 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3307, i64 0)
  %3309 = call i1 @nyx_string_equals(%nyx_string* %3306, %nyx_string* %3308)
  %3310 = xor i1 %3309, true
  br i1 %3310, label %then786, label %else787
then786:
  %3311 = load %nyx_string*, %nyx_string** %path.ptr
  %3312 = getelementptr [5 x i8], [5 x i8]* @.str336, i32 0, i32 0
  %3313 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3312, i64 4)
  %3314 = call i1 @nyx_string_starts_with(%nyx_string* %3311, %nyx_string* %3313)
  br i1 %3314, label %then789, label %else790
then789:
  %3315 = getelementptr [5 x i8], [5 x i8]* @.str337, i32 0, i32 0
  %3316 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3315, i64 4)
  %3317 = load %nyx_string*, %nyx_string** %3280
  %3318 = call %nyx_string* @nyx_string_concat(%nyx_string* %3316, %nyx_string* %3317)
  store %nyx_string* %3318, %nyx_string** %3296
  br label %merge791
else790:
  %3319 = load %nyx_string*, %nyx_string** %path.ptr
  %3320 = getelementptr [5 x i8], [5 x i8]* @.str338, i32 0, i32 0
  %3321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3320, i64 4)
  %3322 = call i1 @nyx_string_starts_with(%nyx_string* %3319, %nyx_string* %3321)
  br i1 %3322, label %then792, label %else793
then792:
  %3323 = getelementptr [5 x i8], [5 x i8]* @.str339, i32 0, i32 0
  %3324 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3323, i64 4)
  %3325 = load %nyx_string*, %nyx_string** %3280
  %3326 = call %nyx_string* @nyx_string_concat(%nyx_string* %3324, %nyx_string* %3325)
  store %nyx_string* %3326, %nyx_string** %3296
  br label %merge794
else793:
  %3327 = load { i64, i8* }*, { i64, i8* }** %3207
  %3328 = load %nyx_string*, %nyx_string** %3280
  %3329 = ptrtoint %nyx_string* %3328 to i64
  %3330 = call i64 @nyx_array_contains_tagged({ i64, i8* }* %3327, i64 %3329, i64 2)
  %3331 = trunc i64 %3330 to i1
  br i1 %3331, label %then795, label %else796
then795:
  %3332 = getelementptr [5 x i8], [5 x i8]* @.str340, i32 0, i32 0
  %3333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3332, i64 4)
  %3334 = load %nyx_string*, %nyx_string** %3280
  %3335 = call %nyx_string* @nyx_string_concat(%nyx_string* %3333, %nyx_string* %3334)
  store %nyx_string* %3335, %nyx_string** %3296
  br label %merge797
else796:
  %3336 = getelementptr [5 x i8], [5 x i8]* @.str341, i32 0, i32 0
  %3337 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3336, i64 4)
  %3338 = load %nyx_string*, %nyx_string** %3280
  %3339 = call %nyx_string* @nyx_string_concat(%nyx_string* %3337, %nyx_string* %3338)
  store %nyx_string* %3339, %nyx_string** %3296
  br label %merge797
merge797:
  br label %merge794
merge794:
  br label %merge791
merge791:
  br label %merge788
else787:
  br label %merge788
merge788:
  %3340 = alloca i1
  store i1 1, i1* %3340
  %3341 = load %nyx_string*, %nyx_string** %3296
  %3342 = load %nyx_string*, %nyx_string** %path.ptr
  %3343 = call i1 @nyx_string_equals(%nyx_string* %3341, %nyx_string* %3342)
  br i1 %3343, label %then798, label %else799
then798:
  store i1 0, i1* %3340
  br label %merge800
else799:
  br label %merge800
merge800:
  %3344 = load %nyx_string*, %nyx_string** %3296
  %3345 = getelementptr [1 x i8], [1 x i8]* @.str342, i32 0, i32 0
  %3346 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3345, i64 0)
  %3347 = call i1 @nyx_string_equals(%nyx_string* %3344, %nyx_string* %3346)
  br i1 %3347, label %then801, label %else802
then801:
  store i1 0, i1* %3340
  br label %merge803
else802:
  br label %merge803
merge803:
  %3348 = getelementptr [9 x i8], [9 x i8]* @.str343, i32 0, i32 0
  %3349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3348, i64 8)
  %3350 = call i8* @nyx_string_to_cstr(%nyx_string* %3349)
  %3351 = call %nyx_string* @nyx_getenv(i8* %3350)
  %3352 = getelementptr [5 x i8], [5 x i8]* @.str344, i32 0, i32 0
  %3353 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3352, i64 4)
  %3354 = call i1 @nyx_string_equals(%nyx_string* %3351, %nyx_string* %3353)
  br i1 %3354, label %then804, label %else805
then804:
  %3355 = getelementptr [27 x i8], [27 x i8]* @.str345, i32 0, i32 0
  %3356 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3355, i64 26)
  %3357 = load %nyx_string*, %nyx_string** %path.ptr
  %3358 = call %nyx_string* @nyx_string_concat(%nyx_string* %3356, %nyx_string* %3357)
  %3359 = getelementptr [44 x i8], [44 x i8]* @.str346, i32 0, i32 0
  %3360 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3359, i64 43)
  %3361 = call %nyx_string* @nyx_string_concat(%nyx_string* %3358, %nyx_string* %3360)
  %3362 = alloca %nyx_string*
  store %nyx_string* %3361, %nyx_string** %3362
  %3363 = getelementptr [55 x i8], [55 x i8]* @.str347, i32 0, i32 0
  %3364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3363, i64 54)
  %3365 = alloca %nyx_string*
  store %nyx_string* %3364, %nyx_string** %3365
  %3366 = load %nyx_string*, %nyx_string** %3365
  %3367 = getelementptr [13 x i8], [13 x i8]* @.str348, i32 0, i32 0
  %3368 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3367, i64 12)
  %3369 = call %nyx_string* @nyx_string_concat(%nyx_string* %3366, %nyx_string* %3368)
  %3370 = load %nyx_string*, %nyx_string** %3362
  %3371 = call %nyx_string* @nyx_json_escape(%nyx_string* %3370)
  %3372 = call %nyx_string* @nyx_string_concat(%nyx_string* %3369, %nyx_string* %3371)
  %3373 = getelementptr [2 x i8], [2 x i8]* @.str349, i32 0, i32 0
  %3374 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3373, i64 1)
  %3375 = call %nyx_string* @nyx_string_concat(%nyx_string* %3372, %nyx_string* %3374)
  store %nyx_string* %3375, %nyx_string** %3365
  %3376 = load i1, i1* %3340
  br i1 %3376, label %then807, label %else808
then807:
  %3377 = load %nyx_string*, %nyx_string** %3365
  %3378 = getelementptr [16 x i8], [16 x i8]* @.str350, i32 0, i32 0
  %3379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3378, i64 15)
  %3380 = call %nyx_string* @nyx_string_concat(%nyx_string* %3377, %nyx_string* %3379)
  %3381 = load %nyx_string*, %nyx_string** %3296
  %3382 = call %nyx_string* @nyx_json_escape(%nyx_string* %3381)
  %3383 = call %nyx_string* @nyx_string_concat(%nyx_string* %3380, %nyx_string* %3382)
  %3384 = getelementptr [2 x i8], [2 x i8]* @.str351, i32 0, i32 0
  %3385 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3384, i64 1)
  %3386 = call %nyx_string* @nyx_string_concat(%nyx_string* %3383, %nyx_string* %3385)
  store %nyx_string* %3386, %nyx_string** %3365
  br label %merge809
else808:
  br label %merge809
merge809:
  %3387 = load %nyx_string*, %nyx_string** %3365
  %3388 = getelementptr [2 x i8], [2 x i8]* @.str352, i32 0, i32 0
  %3389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3388, i64 1)
  %3390 = call %nyx_string* @nyx_string_concat(%nyx_string* %3387, %nyx_string* %3389)
  store %nyx_string* %3390, %nyx_string** %3365
  %3391 = load %nyx_string*, %nyx_string** %3365
  %3392 = call i8* @nyx_string_to_cstr(%nyx_string* %3391)
  call void @nyx_print_string(i8* %3392)
  %3393 = load i64, i64* @g_resolve_errors
  %3394 = add i64 %3393, 1
  store i64 %3394, i64* @g_resolve_errors
  %3395 = load i1, i1* @g_resolve_soft
  %3396 = xor i1 %3395, true
  br i1 %3396, label %then810, label %else811
then810:
  call void @nyx_exit(i64 1)
  br label %merge812
else811:
  br label %merge812
merge812:
  ret i64 1
else805:
  br label %merge806
merge806:
  %3397 = getelementptr [49 x i8], [49 x i8]* @.str353, i32 0, i32 0
  %3398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3397, i64 48)
  %3399 = load %nyx_string*, %nyx_string** %path.ptr
  %3400 = call %nyx_string* @nyx_string_concat(%nyx_string* %3398, %nyx_string* %3399)
  %3401 = getelementptr [41 x i8], [41 x i8]* @.str354, i32 0, i32 0
  %3402 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3401, i64 40)
  %3403 = call %nyx_string* @nyx_string_concat(%nyx_string* %3400, %nyx_string* %3402)
  %3404 = getelementptr [44 x i8], [44 x i8]* @.str355, i32 0, i32 0
  %3405 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3404, i64 43)
  %3406 = load %nyx_string*, %nyx_string** %path.ptr
  %3407 = call %nyx_string* @nyx_string_concat(%nyx_string* %3405, %nyx_string* %3406)
  %3408 = getelementptr [44 x i8], [44 x i8]* @.str356, i32 0, i32 0
  %3409 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3408, i64 43)
  %3410 = call %nyx_string* @nyx_string_concat(%nyx_string* %3407, %nyx_string* %3409)
  %3411 = call %nyx_string* @nyx_msg(%nyx_string* %3403, %nyx_string* %3410)
  %3412 = call i8* @nyx_string_to_cstr(%nyx_string* %3411)
  call void @nyx_print_string(i8* %3412)
  %3413 = load i1, i1* %3340
  br i1 %3413, label %then813, label %else814
then813:
  %3414 = getelementptr [26 x i8], [26 x i8]* @.str357, i32 0, i32 0
  %3415 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3414, i64 25)
  %3416 = load %nyx_string*, %nyx_string** %3296
  %3417 = call %nyx_string* @nyx_string_concat(%nyx_string* %3415, %nyx_string* %3416)
  %3418 = getelementptr [3 x i8], [3 x i8]* @.str358, i32 0, i32 0
  %3419 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3418, i64 2)
  %3420 = call %nyx_string* @nyx_string_concat(%nyx_string* %3417, %nyx_string* %3419)
  %3421 = getelementptr [22 x i8], [22 x i8]* @.str359, i32 0, i32 0
  %3422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3421, i64 21)
  %3423 = load %nyx_string*, %nyx_string** %3296
  %3424 = call %nyx_string* @nyx_string_concat(%nyx_string* %3422, %nyx_string* %3423)
  %3425 = getelementptr [3 x i8], [3 x i8]* @.str360, i32 0, i32 0
  %3426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3425, i64 2)
  %3427 = call %nyx_string* @nyx_string_concat(%nyx_string* %3424, %nyx_string* %3426)
  %3428 = call %nyx_string* @nyx_msg(%nyx_string* %3420, %nyx_string* %3427)
  %3429 = call i8* @nyx_string_to_cstr(%nyx_string* %3428)
  call void @nyx_print_string(i8* %3429)
  br label %merge815
else814:
  br label %merge815
merge815:
  %3430 = load i64, i64* @g_resolve_errors
  %3431 = add i64 %3430, 1
  store i64 %3431, i64* @g_resolve_errors
  %3432 = load i1, i1* @g_resolve_soft
  %3433 = xor i1 %3432, true
  br i1 %3433, label %then816, label %else817
then816:
  call void @nyx_exit(i64 1)
  br label %merge818
else817:
  br label %merge818
merge818:
  ret i64 1
}


attributes #0 = { returns_twice }

