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
@.str101 = private unnamed_addr constant [1 x i8] c"("
@.str102 = private unnamed_addr constant [1 x i8] c"{"
@.str103 = private unnamed_addr constant [1 x i8] c"<"
@.str104 = private unnamed_addr constant [1 x i8] c" "
@.str105 = private unnamed_addr constant [1 x i8] c"("
@.str106 = private unnamed_addr constant [1 x i8] c"{"
@.str107 = private unnamed_addr constant [1 x i8] c"<"
@.str108 = private unnamed_addr constant [1 x i8] c" "
@.str109 = private unnamed_addr constant [1 x i8] c"{"
@.str110 = private unnamed_addr constant [1 x i8] c"<"
@.str111 = private unnamed_addr constant [1 x i8] c" "
@.str112 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str112.c = internal global %nyx_string* null
@.str113 = private unnamed_addr constant [1 x i8] c"\00"
@.str113.c = internal global %nyx_string* null
@.str114 = private unnamed_addr constant [1 x i8] c"\00"
@.str114.c = internal global %nyx_string* null
@.str115 = private unnamed_addr constant [1 x i8] c"/"
@.str116 = private unnamed_addr constant [1 x i8] c"/"
@.str117 = private unnamed_addr constant [6 x i8] c"\22src/\00"
@.str117.c = internal global %nyx_string* null
@.str118 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str118.c = internal global %nyx_string* null
@.str119 = private unnamed_addr constant [1 x i8] c"\00"
@.str119.c = internal global %nyx_string* null
@.str120 = private unnamed_addr constant [7 x i8] c"import\00"
@.str120.c = internal global %nyx_string* null
@.str121 = private unnamed_addr constant [1 x i8] c"\00"
@.str121.c = internal global %nyx_string* null
@.str122 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str122.c = internal global %nyx_string* null
@.str123 = private unnamed_addr constant [6 x i8] c"/src/\00"
@.str123.c = internal global %nyx_string* null
@.str124 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str124.c = internal global %nyx_string* null
@.str125 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str125.c = internal global %nyx_string* null
@.str126 = private unnamed_addr constant [1 x i8] c"\00"
@.str126.c = internal global %nyx_string* null
@.str127 = private unnamed_addr constant [15 x i8] c"export struct \00"
@.str127.c = internal global %nyx_string* null
@.str128 = private unnamed_addr constant [8 x i8] c"struct \00"
@.str128.c = internal global %nyx_string* null
@.str129 = private unnamed_addr constant [2 x i8] c"{\00"
@.str129.c = internal global %nyx_string* null
@.str130 = private unnamed_addr constant [1 x i8] c"\00"
@.str130.c = internal global %nyx_string* null
@.str131 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str131.c = internal global %nyx_string* null
@.str132 = private unnamed_addr constant [1 x i8] c"{"
@.str133 = private unnamed_addr constant [1 x i8] c"}"
@.str134 = private unnamed_addr constant [1 x i8] c" "
@.str135 = private unnamed_addr constant [1 x i8] c"<"
@.str136 = private unnamed_addr constant [1 x i8] c"{"
@.str137 = private unnamed_addr constant [1 x i8] c"{"
@.str138 = private unnamed_addr constant [1 x i8] c"}"
@.str139 = private unnamed_addr constant [16 x i8] c"NYX_PROJECT_DIR\00"
@.str139.c = internal global %nyx_string* null
@.str140 = private unnamed_addr constant [1 x i8] c"\00"
@.str140.c = internal global %nyx_string* null
@.str141 = private unnamed_addr constant [2 x i8] c"/\00"
@.str141.c = internal global %nyx_string* null
@.str142 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str142.c = internal global %nyx_string* null
@.str143 = private unnamed_addr constant [1 x i8] c"/"
@.str144 = private unnamed_addr constant [4 x i8] c"std\00"
@.str144.c = internal global %nyx_string* null
@.str145 = private unnamed_addr constant [4 x i8] c"src\00"
@.str145.c = internal global %nyx_string* null
@.str146 = private unnamed_addr constant [9 x i8] c"compiler\00"
@.str146.c = internal global %nyx_string* null
@.str147 = private unnamed_addr constant [1 x i8] c"\00"
@.str147.c = internal global %nyx_string* null
@.str148 = private unnamed_addr constant [11 x i8] c"/packages/\00"
@.str148.c = internal global %nyx_string* null
@.str149 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str149.c = internal global %nyx_string* null
@.str150 = private unnamed_addr constant [10 x i8] c"packages/\00"
@.str150.c = internal global %nyx_string* null
@.str151 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str151.c = internal global %nyx_string* null
@.str152 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str152.c = internal global %nyx_string* null
@.str153 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str153.c = internal global %nyx_string* null
@.str154 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str154.c = internal global %nyx_string* null
@.str155 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str155.c = internal global %nyx_string* null
@.str156 = private unnamed_addr constant [1 x i8] c"\00"
@.str156.c = internal global %nyx_string* null
@.str157 = private unnamed_addr constant [6 x i8] c"/std/\00"
@.str157.c = internal global %nyx_string* null
@.str158 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str158.c = internal global %nyx_string* null
@.str159 = private unnamed_addr constant [2 x i8] c"/\00"
@.str159.c = internal global %nyx_string* null
@.str160 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str160.c = internal global %nyx_string* null
@.str161 = private unnamed_addr constant [1 x i8] c"\00"
@.str161.c = internal global %nyx_string* null
@.str162 = private unnamed_addr constant [11 x i8] c"/.nyx/std/\00"
@.str162.c = internal global %nyx_string* null
@.str163 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str163.c = internal global %nyx_string* null
@.str164 = private unnamed_addr constant [7 x i8] c"/.nyx/\00"
@.str164.c = internal global %nyx_string* null
@.str165 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str165.c = internal global %nyx_string* null
@.str166 = private unnamed_addr constant [1 x i8] c"\00"
@.str166.c = internal global %nyx_string* null
@.str167 = private unnamed_addr constant [20 x i8] c"//#prelude-modules:\00"
@.str167.c = internal global %nyx_string* null
@.str168 = private unnamed_addr constant [3 x i8] c"io\00"
@.str168.c = internal global %nyx_string* null
@.str169 = private unnamed_addr constant [5 x i8] c"math\00"
@.str169.c = internal global %nyx_string* null
@.str170 = private unnamed_addr constant [6 x i8] c"array\00"
@.str170.c = internal global %nyx_string* null
@.str171 = private unnamed_addr constant [5 x i8] c"file\00"
@.str171.c = internal global %nyx_string* null
@.str172 = private unnamed_addr constant [4 x i8] c"map\00"
@.str172.c = internal global %nyx_string* null
@.str173 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str173.c = internal global %nyx_string* null
@.str174 = private unnamed_addr constant [2 x i8] c" \00"
@.str174.c = internal global %nyx_string* null
@.str175 = private unnamed_addr constant [1 x i8] c"\00"
@.str175.c = internal global %nyx_string* null
@.str176 = private unnamed_addr constant [3 x i8] c"io\00"
@.str176.c = internal global %nyx_string* null
@.str177 = private unnamed_addr constant [5 x i8] c"math\00"
@.str177.c = internal global %nyx_string* null
@.str178 = private unnamed_addr constant [6 x i8] c"array\00"
@.str178.c = internal global %nyx_string* null
@.str179 = private unnamed_addr constant [5 x i8] c"file\00"
@.str179.c = internal global %nyx_string* null
@.str180 = private unnamed_addr constant [4 x i8] c"map\00"
@.str180.c = internal global %nyx_string* null
@.str181 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str181.c = internal global %nyx_string* null
@.str182 = private unnamed_addr constant [16 x i8] c"nyx:sin-prelude\00"
@.str182.c = internal global %nyx_string* null
@.str183 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str183.c = internal global %nyx_string* null
@.str184 = private unnamed_addr constant [19 x i8] c"// nyx:sin-prelude\00"
@.str184.c = internal global %nyx_string* null
@.str185 = private unnamed_addr constant [8 x i8] c"import \00"
@.str185.c = internal global %nyx_string* null
@.str186 = private unnamed_addr constant [11 x i8] c"\22compiler/\00"
@.str186.c = internal global %nyx_string* null
@.str187 = private unnamed_addr constant [13 x i8] c"NYX_LIB_SELF\00"
@.str187.c = internal global %nyx_string* null
@.str188 = private unnamed_addr constant [1 x i8] c"\00"
@.str188.c = internal global %nyx_string* null
@.str189 = private unnamed_addr constant [1 x i8] c"\00"
@.str189.c = internal global %nyx_string* null
@.str190 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str190.c = internal global %nyx_string* null
@.str191 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str191.c = internal global %nyx_string* null
@.str192 = private unnamed_addr constant [11 x i8] c"//#module\0a\00"
@.str192.c = internal global %nyx_string* null
@.str193 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str193.c = internal global %nyx_string* null
@.str194 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str194.c = internal global %nyx_string* null
@.str195 = private unnamed_addr constant [8 x i8] c"-reabre\00"
@.str195.c = internal global %nyx_string* null
@.str196 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str196.c = internal global %nyx_string* null
@.str197 = private unnamed_addr constant [16 x i8] c"NYX_SRC_DISPLAY\00"
@.str197.c = internal global %nyx_string* null
@.str198 = private unnamed_addr constant [1 x i8] c"\00"
@.str198.c = internal global %nyx_string* null
@.str199 = private unnamed_addr constant [8 x i8] c"NYX_SRC\00"
@.str199.c = internal global %nyx_string* null
@.str200 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str200.c = internal global %nyx_string* null
@.str201 = private unnamed_addr constant [1 x i8] c"\00"
@.str201.c = internal global %nyx_string* null
@.str202 = private unnamed_addr constant [16 x i8] c"NYX_PROJECT_DIR\00"
@.str202.c = internal global %nyx_string* null
@.str203 = private unnamed_addr constant [1 x i8] c"\00"
@.str203.c = internal global %nyx_string* null
@.str204 = private unnamed_addr constant [2 x i8] c"/\00"
@.str204.c = internal global %nyx_string* null
@.str205 = private unnamed_addr constant [3 x i8] c"./\00"
@.str205.c = internal global %nyx_string* null
@.str206 = private unnamed_addr constant [1 x i8] c"\00"
@.str206.c = internal global %nyx_string* null
@.str207 = private unnamed_addr constant [2 x i8] c"/\00"
@.str207.c = internal global %nyx_string* null
@.str208 = private unnamed_addr constant [1 x i8] c"\00"
@.str208.c = internal global %nyx_string* null
@.str209 = private unnamed_addr constant [1 x i8] c"\00"
@.str209.c = internal global %nyx_string* null
@.str210 = private unnamed_addr constant [1 x i8] c"\00"
@.str210.c = internal global %nyx_string* null
@.str211 = private unnamed_addr constant [1 x i8] c"\00"
@.str211.c = internal global %nyx_string* null
@.str212 = private unnamed_addr constant [20 x i8] c"NYX_INLINE_COMPILER\00"
@.str212.c = internal global %nyx_string* null
@.str213 = private unnamed_addr constant [2 x i8] c"1\00"
@.str213.c = internal global %nyx_string* null
@.str214 = private unnamed_addr constant [13 x i8] c"NYX_LIB_UNIT\00"
@.str214.c = internal global %nyx_string* null
@.str215 = private unnamed_addr constant [2 x i8] c"1\00"
@.str215.c = internal global %nyx_string* null
@.str216 = private unnamed_addr constant [1 x i8] c"\00"
@.str216.c = internal global %nyx_string* null
@.str217 = private unnamed_addr constant [43 x i8] c"  ⚠ aviso [NYX0302]: este módulo tiene \00"
@.str217.c = internal global %nyx_string* null
@.str218 = private unnamed_addr constant [52 x i8] c" y no se compila aparte: se inlinea en el programa.\00"
@.str218.c = internal global %nyx_string* null
@.str219 = private unnamed_addr constant [42 x i8] c"  ⚠ warning [NYX0302]: this module has \00"
@.str219.c = internal global %nyx_string* null
@.str220 = private unnamed_addr constant [65 x i8] c" and is not compiled separately: it is inlined into the program.\00"
@.str220.c = internal global %nyx_string* null
@.str221 = private unnamed_addr constant [1 x i8] c"\00"
@.str221.c = internal global %nyx_string* null
@.str222 = private unnamed_addr constant [12 x i8] c"std/prelude\00"
@.str222.c = internal global %nyx_string* null
@.str223 = private unnamed_addr constant [1 x i8] c"\00"
@.str223.c = internal global %nyx_string* null
@.str224 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str224.c = internal global %nyx_string* null
@.str225 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str225.c = internal global %nyx_string* null
@.str226 = private unnamed_addr constant [12 x i8] c"std/prelude\00"
@.str226.c = internal global %nyx_string* null
@.str227 = private unnamed_addr constant [13 x i8] c"NYX_LIB_SELF\00"
@.str227.c = internal global %nyx_string* null
@.str228 = private unnamed_addr constant [1 x i8] c"\00"
@.str228.c = internal global %nyx_string* null
@.str229 = private unnamed_addr constant [1 x i8] c"\00"
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
@.str235 = private unnamed_addr constant [8 x i8] c"module \00"
@.str235.c = internal global %nyx_string* null
@.str236 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str236.c = internal global %nyx_string* null
@.str237 = private unnamed_addr constant [4 x i8] c"\22 [\00"
@.str237.c = internal global %nyx_string* null
@.str238 = private unnamed_addr constant [3 x i8] c", \00"
@.str238.c = internal global %nyx_string* null
@.str239 = private unnamed_addr constant [3 x i8] c"]\0a\00"
@.str239.c = internal global %nyx_string* null
@.str240 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str240.c = internal global %nyx_string* null
@.str241 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str241.c = internal global %nyx_string* null
@.str242 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str242.c = internal global %nyx_string* null
@.str243 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str243.c = internal global %nyx_string* null
@.str244 = private unnamed_addr constant [1 x i8] c"\00"
@.str244.c = internal global %nyx_string* null
@.str245 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str245.c = internal global %nyx_string* null
@.str246 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str246.c = internal global %nyx_string* null
@.str247 = private unnamed_addr constant [2 x i8] c"\0a\00"
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
@.str253 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str253.c = internal global %nyx_string* null
@.str254 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str254.c = internal global %nyx_string* null
@.str255 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str255.c = internal global %nyx_string* null
@.str256 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str256.c = internal global %nyx_string* null
@.str257 = private unnamed_addr constant [1 x i8] c"\00"
@.str257.c = internal global %nyx_string* null
@.str258 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str258.c = internal global %nyx_string* null
@.str259 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str259.c = internal global %nyx_string* null
@.str260 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str260.c = internal global %nyx_string* null
@.str261 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str261.c = internal global %nyx_string* null
@.str262 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str262.c = internal global %nyx_string* null
@.str263 = private unnamed_addr constant [1 x i8] c"\00"
@.str263.c = internal global %nyx_string* null
@.str264 = private unnamed_addr constant [10 x i8] c"//#module\00"
@.str264.c = internal global %nyx_string* null
@.str265 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str265.c = internal global %nyx_string* null
@.str266 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str266.c = internal global %nyx_string* null
@.str267 = private unnamed_addr constant [1 x i8] c"\00"
@.str267.c = internal global %nyx_string* null
@.str268 = private unnamed_addr constant [1 x i8] c"\00"
@.str268.c = internal global %nyx_string* null
@.str269 = private unnamed_addr constant [1 x i8] c"\00"
@.str269.c = internal global %nyx_string* null
@.str270 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str270.c = internal global %nyx_string* null
@.str271 = private unnamed_addr constant [8 x i8] c"module \00"
@.str271.c = internal global %nyx_string* null
@.str272 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str272.c = internal global %nyx_string* null
@.str273 = private unnamed_addr constant [4 x i8] c"\22 [\00"
@.str273.c = internal global %nyx_string* null
@.str274 = private unnamed_addr constant [3 x i8] c", \00"
@.str274.c = internal global %nyx_string* null
@.str275 = private unnamed_addr constant [3 x i8] c"]\0a\00"
@.str275.c = internal global %nyx_string* null
@.str276 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str276.c = internal global %nyx_string* null
@.str277 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str277.c = internal global %nyx_string* null
@.str278 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str278.c = internal global %nyx_string* null
@.str279 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str279.c = internal global %nyx_string* null
@.str280 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str280.c = internal global %nyx_string* null
@.str281 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str281.c = internal global %nyx_string* null
@.str282 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str282.c = internal global %nyx_string* null
@.str283 = private unnamed_addr constant [1 x i8] c"\00"
@.str283.c = internal global %nyx_string* null
@.str284 = private unnamed_addr constant [1 x i8] c"\00"
@.str284.c = internal global %nyx_string* null
@.str285 = private unnamed_addr constant [1 x i8] c"\00"
@.str285.c = internal global %nyx_string* null
@.str286 = private unnamed_addr constant [8 x i8] c"module \00"
@.str286.c = internal global %nyx_string* null
@.str287 = private unnamed_addr constant [5 x i8] c" = \22\00"
@.str287.c = internal global %nyx_string* null
@.str288 = private unnamed_addr constant [4 x i8] c"\22 [\00"
@.str288.c = internal global %nyx_string* null
@.str289 = private unnamed_addr constant [3 x i8] c", \00"
@.str289.c = internal global %nyx_string* null
@.str290 = private unnamed_addr constant [3 x i8] c"]\0a\00"
@.str290.c = internal global %nyx_string* null
@.str291 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str291.c = internal global %nyx_string* null
@.str292 = private unnamed_addr constant [1 x i8] c"\00"
@.str292.c = internal global %nyx_string* null
@.str293 = private unnamed_addr constant [1 x i8] c"\00"
@.str293.c = internal global %nyx_string* null
@.str294 = private unnamed_addr constant [1 x i8] c"\00"
@.str294.c = internal global %nyx_string* null
@.str295 = private unnamed_addr constant [10 x i8] c"compiler/\00"
@.str295.c = internal global %nyx_string* null
@.str296 = private unnamed_addr constant [11 x i8] c"//#module \00"
@.str296.c = internal global %nyx_string* null
@.str297 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str297.c = internal global %nyx_string* null
@.str298 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str298.c = internal global %nyx_string* null
@.str299 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str299.c = internal global %nyx_string* null
@.str300 = private unnamed_addr constant [9 x i8] c"//#line \00"
@.str300.c = internal global %nyx_string* null
@.str301 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str301.c = internal global %nyx_string* null
@.str302 = private unnamed_addr constant [1 x i8] c"\00"
@.str302.c = internal global %nyx_string* null
@.str303 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str303.c = internal global %nyx_string* null
@.str304 = private unnamed_addr constant [2 x i8] c"\0a\00"
@.str304.c = internal global %nyx_string* null
@.str305 = private unnamed_addr constant [1 x i8] c"\00"
@.str305.c = internal global %nyx_string* null
@.str306 = private unnamed_addr constant [1 x i8] c"\00"
@.str306.c = internal global %nyx_string* null
@.str307 = private unnamed_addr constant [17 x i8] c"//#line 1000001\0a\00"
@.str307.c = internal global %nyx_string* null
@.str308 = private unnamed_addr constant [1 x i8] c"\00"
@.str308.c = internal global %nyx_string* null
@.str309 = private unnamed_addr constant [9 x i8] c"libdecl:\00"
@.str309.c = internal global %nyx_string* null
@.str310 = private unnamed_addr constant [1 x i8] c"\00"
@.str310.c = internal global %nyx_string* null
@.str311 = private unnamed_addr constant [2 x i8] c",\00"
@.str311.c = internal global %nyx_string* null
@.str312 = private unnamed_addr constant [13 x i8] c"NYX_LIB_DECL\00"
@.str312.c = internal global %nyx_string* null
@.str313 = private unnamed_addr constant [1 x i8] c"\00"
@.str313.c = internal global %nyx_string* null
@.str314 = private unnamed_addr constant [13 x i8] c"NYX_LIB_SELF\00"
@.str314.c = internal global %nyx_string* null
@.str315 = private unnamed_addr constant [1 x i8] c"\00"
@.str315.c = internal global %nyx_string* null
@.str316 = private unnamed_addr constant [1 x i8] c"\00"
@.str316.c = internal global %nyx_string* null
@.str317 = private unnamed_addr constant [11 x i8] c"//#line 1\0a\00"
@.str317.c = internal global %nyx_string* null
@.str318 = private unnamed_addr constant [9 x i8] c"NYX_LANG\00"
@.str318.c = internal global %nyx_string* null
@.str319 = private unnamed_addr constant [3 x i8] c"es\00"
@.str319.c = internal global %nyx_string* null
@.str320 = private unnamed_addr constant [1 x i8] c"\00"
@.str320.c = internal global %nyx_string* null
@.str321 = private unnamed_addr constant [1 x i8] c"\00"
@.str321.c = internal global %nyx_string* null
@.str322 = private unnamed_addr constant [4 x i8] c"std\00"
@.str322.c = internal global %nyx_string* null
@.str323 = private unnamed_addr constant [4 x i8] c"std\00"
@.str323.c = internal global %nyx_string* null
@.str324 = private unnamed_addr constant [9 x i8] c"NYX_HOME\00"
@.str324.c = internal global %nyx_string* null
@.str325 = private unnamed_addr constant [1 x i8] c"\00"
@.str325.c = internal global %nyx_string* null
@.str326 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str326.c = internal global %nyx_string* null
@.str327 = private unnamed_addr constant [5 x i8] c"/std\00"
@.str327.c = internal global %nyx_string* null
@.str328 = private unnamed_addr constant [1 x i8] c"\00"
@.str328.c = internal global %nyx_string* null
@.str329 = private unnamed_addr constant [10 x i8] c"/.nyx/std\00"
@.str329.c = internal global %nyx_string* null
@.str330 = private unnamed_addr constant [10 x i8] c"/.nyx/std\00"
@.str330.c = internal global %nyx_string* null
@.str331 = private unnamed_addr constant [1 x i8] c"\00"
@.str331.c = internal global %nyx_string* null
@.str332 = private unnamed_addr constant [1 x i8] c"\00"
@.str332.c = internal global %nyx_string* null
@.str333 = private unnamed_addr constant [4 x i8] c".nx\00"
@.str333.c = internal global %nyx_string* null
@.str334 = private unnamed_addr constant [1 x i8] c"\00"
@.str334.c = internal global %nyx_string* null
@.str335 = private unnamed_addr constant [1 x i8] c"\00"
@.str335.c = internal global %nyx_string* null
@.str336 = private unnamed_addr constant [3 x i8] c"\5c\22\00"
@.str336.c = internal global %nyx_string* null
@.str337 = private unnamed_addr constant [3 x i8] c"\5c\5c\00"
@.str337.c = internal global %nyx_string* null
@.str338 = private unnamed_addr constant [3 x i8] c"\5cn\00"
@.str338.c = internal global %nyx_string* null
@.str339 = private unnamed_addr constant [3 x i8] c"\5cr\00"
@.str339.c = internal global %nyx_string* null
@.str340 = private unnamed_addr constant [3 x i8] c"\5ct\00"
@.str340.c = internal global %nyx_string* null
@.str341 = private unnamed_addr constant [16 x i8] c"NYX_PROJECT_DIR\00"
@.str341.c = internal global %nyx_string* null
@.str342 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str342.c = internal global %nyx_string* null
@.str343 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str343.c = internal global %nyx_string* null
@.str344 = private unnamed_addr constant [1 x i8] c"\00"
@.str344.c = internal global %nyx_string* null
@.str345 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str345.c = internal global %nyx_string* null
@.str346 = private unnamed_addr constant [1 x i8] c"\00"
@.str346.c = internal global %nyx_string* null
@.str347 = private unnamed_addr constant [5 x i8] c"/src\00"
@.str347.c = internal global %nyx_string* null
@.str348 = private unnamed_addr constant [1 x i8] c"\00"
@.str348.c = internal global %nyx_string* null
@.str349 = private unnamed_addr constant [1 x i8] c"\00"
@.str349.c = internal global %nyx_string* null
@.str350 = private unnamed_addr constant [1 x i8] c"\00"
@.str350.c = internal global %nyx_string* null
@.str351 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str351.c = internal global %nyx_string* null
@.str352 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str352.c = internal global %nyx_string* null
@.str353 = private unnamed_addr constant [1 x i8] c"\00"
@.str353.c = internal global %nyx_string* null
@.str354 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str354.c = internal global %nyx_string* null
@.str355 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str355.c = internal global %nyx_string* null
@.str356 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str356.c = internal global %nyx_string* null
@.str357 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str357.c = internal global %nyx_string* null
@.str358 = private unnamed_addr constant [5 x i8] c"std/\00"
@.str358.c = internal global %nyx_string* null
@.str359 = private unnamed_addr constant [5 x i8] c"src/\00"
@.str359.c = internal global %nyx_string* null
@.str360 = private unnamed_addr constant [1 x i8] c"\00"
@.str360.c = internal global %nyx_string* null
@.str361 = private unnamed_addr constant [9 x i8] c"NYX_DIAG\00"
@.str361.c = internal global %nyx_string* null
@.str362 = private unnamed_addr constant [5 x i8] c"json\00"
@.str362.c = internal global %nyx_string* null
@.str363 = private unnamed_addr constant [27 x i8] c"could not resolve import \22\00"
@.str363.c = internal global %nyx_string* null
@.str364 = private unnamed_addr constant [44 x i8] c"\22 (not found in std/, local, or packages/).\00"
@.str364.c = internal global %nyx_string* null
@.str365 = private unnamed_addr constant [55 x i8] c"{\22code\22:\22NYX0301\22,\22severity\22:\22error\22,\22phase\22:\22resolve\22\00"
@.str365.c = internal global %nyx_string* null
@.str366 = private unnamed_addr constant [13 x i8] c",\22message\22:\22\00"
@.str366.c = internal global %nyx_string* null
@.str367 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str367.c = internal global %nyx_string* null
@.str368 = private unnamed_addr constant [16 x i8] c",\22suggestion\22:\22\00"
@.str368.c = internal global %nyx_string* null
@.str369 = private unnamed_addr constant [2 x i8] c"\22\00"
@.str369.c = internal global %nyx_string* null
@.str370 = private unnamed_addr constant [2 x i8] c"}\00"
@.str370.c = internal global %nyx_string* null
@.str371 = private unnamed_addr constant [49 x i8] c"error [NYX0301]: no se pudo resolver el import \22\00"
@.str371.c = internal global %nyx_string* null
@.str372 = private unnamed_addr constant [41 x i8] c"\22 (ni en std/ ni local ni en packages/).\00"
@.str372.c = internal global %nyx_string* null
@.str373 = private unnamed_addr constant [44 x i8] c"error [NYX0301]: could not resolve import \22\00"
@.str373.c = internal global %nyx_string* null
@.str374 = private unnamed_addr constant [44 x i8] c"\22 (not found in std/, local, or packages/).\00"
@.str374.c = internal global %nyx_string* null
@.str375 = private unnamed_addr constant [26 x i8] c"       ¿Quisiste decir \22\00"
@.str375.c = internal global %nyx_string* null
@.str376 = private unnamed_addr constant [3 x i8] c"\22?\00"
@.str376.c = internal global %nyx_string* null
@.str377 = private unnamed_addr constant [22 x i8] c"       Did you mean \22\00"
@.str377.c = internal global %nyx_string* null
@.str378 = private unnamed_addr constant [3 x i8] c"\22?\00"
@.str378.c = internal global %nyx_string* null
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
declare i64 @nyx_slot_as_value_checked({ i64, i8* }*, i64, i8*)
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
declare void @nyx_panic_unwrap_err(%nyx_string*)
declare void @nyx_panic_unwrap_error(%nyx_string*, %nyx_string*, i64)
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
  %1049 = alloca i1
  store i1 true, i1* %1049
  %1050 = load i8, i8* %1046
  %1051 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %1052 = load i8, i8* %1051
  %1053 = zext i8 %1052 to i64
  %1054 = zext i8 %1050 to i64
  %1055 = icmp eq i64 %1054, %1053
  br i1 %1055, label %sc_or_end268, label %sc_or_rhs267
sc_or_rhs267:
  %1056 = load i8, i8* %1046
  %1057 = getelementptr [1 x i8], [1 x i8]* @.str99, i32 0, i32 0
  %1058 = load i8, i8* %1057
  %1059 = zext i8 %1058 to i64
  %1060 = zext i8 %1056 to i64
  %1061 = icmp eq i64 %1060, %1059
  store i1 %1061, i1* %1049
  br label %sc_or_end268
sc_or_end268:
  %1062 = load i1, i1* %1049
  br i1 %1062, label %sc_or_end270, label %sc_or_rhs269
sc_or_rhs269:
  %1063 = load i8, i8* %1046
  %1064 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %1065 = load i8, i8* %1064
  %1066 = zext i8 %1065 to i64
  %1067 = zext i8 %1063 to i64
  %1068 = icmp eq i64 %1067, %1066
  store i1 %1068, i1* %1048
  br label %sc_or_end270
sc_or_end270:
  %1069 = load i1, i1* %1048
  br i1 %1069, label %sc_or_end272, label %sc_or_rhs271
sc_or_rhs271:
  %1070 = load i8, i8* %1046
  %1071 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %1072 = load i8, i8* %1071
  %1073 = zext i8 %1072 to i64
  %1074 = zext i8 %1070 to i64
  %1075 = icmp eq i64 %1074, %1073
  store i1 %1075, i1* %1047
  br label %sc_or_end272
sc_or_end272:
  %1076 = load i1, i1* %1047
  br i1 %1076, label %then273, label %else274
then273:
  store i1 1, i1* %1031
  br label %merge275
else274:
  %1077 = load %nyx_string*, %nyx_string** %1029
  %1078 = load i8, i8* %1046
  %1079 = call %nyx_string* @nyx_string_from_char(i8 %1078)
  %1080 = call %nyx_string* @nyx_string_concat(%nyx_string* %1077, %nyx_string* %1079)
  store %nyx_string* %1080, %nyx_string** %1029
  %1081 = load i64, i64* %1030
  %1082 = add i64 %1081, 1
  store i64 %1082, i64* %1030
  br label %merge275
merge275:
  br label %while_cond262
while_end264:
  %1083 = load %nyx_string*, %nyx_string** %1029
  %1084 = load %nyx_string*, %nyx_string** %725
  %1085 = call i1 @nyx_string_equals(%nyx_string* %1083, %nyx_string* %1084)
  %1086 = xor i1 %1085, true
  br i1 %1086, label %then276, label %else277
then276:
  %1087 = load { i64, i8* }*, { i64, i8* }** %707
  %1088 = load %nyx_string*, %nyx_string** %1029
  %1089 = ptrtoint %nyx_string* %1088 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1087, i64 %1089, i64 2)
  br label %merge278
else277:
  br label %merge278
merge278:
  br label %merge261
else260:
  br label %merge261
merge261:
  %1090 = load %nyx_string*, %nyx_string** %771
  %1091 = load %nyx_string*, %nyx_string** %740
  %1092 = call i1 @nyx_string_starts_with(%nyx_string* %1090, %nyx_string* %1091)
  br i1 %1092, label %then279, label %else280
then279:
  %1093 = load %nyx_string*, %nyx_string** %771
  %1094 = load %nyx_string*, %nyx_string** %771
  %1095 = call i64 @nyx_string_byte_length(%nyx_string* %1094)
  %1096 = call %nyx_string* @nyx_string_substring(%nyx_string* %1093, i64 14, i64 %1095)
  %1097 = alloca %nyx_string*
  store %nyx_string* %1096, %nyx_string** %1097
  %1098 = load %nyx_string*, %nyx_string** %725
  %1099 = alloca %nyx_string*
  store %nyx_string* %1098, %nyx_string** %1099
  %1100 = alloca i64
  store i64 0, i64* %1100
  %1101 = alloca i1
  store i1 0, i1* %1101
  %1102 = call i8* @llvm.stacksave()
  br label %while_cond282
while_cond282:
  %1103 = alloca i1
  store i1 false, i1* %1103
  %1104 = load i64, i64* %1100
  %1105 = load %nyx_string*, %nyx_string** %1097
  %1106 = call i64 @nyx_string_byte_length(%nyx_string* %1105)
  %1107 = icmp slt i64 %1104, %1106
  br i1 %1107, label %sc_and_rhs285, label %sc_and_end286
sc_and_rhs285:
  %1108 = load i1, i1* %1101
  %1109 = xor i1 %1108, true
  store i1 %1109, i1* %1103
  br label %sc_and_end286
sc_and_end286:
  %1110 = load i1, i1* %1103
  br i1 %1110, label %while_body283, label %while_end284
while_body283:
  call void @llvm.stackrestore(i8* %1102)
  %1111 = load %nyx_string*, %nyx_string** %1097
  %1112 = load i64, i64* %1100
  %1113 = call i8 @nyx_string_char_at(%nyx_string* %1111, i64 %1112)
  %1114 = zext i8 %1113 to i64
  %1115 = trunc i64 %1114 to i8
  %1116 = alloca i8
  store i8 %1115, i8* %1116
  %1117 = alloca i1
  store i1 true, i1* %1117
  %1118 = alloca i1
  store i1 true, i1* %1118
  %1119 = alloca i1
  store i1 true, i1* %1119
  %1120 = load i8, i8* %1116
  %1121 = getelementptr [1 x i8], [1 x i8]* @.str102, i32 0, i32 0
  %1122 = load i8, i8* %1121
  %1123 = zext i8 %1122 to i64
  %1124 = zext i8 %1120 to i64
  %1125 = icmp eq i64 %1124, %1123
  br i1 %1125, label %sc_or_end288, label %sc_or_rhs287
sc_or_rhs287:
  %1126 = load i8, i8* %1116
  %1127 = getelementptr [1 x i8], [1 x i8]* @.str103, i32 0, i32 0
  %1128 = load i8, i8* %1127
  %1129 = zext i8 %1128 to i64
  %1130 = zext i8 %1126 to i64
  %1131 = icmp eq i64 %1130, %1129
  store i1 %1131, i1* %1119
  br label %sc_or_end288
sc_or_end288:
  %1132 = load i1, i1* %1119
  br i1 %1132, label %sc_or_end290, label %sc_or_rhs289
sc_or_rhs289:
  %1133 = load i8, i8* %1116
  %1134 = getelementptr [1 x i8], [1 x i8]* @.str104, i32 0, i32 0
  %1135 = load i8, i8* %1134
  %1136 = zext i8 %1135 to i64
  %1137 = zext i8 %1133 to i64
  %1138 = icmp eq i64 %1137, %1136
  store i1 %1138, i1* %1118
  br label %sc_or_end290
sc_or_end290:
  %1139 = load i1, i1* %1118
  br i1 %1139, label %sc_or_end292, label %sc_or_rhs291
sc_or_rhs291:
  %1140 = load i8, i8* %1116
  %1141 = getelementptr [1 x i8], [1 x i8]* @.str105, i32 0, i32 0
  %1142 = load i8, i8* %1141
  %1143 = zext i8 %1142 to i64
  %1144 = zext i8 %1140 to i64
  %1145 = icmp eq i64 %1144, %1143
  store i1 %1145, i1* %1117
  br label %sc_or_end292
sc_or_end292:
  %1146 = load i1, i1* %1117
  br i1 %1146, label %then293, label %else294
then293:
  store i1 1, i1* %1101
  br label %merge295
else294:
  %1147 = load %nyx_string*, %nyx_string** %1099
  %1148 = load i8, i8* %1116
  %1149 = call %nyx_string* @nyx_string_from_char(i8 %1148)
  %1150 = call %nyx_string* @nyx_string_concat(%nyx_string* %1147, %nyx_string* %1149)
  store %nyx_string* %1150, %nyx_string** %1099
  %1151 = load i64, i64* %1100
  %1152 = add i64 %1151, 1
  store i64 %1152, i64* %1100
  br label %merge295
merge295:
  br label %while_cond282
while_end284:
  %1153 = load %nyx_string*, %nyx_string** %1099
  %1154 = load %nyx_string*, %nyx_string** %725
  %1155 = call i1 @nyx_string_equals(%nyx_string* %1153, %nyx_string* %1154)
  %1156 = xor i1 %1155, true
  br i1 %1156, label %then296, label %else297
then296:
  %1157 = load { i64, i8* }*, { i64, i8* }** %707
  %1158 = load %nyx_string*, %nyx_string** %1099
  %1159 = ptrtoint %nyx_string* %1158 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1157, i64 %1159, i64 2)
  br label %merge298
else297:
  br label %merge298
merge298:
  br label %merge281
else280:
  br label %merge281
merge281:
  %1160 = load %nyx_string*, %nyx_string** %771
  %1161 = load %nyx_string*, %nyx_string** %743
  %1162 = call i1 @nyx_string_starts_with(%nyx_string* %1160, %nyx_string* %1161)
  br i1 %1162, label %then299, label %else300
then299:
  %1163 = load %nyx_string*, %nyx_string** %771
  %1164 = load %nyx_string*, %nyx_string** %771
  %1165 = call i64 @nyx_string_byte_length(%nyx_string* %1164)
  %1166 = call %nyx_string* @nyx_string_substring(%nyx_string* %1163, i64 9, i64 %1165)
  %1167 = alloca %nyx_string*
  store %nyx_string* %1166, %nyx_string** %1167
  %1168 = load %nyx_string*, %nyx_string** %725
  %1169 = alloca %nyx_string*
  store %nyx_string* %1168, %nyx_string** %1169
  %1170 = alloca i64
  store i64 0, i64* %1170
  %1171 = alloca i1
  store i1 0, i1* %1171
  %1172 = call i8* @llvm.stacksave()
  br label %while_cond302
while_cond302:
  %1173 = alloca i1
  store i1 false, i1* %1173
  %1174 = load i64, i64* %1170
  %1175 = load %nyx_string*, %nyx_string** %1167
  %1176 = call i64 @nyx_string_byte_length(%nyx_string* %1175)
  %1177 = icmp slt i64 %1174, %1176
  br i1 %1177, label %sc_and_rhs305, label %sc_and_end306
sc_and_rhs305:
  %1178 = load i1, i1* %1171
  %1179 = xor i1 %1178, true
  store i1 %1179, i1* %1173
  br label %sc_and_end306
sc_and_end306:
  %1180 = load i1, i1* %1173
  br i1 %1180, label %while_body303, label %while_end304
while_body303:
  call void @llvm.stackrestore(i8* %1172)
  %1181 = load %nyx_string*, %nyx_string** %1167
  %1182 = load i64, i64* %1170
  %1183 = call i8 @nyx_string_char_at(%nyx_string* %1181, i64 %1182)
  %1184 = zext i8 %1183 to i64
  %1185 = trunc i64 %1184 to i8
  %1186 = alloca i8
  store i8 %1185, i8* %1186
  %1187 = alloca i1
  store i1 true, i1* %1187
  %1188 = alloca i1
  store i1 true, i1* %1188
  %1189 = load i8, i8* %1186
  %1190 = getelementptr [1 x i8], [1 x i8]* @.str106, i32 0, i32 0
  %1191 = load i8, i8* %1190
  %1192 = zext i8 %1191 to i64
  %1193 = zext i8 %1189 to i64
  %1194 = icmp eq i64 %1193, %1192
  br i1 %1194, label %sc_or_end308, label %sc_or_rhs307
sc_or_rhs307:
  %1195 = load i8, i8* %1186
  %1196 = getelementptr [1 x i8], [1 x i8]* @.str107, i32 0, i32 0
  %1197 = load i8, i8* %1196
  %1198 = zext i8 %1197 to i64
  %1199 = zext i8 %1195 to i64
  %1200 = icmp eq i64 %1199, %1198
  store i1 %1200, i1* %1188
  br label %sc_or_end308
sc_or_end308:
  %1201 = load i1, i1* %1188
  br i1 %1201, label %sc_or_end310, label %sc_or_rhs309
sc_or_rhs309:
  %1202 = load i8, i8* %1186
  %1203 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %1204 = load i8, i8* %1203
  %1205 = zext i8 %1204 to i64
  %1206 = zext i8 %1202 to i64
  %1207 = icmp eq i64 %1206, %1205
  store i1 %1207, i1* %1187
  br label %sc_or_end310
sc_or_end310:
  %1208 = load i1, i1* %1187
  br i1 %1208, label %then311, label %else312
then311:
  store i1 1, i1* %1171
  br label %merge313
else312:
  %1209 = load %nyx_string*, %nyx_string** %1169
  %1210 = load i8, i8* %1186
  %1211 = call %nyx_string* @nyx_string_from_char(i8 %1210)
  %1212 = call %nyx_string* @nyx_string_concat(%nyx_string* %1209, %nyx_string* %1211)
  store %nyx_string* %1212, %nyx_string** %1169
  %1213 = load i64, i64* %1170
  %1214 = add i64 %1213, 1
  store i64 %1214, i64* %1170
  br label %merge313
merge313:
  br label %while_cond302
while_end304:
  %1215 = load %nyx_string*, %nyx_string** %1169
  %1216 = load %nyx_string*, %nyx_string** %725
  %1217 = call i1 @nyx_string_equals(%nyx_string* %1215, %nyx_string* %1216)
  %1218 = xor i1 %1217, true
  br i1 %1218, label %then314, label %else315
then314:
  %1219 = load { i64, i8* }*, { i64, i8* }** %707
  %1220 = load %nyx_string*, %nyx_string** %1169
  %1221 = ptrtoint %nyx_string* %1220 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1219, i64 %1221, i64 2)
  br label %merge316
else315:
  br label %merge316
merge316:
  br label %merge301
else300:
  br label %merge301
merge301:
  %1222 = load %nyx_string*, %nyx_string** %771
  %1223 = load %nyx_string*, %nyx_string** %746
  %1224 = call i1 @nyx_string_starts_with(%nyx_string* %1222, %nyx_string* %1223)
  br i1 %1224, label %then317, label %else318
then317:
  %1225 = load %nyx_string*, %nyx_string** %771
  %1226 = load %nyx_string*, %nyx_string** %771
  %1227 = call i64 @nyx_string_byte_length(%nyx_string* %1226)
  %1228 = call %nyx_string* @nyx_string_substring(%nyx_string* %1225, i64 12, i64 %1227)
  %1229 = alloca %nyx_string*
  store %nyx_string* %1228, %nyx_string** %1229
  %1230 = load %nyx_string*, %nyx_string** %725
  %1231 = alloca %nyx_string*
  store %nyx_string* %1230, %nyx_string** %1231
  %1232 = alloca i64
  store i64 0, i64* %1232
  %1233 = alloca i1
  store i1 0, i1* %1233
  %1234 = call i8* @llvm.stacksave()
  br label %while_cond320
while_cond320:
  %1235 = alloca i1
  store i1 false, i1* %1235
  %1236 = load i64, i64* %1232
  %1237 = load %nyx_string*, %nyx_string** %1229
  %1238 = call i64 @nyx_string_byte_length(%nyx_string* %1237)
  %1239 = icmp slt i64 %1236, %1238
  br i1 %1239, label %sc_and_rhs323, label %sc_and_end324
sc_and_rhs323:
  %1240 = load i1, i1* %1233
  %1241 = xor i1 %1240, true
  store i1 %1241, i1* %1235
  br label %sc_and_end324
sc_and_end324:
  %1242 = load i1, i1* %1235
  br i1 %1242, label %while_body321, label %while_end322
while_body321:
  call void @llvm.stackrestore(i8* %1234)
  %1243 = load %nyx_string*, %nyx_string** %1229
  %1244 = load i64, i64* %1232
  %1245 = call i8 @nyx_string_char_at(%nyx_string* %1243, i64 %1244)
  %1246 = zext i8 %1245 to i64
  %1247 = trunc i64 %1246 to i8
  %1248 = alloca i8
  store i8 %1247, i8* %1248
  %1249 = alloca i1
  store i1 true, i1* %1249
  %1250 = alloca i1
  store i1 true, i1* %1250
  %1251 = load i8, i8* %1248
  %1252 = getelementptr [1 x i8], [1 x i8]* @.str109, i32 0, i32 0
  %1253 = load i8, i8* %1252
  %1254 = zext i8 %1253 to i64
  %1255 = zext i8 %1251 to i64
  %1256 = icmp eq i64 %1255, %1254
  br i1 %1256, label %sc_or_end326, label %sc_or_rhs325
sc_or_rhs325:
  %1257 = load i8, i8* %1248
  %1258 = getelementptr [1 x i8], [1 x i8]* @.str110, i32 0, i32 0
  %1259 = load i8, i8* %1258
  %1260 = zext i8 %1259 to i64
  %1261 = zext i8 %1257 to i64
  %1262 = icmp eq i64 %1261, %1260
  store i1 %1262, i1* %1250
  br label %sc_or_end326
sc_or_end326:
  %1263 = load i1, i1* %1250
  br i1 %1263, label %sc_or_end328, label %sc_or_rhs327
sc_or_rhs327:
  %1264 = load i8, i8* %1248
  %1265 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %1266 = load i8, i8* %1265
  %1267 = zext i8 %1266 to i64
  %1268 = zext i8 %1264 to i64
  %1269 = icmp eq i64 %1268, %1267
  store i1 %1269, i1* %1249
  br label %sc_or_end328
sc_or_end328:
  %1270 = load i1, i1* %1249
  br i1 %1270, label %then329, label %else330
then329:
  store i1 1, i1* %1233
  br label %merge331
else330:
  %1271 = load %nyx_string*, %nyx_string** %1231
  %1272 = load i8, i8* %1248
  %1273 = call %nyx_string* @nyx_string_from_char(i8 %1272)
  %1274 = call %nyx_string* @nyx_string_concat(%nyx_string* %1271, %nyx_string* %1273)
  store %nyx_string* %1274, %nyx_string** %1231
  %1275 = load i64, i64* %1232
  %1276 = add i64 %1275, 1
  store i64 %1276, i64* %1232
  br label %merge331
merge331:
  br label %while_cond320
while_end322:
  %1277 = load %nyx_string*, %nyx_string** %1231
  %1278 = load %nyx_string*, %nyx_string** %725
  %1279 = call i1 @nyx_string_equals(%nyx_string* %1277, %nyx_string* %1278)
  %1280 = xor i1 %1279, true
  br i1 %1280, label %then332, label %else333
then332:
  %1281 = load { i64, i8* }*, { i64, i8* }** %707
  %1282 = load %nyx_string*, %nyx_string** %1231
  %1283 = ptrtoint %nyx_string* %1282 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1281, i64 %1283, i64 2)
  br label %merge334
else333:
  br label %merge334
merge334:
  br label %merge319
else318:
  br label %merge319
merge319:
  %1284 = load i64, i64* %713
  %1285 = add i64 %1284, 1
  store i64 %1285, i64* %713
  br label %while_cond179
while_end181:
  %1286 = load { i64, i8* }*, { i64, i8* }** %707
  ret { i64, i8* }* %1286
}

define internal %nyx_string* @detect_package_name(
%nyx_string* %resolved_path.param) {
  %resolved_path.ptr = alloca %nyx_string*
  store %nyx_string* %resolved_path.param, %nyx_string** %resolved_path.ptr
  %1287 = getelementptr [10 x i8], [10 x i8]* @.str112, i32 0, i32 0
  %1288 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %1287, i64 9)
  %1289 = alloca %nyx_string*
  store %nyx_string* %1288, %nyx_string** %1289
  %1290 = load %nyx_string*, %nyx_string** %1289
  %1291 = call i64 @nyx_string_byte_length(%nyx_string* %1290)
  %1292 = alloca i64
  store i64 %1291, i64* %1292
  %1293 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1294 = load %nyx_string*, %nyx_string** %1289
  %1295 = call i1 @nyx_string_contains(%nyx_string* %1293, %nyx_string* %1294)
  %1296 = xor i1 %1295, true
  br i1 %1296, label %then335, label %else336
then335:
  %1297 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %1298 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %1297, i64 0)
  ret %nyx_string* %1298
else336:
  br label %merge337
merge337:
  %1299 = alloca i64
  store i64 0, i64* %1299
  %1300 = sub i64 0, 1
  %1301 = alloca i64
  store i64 %1300, i64* %1301
  %1302 = call i8* @llvm.stacksave()
  br label %while_cond338
while_cond338:
  %1303 = load i64, i64* %1299
  %1304 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1305 = call i64 @nyx_string_byte_length(%nyx_string* %1304)
  %1306 = load i64, i64* %1292
  %1307 = sub i64 %1305, %1306
  %1308 = icmp sle i64 %1303, %1307
  br i1 %1308, label %while_body339, label %while_end340
while_body339:
  call void @llvm.stackrestore(i8* %1302)
  %1309 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1310 = load i64, i64* %1299
  %1311 = load i64, i64* %1299
  %1312 = load i64, i64* %1292
  %1313 = add i64 %1311, %1312
  %1314 = call %nyx_string* @nyx_string_substring(%nyx_string* %1309, i64 %1310, i64 %1313)
  %1315 = load %nyx_string*, %nyx_string** %1289
  %1316 = call i1 @nyx_string_equals(%nyx_string* %1314, %nyx_string* %1315)
  br i1 %1316, label %then341, label %else342
then341:
  %1317 = load i64, i64* %1299
  store i64 %1317, i64* %1301
  %1318 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1319 = call i64 @nyx_string_byte_length(%nyx_string* %1318)
  store i64 %1319, i64* %1299
  br label %merge343
else342:
  %1320 = load i64, i64* %1299
  %1321 = add i64 %1320, 1
  store i64 %1321, i64* %1299
  br label %merge343
merge343:
  br label %while_cond338
while_end340:
  %1322 = load i64, i64* %1301
  %1323 = icmp slt i64 %1322, 0
  br i1 %1323, label %then344, label %else345
then344:
  %1324 = getelementptr [1 x i8], [1 x i8]* @.str114, i32 0, i32 0
  %1325 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %1324, i64 0)
  ret %nyx_string* %1325
else345:
  br label %merge346
merge346:
  %1326 = load i64, i64* %1301
  %1327 = load i64, i64* %1292
  %1328 = add i64 %1326, %1327
  %1329 = alloca i64
  store i64 %1328, i64* %1329
  %1330 = load i64, i64* %1329
  %1331 = alloca i64
  store i64 %1330, i64* %1331
  %1332 = call i8* @llvm.stacksave()
  br label %while_cond347
while_cond347:
  %1333 = load i64, i64* %1331
  %1334 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1335 = call i64 @nyx_string_byte_length(%nyx_string* %1334)
  %1336 = icmp slt i64 %1333, %1335
  br i1 %1336, label %while_body348, label %while_end349
while_body348:
  call void @llvm.stackrestore(i8* %1332)
  %1337 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1338 = load i64, i64* %1331
  %1339 = call i8 @nyx_string_char_at(%nyx_string* %1337, i64 %1338)
  %1340 = zext i8 %1339 to i64
  %1341 = trunc i64 %1340 to i8
  %1342 = alloca i8
  store i8 %1341, i8* %1342
  %1343 = load i8, i8* %1342
  %1344 = getelementptr [1 x i8], [1 x i8]* @.str115, i32 0, i32 0
  %1345 = load i8, i8* %1344
  %1346 = zext i8 %1345 to i64
  %1347 = zext i8 %1343 to i64
  %1348 = icmp eq i64 %1347, %1346
  br i1 %1348, label %then350, label %else351
then350:
  %1349 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1350 = call i64 @nyx_string_byte_length(%nyx_string* %1349)
  %1351 = add i64 %1350, 1
  store i64 %1351, i64* %1331
  br label %merge352
else351:
  %1352 = load i64, i64* %1331
  %1353 = add i64 %1352, 1
  store i64 %1353, i64* %1331
  br label %merge352
merge352:
  br label %while_cond347
while_end349:
  %1354 = load i64, i64* %1331
  %1355 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1356 = call i64 @nyx_string_byte_length(%nyx_string* %1355)
  %1357 = icmp sgt i64 %1354, %1356
  br i1 %1357, label %then353, label %else354
then353:
  %1358 = load i64, i64* %1331
  %1359 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1360 = call i64 @nyx_string_byte_length(%nyx_string* %1359)
  %1361 = add i64 %1360, 1
  %1362 = sub i64 %1358, %1361
  %1363 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1364 = call i64 @nyx_string_byte_length(%nyx_string* %1363)
  %1365 = add i64 %1362, %1364
  %1366 = alloca i64
  store i64 %1365, i64* %1366
  %1367 = load i64, i64* %1329
  %1368 = alloca i64
  store i64 %1367, i64* %1368
  %1369 = call i8* @llvm.stacksave()
  br label %while_cond356
while_cond356:
  %1370 = load i64, i64* %1368
  %1371 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1372 = call i64 @nyx_string_byte_length(%nyx_string* %1371)
  %1373 = icmp slt i64 %1370, %1372
  br i1 %1373, label %while_body357, label %while_end358
while_body357:
  call void @llvm.stackrestore(i8* %1369)
  %1374 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1375 = load i64, i64* %1368
  %1376 = call i8 @nyx_string_char_at(%nyx_string* %1374, i64 %1375)
  %1377 = zext i8 %1376 to i64
  %1378 = trunc i64 %1377 to i8
  %1379 = alloca i8
  store i8 %1378, i8* %1379
  %1380 = load i8, i8* %1379
  %1381 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %1382 = load i8, i8* %1381
  %1383 = zext i8 %1382 to i64
  %1384 = zext i8 %1380 to i64
  %1385 = icmp eq i64 %1384, %1383
  br i1 %1385, label %then359, label %else360
then359:
  %1386 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1387 = load i64, i64* %1329
  %1388 = load i64, i64* %1368
  %1389 = call %nyx_string* @nyx_string_substring(%nyx_string* %1386, i64 %1387, i64 %1388)
  ret %nyx_string* %1389
else360:
  br label %merge361
merge361:
  %1390 = load i64, i64* %1368
  %1391 = add i64 %1390, 1
  store i64 %1391, i64* %1368
  br label %while_cond356
while_end358:
  br label %merge355
else354:
  br label %merge355
merge355:
  %1392 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1393 = load i64, i64* %1329
  %1394 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %1395 = call i64 @nyx_string_byte_length(%nyx_string* %1394)
  %1396 = call %nyx_string* @nyx_string_substring(%nyx_string* %1392, i64 %1393, i64 %1395)
  ret %nyx_string* %1396
}

define internal %nyx_string* @rewrite_package_imports(
%nyx_string* %source.param, %nyx_string* %pkg_name.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %pkg_name.ptr = alloca %nyx_string*
  store %nyx_string* %pkg_name.param, %nyx_string** %pkg_name.ptr
  %1397 = getelementptr [6 x i8], [6 x i8]* @.str117, i32 0, i32 0
  %1398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %1397, i64 5)
  %1399 = alloca %nyx_string*
  store %nyx_string* %1398, %nyx_string** %1399
  %1400 = load %nyx_string*, %nyx_string** %1399
  %1401 = call i64 @nyx_string_byte_length(%nyx_string* %1400)
  %1402 = alloca i64
  store i64 %1401, i64* %1402
  %1403 = load %nyx_string*, %nyx_string** %source.ptr
  %1404 = load %nyx_string*, %nyx_string** %1399
  %1405 = call i1 @nyx_string_contains(%nyx_string* %1403, %nyx_string* %1404)
  %1406 = xor i1 %1405, true
  br i1 %1406, label %then362, label %else363
then362:
  %1407 = load %nyx_string*, %nyx_string** %source.ptr
  ret %nyx_string* %1407
else363:
  br label %merge364
merge364:
  %1408 = load %nyx_string*, %nyx_string** %source.ptr
  %1409 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %1410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %1409, i64 1)
  %1411 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1408, %nyx_string* %1410)
  %1412 = alloca { i64, i8* }*
  store { i64, i8* }* %1411, { i64, i8* }** %1412
  %1413 = getelementptr [1 x i8], [1 x i8]* @.str119, i32 0, i32 0
  %1414 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %1413, i64 0)
  %1415 = alloca %nyx_string*
  store %nyx_string* %1414, %nyx_string** %1415
  %1416 = alloca i64
  store i64 0, i64* %1416
  %1417 = getelementptr [7 x i8], [7 x i8]* @.str120, i32 0, i32 0
  %1418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %1417, i64 6)
  %1419 = alloca %nyx_string*
  store %nyx_string* %1418, %nyx_string** %1419
  %1420 = getelementptr [1 x i8], [1 x i8]* @.str121, i32 0, i32 0
  %1421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %1420, i64 0)
  %1422 = alloca %nyx_string*
  store %nyx_string* %1421, %nyx_string** %1422
  %1423 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %1424 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %1423, i64 1)
  %1425 = alloca %nyx_string*
  store %nyx_string* %1424, %nyx_string** %1425
  %1426 = getelementptr [6 x i8], [6 x i8]* @.str123, i32 0, i32 0
  %1427 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %1426, i64 5)
  %1428 = alloca %nyx_string*
  store %nyx_string* %1427, %nyx_string** %1428
  %1429 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %1430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %1429, i64 1)
  %1431 = alloca %nyx_string*
  store %nyx_string* %1430, %nyx_string** %1431
  %1432 = call i8* @llvm.stacksave()
  br label %while_cond365
while_cond365:
  %1433 = load i64, i64* %1416
  %1434 = load { i64, i8* }*, { i64, i8* }** %1412
  %1435 = call i64 @nyx_array_length({ i64, i8* }* %1434)
  %1436 = icmp slt i64 %1433, %1435
  br i1 %1436, label %while_body366, label %while_end367
while_body366:
  call void @llvm.stackrestore(i8* %1432)
  %1437 = load { i64, i8* }*, { i64, i8* }** %1412
  %1438 = load i64, i64* %1416
  %1439 = call i64 @nyx_array_get_checked({ i64, i8* }* %1437, i64 %1438, i64 2)
  %1440 = inttoptr i64 %1439 to %nyx_string*
  %1441 = alloca %nyx_string*
  store %nyx_string* %1440, %nyx_string** %1441
  %1442 = alloca i1
  store i1 false, i1* %1442
  %1443 = load %nyx_string*, %nyx_string** %1441
  %1444 = load %nyx_string*, %nyx_string** %1419
  %1445 = call i1 @nyx_string_contains(%nyx_string* %1443, %nyx_string* %1444)
  br i1 %1445, label %sc_and_rhs368, label %sc_and_end369
sc_and_rhs368:
  %1446 = load %nyx_string*, %nyx_string** %1441
  %1447 = load %nyx_string*, %nyx_string** %1399
  %1448 = call i1 @nyx_string_contains(%nyx_string* %1446, %nyx_string* %1447)
  store i1 %1448, i1* %1442
  br label %sc_and_end369
sc_and_end369:
  %1449 = load i1, i1* %1442
  br i1 %1449, label %then370, label %else371
then370:
  %1450 = load %nyx_string*, %nyx_string** %1422
  %1451 = alloca %nyx_string*
  store %nyx_string* %1450, %nyx_string** %1451
  %1452 = alloca i64
  store i64 0, i64* %1452
  %1453 = alloca i1
  store i1 0, i1* %1453
  %1454 = call i8* @llvm.stacksave()
  br label %while_cond373
while_cond373:
  %1455 = load i64, i64* %1452
  %1456 = load %nyx_string*, %nyx_string** %1441
  %1457 = call i64 @nyx_string_byte_length(%nyx_string* %1456)
  %1458 = icmp slt i64 %1455, %1457
  br i1 %1458, label %while_body374, label %while_end375
while_body374:
  call void @llvm.stackrestore(i8* %1454)
  %1459 = alloca i1
  store i1 false, i1* %1459
  %1460 = load i1, i1* %1453
  %1461 = xor i1 %1460, true
  br i1 %1461, label %sc_and_rhs376, label %sc_and_end377
sc_and_rhs376:
  %1462 = load i64, i64* %1452
  %1463 = load i64, i64* %1402
  %1464 = add i64 %1462, %1463
  %1465 = load %nyx_string*, %nyx_string** %1441
  %1466 = call i64 @nyx_string_byte_length(%nyx_string* %1465)
  %1467 = icmp sle i64 %1464, %1466
  store i1 %1467, i1* %1459
  br label %sc_and_end377
sc_and_end377:
  %1468 = load i1, i1* %1459
  br i1 %1468, label %then378, label %else379
then378:
  %1469 = load %nyx_string*, %nyx_string** %1441
  %1470 = load i64, i64* %1452
  %1471 = load i64, i64* %1452
  %1472 = load i64, i64* %1402
  %1473 = add i64 %1471, %1472
  %1474 = call %nyx_string* @nyx_string_substring(%nyx_string* %1469, i64 %1470, i64 %1473)
  %1475 = load %nyx_string*, %nyx_string** %1399
  %1476 = call i1 @nyx_string_equals(%nyx_string* %1474, %nyx_string* %1475)
  br i1 %1476, label %then381, label %else382
then381:
  %1477 = load %nyx_string*, %nyx_string** %1451
  %1478 = load %nyx_string*, %nyx_string** %1425
  %1479 = call %nyx_string* @nyx_string_concat(%nyx_string* %1477, %nyx_string* %1478)
  %1480 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %1481 = call %nyx_string* @nyx_string_concat(%nyx_string* %1479, %nyx_string* %1480)
  %1482 = load %nyx_string*, %nyx_string** %1428
  %1483 = call %nyx_string* @nyx_string_concat(%nyx_string* %1481, %nyx_string* %1482)
  store %nyx_string* %1483, %nyx_string** %1451
  %1484 = load i64, i64* %1452
  %1485 = load i64, i64* %1402
  %1486 = add i64 %1484, %1485
  store i64 %1486, i64* %1452
  store i1 1, i1* %1453
  br label %merge383
else382:
  %1487 = load %nyx_string*, %nyx_string** %1441
  %1488 = load i64, i64* %1452
  %1489 = call i8 @nyx_string_char_at(%nyx_string* %1487, i64 %1488)
  %1490 = zext i8 %1489 to i64
  %1491 = trunc i64 %1490 to i8
  %1492 = alloca i8
  store i8 %1491, i8* %1492
  %1493 = load %nyx_string*, %nyx_string** %1451
  %1494 = load i8, i8* %1492
  %1495 = call %nyx_string* @nyx_string_from_char(i8 %1494)
  %1496 = call %nyx_string* @nyx_string_concat(%nyx_string* %1493, %nyx_string* %1495)
  store %nyx_string* %1496, %nyx_string** %1451
  %1497 = load i64, i64* %1452
  %1498 = add i64 %1497, 1
  store i64 %1498, i64* %1452
  br label %merge383
merge383:
  br label %merge380
else379:
  %1499 = load %nyx_string*, %nyx_string** %1441
  %1500 = load i64, i64* %1452
  %1501 = call i8 @nyx_string_char_at(%nyx_string* %1499, i64 %1500)
  %1502 = zext i8 %1501 to i64
  %1503 = trunc i64 %1502 to i8
  %1504 = alloca i8
  store i8 %1503, i8* %1504
  %1505 = load %nyx_string*, %nyx_string** %1451
  %1506 = load i8, i8* %1504
  %1507 = call %nyx_string* @nyx_string_from_char(i8 %1506)
  %1508 = call %nyx_string* @nyx_string_concat(%nyx_string* %1505, %nyx_string* %1507)
  store %nyx_string* %1508, %nyx_string** %1451
  %1509 = load i64, i64* %1452
  %1510 = add i64 %1509, 1
  store i64 %1510, i64* %1452
  br label %merge380
merge380:
  br label %while_cond373
while_end375:
  %1511 = load i64, i64* %1416
  %1512 = icmp sgt i64 %1511, 0
  br i1 %1512, label %then384, label %else385
then384:
  %1513 = load %nyx_string*, %nyx_string** %1415
  %1514 = load %nyx_string*, %nyx_string** %1431
  %1515 = call %nyx_string* @nyx_string_concat(%nyx_string* %1513, %nyx_string* %1514)
  store %nyx_string* %1515, %nyx_string** %1415
  br label %merge386
else385:
  br label %merge386
merge386:
  %1516 = load %nyx_string*, %nyx_string** %1415
  %1517 = load %nyx_string*, %nyx_string** %1451
  %1518 = call %nyx_string* @nyx_string_concat(%nyx_string* %1516, %nyx_string* %1517)
  store %nyx_string* %1518, %nyx_string** %1415
  br label %merge372
else371:
  %1519 = load i64, i64* %1416
  %1520 = icmp sgt i64 %1519, 0
  br i1 %1520, label %then387, label %else388
then387:
  %1521 = load %nyx_string*, %nyx_string** %1415
  %1522 = load %nyx_string*, %nyx_string** %1431
  %1523 = call %nyx_string* @nyx_string_concat(%nyx_string* %1521, %nyx_string* %1522)
  store %nyx_string* %1523, %nyx_string** %1415
  br label %merge389
else388:
  br label %merge389
merge389:
  %1524 = load %nyx_string*, %nyx_string** %1415
  %1525 = load %nyx_string*, %nyx_string** %1441
  %1526 = call %nyx_string* @nyx_string_concat(%nyx_string* %1524, %nyx_string* %1525)
  store %nyx_string* %1526, %nyx_string** %1415
  br label %merge372
merge372:
  %1527 = load i64, i64* %1416
  %1528 = add i64 %1527, 1
  store i64 %1528, i64* %1416
  br label %while_cond365
while_end367:
  %1529 = load %nyx_string*, %nyx_string** %1415
  ret %nyx_string* %1529
}

define internal %nyx_string* @strip_duplicate_structs(
%nyx_string* %source.param, i8* %declared.param) {
  %source.ptr = alloca %nyx_string*
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %declared.ptr = alloca i8*
  store i8* %declared.param, i8** %declared.ptr
  %1530 = load %nyx_string*, %nyx_string** %source.ptr
  %1531 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %1532 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %1531, i64 1)
  %1533 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1530, %nyx_string* %1532)
  %1534 = alloca { i64, i8* }*
  store { i64, i8* }* %1533, { i64, i8* }** %1534
  %1535 = getelementptr [1 x i8], [1 x i8]* @.str126, i32 0, i32 0
  %1536 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %1535, i64 0)
  %1537 = alloca %nyx_string*
  store %nyx_string* %1536, %nyx_string** %1537
  %1538 = alloca i64
  store i64 0, i64* %1538
  %1539 = alloca i64
  store i64 0, i64* %1539
  %1540 = getelementptr [15 x i8], [15 x i8]* @.str127, i32 0, i32 0
  %1541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %1540, i64 14)
  %1542 = alloca %nyx_string*
  store %nyx_string* %1541, %nyx_string** %1542
  %1543 = getelementptr [8 x i8], [8 x i8]* @.str128, i32 0, i32 0
  %1544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %1543, i64 7)
  %1545 = alloca %nyx_string*
  store %nyx_string* %1544, %nyx_string** %1545
  %1546 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %1547 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %1546, i64 1)
  %1548 = alloca %nyx_string*
  store %nyx_string* %1547, %nyx_string** %1548
  %1549 = getelementptr [1 x i8], [1 x i8]* @.str130, i32 0, i32 0
  %1550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %1549, i64 0)
  %1551 = alloca %nyx_string*
  store %nyx_string* %1550, %nyx_string** %1551
  %1552 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %1553 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %1552, i64 1)
  %1554 = alloca %nyx_string*
  store %nyx_string* %1553, %nyx_string** %1554
  %1555 = call i8* @llvm.stacksave()
  br label %while_cond390
while_cond390:
  %1556 = load i64, i64* %1538
  %1557 = load { i64, i8* }*, { i64, i8* }** %1534
  %1558 = call i64 @nyx_array_length({ i64, i8* }* %1557)
  %1559 = icmp slt i64 %1556, %1558
  br i1 %1559, label %while_body391, label %while_end392
while_body391:
  call void @llvm.stackrestore(i8* %1555)
  %1560 = load { i64, i8* }*, { i64, i8* }** %1534
  %1561 = load i64, i64* %1538
  %1562 = call i64 @nyx_array_get_checked({ i64, i8* }* %1560, i64 %1561, i64 2)
  %1563 = inttoptr i64 %1562 to %nyx_string*
  %1564 = alloca %nyx_string*
  store %nyx_string* %1563, %nyx_string** %1564
  %1565 = load i64, i64* %1539
  %1566 = icmp sgt i64 %1565, 0
  br i1 %1566, label %then393, label %else394
then393:
  %1567 = alloca i64
  store i64 0, i64* %1567
  %1568 = call i8* @llvm.stacksave()
  br label %while_cond396
while_cond396:
  %1569 = load i64, i64* %1567
  %1570 = load %nyx_string*, %nyx_string** %1564
  %1571 = call i64 @nyx_string_byte_length(%nyx_string* %1570)
  %1572 = icmp slt i64 %1569, %1571
  br i1 %1572, label %while_body397, label %while_end398
while_body397:
  call void @llvm.stackrestore(i8* %1568)
  %1573 = load %nyx_string*, %nyx_string** %1564
  %1574 = load i64, i64* %1567
  %1575 = call i8 @nyx_string_char_at(%nyx_string* %1573, i64 %1574)
  %1576 = zext i8 %1575 to i64
  %1577 = trunc i64 %1576 to i8
  %1578 = alloca i8
  store i8 %1577, i8* %1578
  %1579 = load i8, i8* %1578
  %1580 = getelementptr [1 x i8], [1 x i8]* @.str132, i32 0, i32 0
  %1581 = load i8, i8* %1580
  %1582 = zext i8 %1581 to i64
  %1583 = zext i8 %1579 to i64
  %1584 = icmp eq i64 %1583, %1582
  br i1 %1584, label %then399, label %else400
then399:
  %1585 = load i64, i64* %1539
  %1586 = add i64 %1585, 1
  store i64 %1586, i64* %1539
  br label %merge401
else400:
  br label %merge401
merge401:
  %1587 = load i8, i8* %1578
  %1588 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %1589 = load i8, i8* %1588
  %1590 = zext i8 %1589 to i64
  %1591 = zext i8 %1587 to i64
  %1592 = icmp eq i64 %1591, %1590
  br i1 %1592, label %then402, label %else403
then402:
  %1593 = load i64, i64* %1539
  %1594 = sub i64 %1593, 1
  store i64 %1594, i64* %1539
  br label %merge404
else403:
  br label %merge404
merge404:
  %1595 = load i64, i64* %1567
  %1596 = add i64 %1595, 1
  store i64 %1596, i64* %1567
  br label %while_cond396
while_end398:
  br label %merge395
else394:
  %1597 = load %nyx_string*, %nyx_string** %1564
  %1598 = call %nyx_string* @nyx_string_trim(%nyx_string* %1597)
  %1599 = alloca %nyx_string*
  store %nyx_string* %1598, %nyx_string** %1599
  %1600 = load %nyx_string*, %nyx_string** %1599
  %1601 = alloca %nyx_string*
  store %nyx_string* %1600, %nyx_string** %1601
  %1602 = alloca i1
  store i1 0, i1* %1602
  %1603 = load %nyx_string*, %nyx_string** %1601
  %1604 = load %nyx_string*, %nyx_string** %1542
  %1605 = call i1 @nyx_string_starts_with(%nyx_string* %1603, %nyx_string* %1604)
  br i1 %1605, label %then405, label %else406
then405:
  %1606 = load %nyx_string*, %nyx_string** %1601
  %1607 = load %nyx_string*, %nyx_string** %1601
  %1608 = call i64 @nyx_string_byte_length(%nyx_string* %1607)
  %1609 = call %nyx_string* @nyx_string_substring(%nyx_string* %1606, i64 14, i64 %1608)
  store %nyx_string* %1609, %nyx_string** %1601
  store i1 1, i1* %1602
  br label %merge407
else406:
  %1610 = load %nyx_string*, %nyx_string** %1601
  %1611 = load %nyx_string*, %nyx_string** %1545
  %1612 = call i1 @nyx_string_starts_with(%nyx_string* %1610, %nyx_string* %1611)
  br i1 %1612, label %then408, label %else409
then408:
  %1613 = load %nyx_string*, %nyx_string** %1601
  %1614 = load %nyx_string*, %nyx_string** %1601
  %1615 = call i64 @nyx_string_byte_length(%nyx_string* %1614)
  %1616 = call %nyx_string* @nyx_string_substring(%nyx_string* %1613, i64 7, i64 %1615)
  store %nyx_string* %1616, %nyx_string** %1601
  store i1 1, i1* %1602
  br label %merge410
else409:
  br label %merge410
merge410:
  br label %merge407
merge407:
  %1617 = alloca i1
  store i1 false, i1* %1617
  %1618 = load i1, i1* %1602
  br i1 %1618, label %sc_and_rhs411, label %sc_and_end412
sc_and_rhs411:
  %1619 = load %nyx_string*, %nyx_string** %1599
  %1620 = load %nyx_string*, %nyx_string** %1548
  %1621 = call i1 @nyx_string_contains(%nyx_string* %1619, %nyx_string* %1620)
  store i1 %1621, i1* %1617
  br label %sc_and_end412
sc_and_end412:
  %1622 = load i1, i1* %1617
  br i1 %1622, label %then413, label %else414
then413:
  %1623 = load %nyx_string*, %nyx_string** %1551
  %1624 = alloca %nyx_string*
  store %nyx_string* %1623, %nyx_string** %1624
  %1625 = alloca i64
  store i64 0, i64* %1625
  %1626 = alloca i1
  store i1 0, i1* %1626
  %1627 = call i8* @llvm.stacksave()
  br label %while_cond416
while_cond416:
  %1628 = alloca i1
  store i1 false, i1* %1628
  %1629 = load i64, i64* %1625
  %1630 = load %nyx_string*, %nyx_string** %1601
  %1631 = call i64 @nyx_string_byte_length(%nyx_string* %1630)
  %1632 = icmp slt i64 %1629, %1631
  br i1 %1632, label %sc_and_rhs419, label %sc_and_end420
sc_and_rhs419:
  %1633 = load i1, i1* %1626
  %1634 = xor i1 %1633, true
  store i1 %1634, i1* %1628
  br label %sc_and_end420
sc_and_end420:
  %1635 = load i1, i1* %1628
  br i1 %1635, label %while_body417, label %while_end418
while_body417:
  call void @llvm.stackrestore(i8* %1627)
  %1636 = load %nyx_string*, %nyx_string** %1601
  %1637 = load i64, i64* %1625
  %1638 = call i8 @nyx_string_char_at(%nyx_string* %1636, i64 %1637)
  %1639 = zext i8 %1638 to i64
  %1640 = trunc i64 %1639 to i8
  %1641 = alloca i8
  store i8 %1640, i8* %1641
  %1642 = alloca i1
  store i1 true, i1* %1642
  %1643 = alloca i1
  store i1 true, i1* %1643
  %1644 = load i8, i8* %1641
  %1645 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %1646 = load i8, i8* %1645
  %1647 = zext i8 %1646 to i64
  %1648 = zext i8 %1644 to i64
  %1649 = icmp eq i64 %1648, %1647
  br i1 %1649, label %sc_or_end422, label %sc_or_rhs421
sc_or_rhs421:
  %1650 = load i8, i8* %1641
  %1651 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %1652 = load i8, i8* %1651
  %1653 = zext i8 %1652 to i64
  %1654 = zext i8 %1650 to i64
  %1655 = icmp eq i64 %1654, %1653
  store i1 %1655, i1* %1643
  br label %sc_or_end422
sc_or_end422:
  %1656 = load i1, i1* %1643
  br i1 %1656, label %sc_or_end424, label %sc_or_rhs423
sc_or_rhs423:
  %1657 = load i8, i8* %1641
  %1658 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %1659 = load i8, i8* %1658
  %1660 = zext i8 %1659 to i64
  %1661 = zext i8 %1657 to i64
  %1662 = icmp eq i64 %1661, %1660
  store i1 %1662, i1* %1642
  br label %sc_or_end424
sc_or_end424:
  %1663 = load i1, i1* %1642
  br i1 %1663, label %then425, label %else426
then425:
  store i1 1, i1* %1626
  br label %merge427
else426:
  %1664 = load %nyx_string*, %nyx_string** %1624
  %1665 = load i8, i8* %1641
  %1666 = call %nyx_string* @nyx_string_from_char(i8 %1665)
  %1667 = call %nyx_string* @nyx_string_concat(%nyx_string* %1664, %nyx_string* %1666)
  store %nyx_string* %1667, %nyx_string** %1624
  %1668 = load i64, i64* %1625
  %1669 = add i64 %1668, 1
  store i64 %1669, i64* %1625
  br label %merge427
merge427:
  br label %while_cond416
while_end418:
  %1670 = load i8*, i8** %declared.ptr
  %1671 = load %nyx_string*, %nyx_string** %1624
  %1672 = call i8* @nyx_string_to_cstr(%nyx_string* %1671)
  %1673 = call i1 @nyx_map_contains_str(i8* %1670, i8* %1672)
  br i1 %1673, label %then428, label %else429
then428:
  %1674 = alloca i64
  store i64 0, i64* %1674
  %1675 = alloca i64
  store i64 0, i64* %1675
  %1676 = call i8* @llvm.stacksave()
  br label %while_cond431
while_cond431:
  %1677 = load i64, i64* %1675
  %1678 = load %nyx_string*, %nyx_string** %1564
  %1679 = call i64 @nyx_string_byte_length(%nyx_string* %1678)
  %1680 = icmp slt i64 %1677, %1679
  br i1 %1680, label %while_body432, label %while_end433
while_body432:
  call void @llvm.stackrestore(i8* %1676)
  %1681 = load %nyx_string*, %nyx_string** %1564
  %1682 = load i64, i64* %1675
  %1683 = call i8 @nyx_string_char_at(%nyx_string* %1681, i64 %1682)
  %1684 = zext i8 %1683 to i64
  %1685 = trunc i64 %1684 to i8
  %1686 = alloca i8
  store i8 %1685, i8* %1686
  %1687 = load i8, i8* %1686
  %1688 = getelementptr [1 x i8], [1 x i8]* @.str137, i32 0, i32 0
  %1689 = load i8, i8* %1688
  %1690 = zext i8 %1689 to i64
  %1691 = zext i8 %1687 to i64
  %1692 = icmp eq i64 %1691, %1690
  br i1 %1692, label %then434, label %else435
then434:
  %1693 = load i64, i64* %1674
  %1694 = add i64 %1693, 1
  store i64 %1694, i64* %1674
  br label %merge436
else435:
  br label %merge436
merge436:
  %1695 = load i8, i8* %1686
  %1696 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %1697 = load i8, i8* %1696
  %1698 = zext i8 %1697 to i64
  %1699 = zext i8 %1695 to i64
  %1700 = icmp eq i64 %1699, %1698
  br i1 %1700, label %then437, label %else438
then437:
  %1701 = load i64, i64* %1674
  %1702 = sub i64 %1701, 1
  store i64 %1702, i64* %1674
  br label %merge439
else438:
  br label %merge439
merge439:
  %1703 = load i64, i64* %1675
  %1704 = add i64 %1703, 1
  store i64 %1704, i64* %1675
  br label %while_cond431
while_end433:
  %1705 = load i64, i64* %1674
  %1706 = icmp sgt i64 %1705, 0
  br i1 %1706, label %then440, label %else441
then440:
  %1707 = load i64, i64* %1674
  store i64 %1707, i64* %1539
  br label %merge442
else441:
  br label %merge442
merge442:
  br label %merge430
else429:
  %1708 = load i8*, i8** %declared.ptr
  %1709 = load %nyx_string*, %nyx_string** %1624
  %1710 = call i8* @nyx_string_to_cstr(%nyx_string* %1709)
  call void @nyx_map_insert_int(i8* %1708, i8* %1710, i64 1)
  %1711 = load %nyx_string*, %nyx_string** %1537
  %1712 = load %nyx_string*, %nyx_string** %1564
  %1713 = call %nyx_string* @nyx_string_concat(%nyx_string* %1711, %nyx_string* %1712)
  %1714 = load %nyx_string*, %nyx_string** %1554
  %1715 = call %nyx_string* @nyx_string_concat(%nyx_string* %1713, %nyx_string* %1714)
  store %nyx_string* %1715, %nyx_string** %1537
  br label %merge430
merge430:
  br label %merge415
else414:
  %1716 = load %nyx_string*, %nyx_string** %1537
  %1717 = load %nyx_string*, %nyx_string** %1564
  %1718 = call %nyx_string* @nyx_string_concat(%nyx_string* %1716, %nyx_string* %1717)
  %1719 = load %nyx_string*, %nyx_string** %1554
  %1720 = call %nyx_string* @nyx_string_concat(%nyx_string* %1718, %nyx_string* %1719)
  store %nyx_string* %1720, %nyx_string** %1537
  br label %merge415
merge415:
  br label %merge395
merge395:
  %1721 = load i64, i64* %1538
  %1722 = add i64 %1721, 1
  store i64 %1722, i64* %1538
  br label %while_cond390
while_end392:
  %1723 = load %nyx_string*, %nyx_string** %1537
  ret %nyx_string* %1723
}

define %nyx_string* @resolve_module_path(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %1724 = getelementptr [16 x i8], [16 x i8]* @.str139, i32 0, i32 0
  %1725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %1724, i64 15)
  %1726 = call i8* @nyx_string_to_cstr(%nyx_string* %1725)
  %1727 = call %nyx_string* @nyx_getenv(i8* %1726)
  %1728 = alloca %nyx_string*
  store %nyx_string* %1727, %nyx_string** %1728
  %1729 = load %nyx_string*, %nyx_string** %1728
  %1730 = getelementptr [1 x i8], [1 x i8]* @.str140, i32 0, i32 0
  %1731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %1730, i64 0)
  %1732 = call i1 @nyx_string_equals(%nyx_string* %1729, %nyx_string* %1731)
  %1733 = xor i1 %1732, true
  br i1 %1733, label %then443, label %else444
then443:
  %1734 = load %nyx_string*, %nyx_string** %1728
  %1735 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %1736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %1735, i64 1)
  %1737 = call %nyx_string* @nyx_string_concat(%nyx_string* %1734, %nyx_string* %1736)
  %1738 = load %nyx_string*, %nyx_string** %path.ptr
  %1739 = call %nyx_string* @nyx_string_concat(%nyx_string* %1737, %nyx_string* %1738)
  %1740 = getelementptr [4 x i8], [4 x i8]* @.str142, i32 0, i32 0
  %1741 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %1740, i64 3)
  %1742 = call %nyx_string* @nyx_string_concat(%nyx_string* %1739, %nyx_string* %1741)
  %1743 = alloca %nyx_string*
  store %nyx_string* %1742, %nyx_string** %1743
  %1744 = load %nyx_string*, %nyx_string** %1743
  %1745 = call i8* @nyx_string_to_cstr(%nyx_string* %1744)
  %1746 = call i1 @nyx_file_exists(i8* %1745)
  br i1 %1746, label %then446, label %else447
then446:
  %1747 = load %nyx_string*, %nyx_string** %1743
  ret %nyx_string* %1747
else447:
  br label %merge448
merge448:
  br label %merge445
else444:
  br label %merge445
merge445:
  %1748 = sub i64 0, 1
  %1749 = alloca i64
  store i64 %1748, i64* %1749
  %1750 = alloca i64
  store i64 0, i64* %1750
  %1751 = call i8* @llvm.stacksave()
  br label %while_cond449
while_cond449:
  %1752 = load i64, i64* %1750
  %1753 = load %nyx_string*, %nyx_string** %path.ptr
  %1754 = call i64 @nyx_string_byte_length(%nyx_string* %1753)
  %1755 = icmp slt i64 %1752, %1754
  br i1 %1755, label %while_body450, label %while_end451
while_body450:
  call void @llvm.stackrestore(i8* %1751)
  %1756 = load %nyx_string*, %nyx_string** %path.ptr
  %1757 = load i64, i64* %1750
  %1758 = call i8 @nyx_string_char_at(%nyx_string* %1756, i64 %1757)
  %1759 = zext i8 %1758 to i64
  %1760 = trunc i64 %1759 to i8
  %1761 = alloca i8
  store i8 %1760, i8* %1761
  %1762 = load i8, i8* %1761
  %1763 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %1764 = load i8, i8* %1763
  %1765 = zext i8 %1764 to i64
  %1766 = zext i8 %1762 to i64
  %1767 = icmp eq i64 %1766, %1765
  br i1 %1767, label %then452, label %else453
then452:
  %1768 = load i64, i64* %1750
  store i64 %1768, i64* %1749
  %1769 = load %nyx_string*, %nyx_string** %path.ptr
  %1770 = call i64 @nyx_string_byte_length(%nyx_string* %1769)
  store i64 %1770, i64* %1750
  br label %merge454
else453:
  %1771 = load i64, i64* %1750
  %1772 = add i64 %1771, 1
  store i64 %1772, i64* %1750
  br label %merge454
merge454:
  br label %while_cond449
while_end451:
  %1773 = load i64, i64* %1749
  %1774 = icmp sgt i64 %1773, 0
  br i1 %1774, label %then455, label %else456
then455:
  %1775 = load %nyx_string*, %nyx_string** %path.ptr
  %1776 = load i64, i64* %1749
  %1777 = call %nyx_string* @nyx_string_substring(%nyx_string* %1775, i64 0, i64 %1776)
  %1778 = alloca %nyx_string*
  store %nyx_string* %1777, %nyx_string** %1778
  %1779 = alloca i1
  store i1 false, i1* %1779
  %1780 = alloca i1
  store i1 false, i1* %1780
  %1781 = load %nyx_string*, %nyx_string** %1778
  %1782 = getelementptr [4 x i8], [4 x i8]* @.str144, i32 0, i32 0
  %1783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %1782, i64 3)
  %1784 = call i1 @nyx_string_equals(%nyx_string* %1781, %nyx_string* %1783)
  %1785 = xor i1 %1784, true
  br i1 %1785, label %sc_and_rhs458, label %sc_and_end459
sc_and_rhs458:
  %1786 = load %nyx_string*, %nyx_string** %1778
  %1787 = getelementptr [4 x i8], [4 x i8]* @.str145, i32 0, i32 0
  %1788 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %1787, i64 3)
  %1789 = call i1 @nyx_string_equals(%nyx_string* %1786, %nyx_string* %1788)
  %1790 = xor i1 %1789, true
  store i1 %1790, i1* %1780
  br label %sc_and_end459
sc_and_end459:
  %1791 = load i1, i1* %1780
  br i1 %1791, label %sc_and_rhs460, label %sc_and_end461
sc_and_rhs460:
  %1792 = load %nyx_string*, %nyx_string** %1778
  %1793 = getelementptr [9 x i8], [9 x i8]* @.str146, i32 0, i32 0
  %1794 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %1793, i64 8)
  %1795 = call i1 @nyx_string_equals(%nyx_string* %1792, %nyx_string* %1794)
  %1796 = xor i1 %1795, true
  store i1 %1796, i1* %1779
  br label %sc_and_end461
sc_and_end461:
  %1797 = load i1, i1* %1779
  br i1 %1797, label %then462, label %else463
then462:
  %1798 = load %nyx_string*, %nyx_string** %1728
  %1799 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %1800 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %1799, i64 0)
  %1801 = call i1 @nyx_string_equals(%nyx_string* %1798, %nyx_string* %1800)
  %1802 = xor i1 %1801, true
  br i1 %1802, label %then465, label %else466
then465:
  %1803 = load %nyx_string*, %nyx_string** %1728
  %1804 = getelementptr [11 x i8], [11 x i8]* @.str148, i32 0, i32 0
  %1805 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %1804, i64 10)
  %1806 = call %nyx_string* @nyx_string_concat(%nyx_string* %1803, %nyx_string* %1805)
  %1807 = load %nyx_string*, %nyx_string** %path.ptr
  %1808 = call %nyx_string* @nyx_string_concat(%nyx_string* %1806, %nyx_string* %1807)
  %1809 = getelementptr [4 x i8], [4 x i8]* @.str149, i32 0, i32 0
  %1810 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %1809, i64 3)
  %1811 = call %nyx_string* @nyx_string_concat(%nyx_string* %1808, %nyx_string* %1810)
  %1812 = alloca %nyx_string*
  store %nyx_string* %1811, %nyx_string** %1812
  %1813 = load %nyx_string*, %nyx_string** %1812
  %1814 = call i8* @nyx_string_to_cstr(%nyx_string* %1813)
  %1815 = call i1 @nyx_file_exists(i8* %1814)
  br i1 %1815, label %then468, label %else469
then468:
  %1816 = load %nyx_string*, %nyx_string** %1812
  ret %nyx_string* %1816
else469:
  br label %merge470
merge470:
  br label %merge467
else466:
  br label %merge467
merge467:
  %1817 = getelementptr [10 x i8], [10 x i8]* @.str150, i32 0, i32 0
  %1818 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %1817, i64 9)
  %1819 = load %nyx_string*, %nyx_string** %path.ptr
  %1820 = call %nyx_string* @nyx_string_concat(%nyx_string* %1818, %nyx_string* %1819)
  %1821 = getelementptr [4 x i8], [4 x i8]* @.str151, i32 0, i32 0
  %1822 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %1821, i64 3)
  %1823 = call %nyx_string* @nyx_string_concat(%nyx_string* %1820, %nyx_string* %1822)
  %1824 = alloca %nyx_string*
  store %nyx_string* %1823, %nyx_string** %1824
  %1825 = load %nyx_string*, %nyx_string** %1824
  %1826 = call i8* @nyx_string_to_cstr(%nyx_string* %1825)
  %1827 = call i1 @nyx_file_exists(i8* %1826)
  br i1 %1827, label %then471, label %else472
then471:
  %1828 = load %nyx_string*, %nyx_string** %1824
  ret %nyx_string* %1828
else472:
  br label %merge473
merge473:
  br label %merge464
else463:
  br label %merge464
merge464:
  br label %merge457
else456:
  br label %merge457
merge457:
  %1829 = load %nyx_string*, %nyx_string** %path.ptr
  %1830 = getelementptr [4 x i8], [4 x i8]* @.str152, i32 0, i32 0
  %1831 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %1830, i64 3)
  %1832 = call %nyx_string* @nyx_string_concat(%nyx_string* %1829, %nyx_string* %1831)
  %1833 = alloca %nyx_string*
  store %nyx_string* %1832, %nyx_string** %1833
  %1834 = load %nyx_string*, %nyx_string** %1833
  %1835 = call i8* @nyx_string_to_cstr(%nyx_string* %1834)
  %1836 = call i1 @nyx_file_exists(i8* %1835)
  br i1 %1836, label %then474, label %else475
then474:
  %1837 = load %nyx_string*, %nyx_string** %1833
  ret %nyx_string* %1837
else475:
  br label %merge476
merge476:
  %1838 = getelementptr [5 x i8], [5 x i8]* @.str153, i32 0, i32 0
  %1839 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %1838, i64 4)
  %1840 = load %nyx_string*, %nyx_string** %path.ptr
  %1841 = call %nyx_string* @nyx_string_concat(%nyx_string* %1839, %nyx_string* %1840)
  %1842 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %1843 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %1842, i64 3)
  %1844 = call %nyx_string* @nyx_string_concat(%nyx_string* %1841, %nyx_string* %1843)
  %1845 = alloca %nyx_string*
  store %nyx_string* %1844, %nyx_string** %1845
  %1846 = load %nyx_string*, %nyx_string** %1845
  %1847 = call i8* @nyx_string_to_cstr(%nyx_string* %1846)
  %1848 = call i1 @nyx_file_exists(i8* %1847)
  br i1 %1848, label %then477, label %else478
then477:
  %1849 = load %nyx_string*, %nyx_string** %1845
  ret %nyx_string* %1849
else478:
  br label %merge479
merge479:
  %1850 = getelementptr [9 x i8], [9 x i8]* @.str155, i32 0, i32 0
  %1851 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %1850, i64 8)
  %1852 = call i8* @nyx_string_to_cstr(%nyx_string* %1851)
  %1853 = call %nyx_string* @nyx_getenv(i8* %1852)
  %1854 = alloca %nyx_string*
  store %nyx_string* %1853, %nyx_string** %1854
  %1855 = load %nyx_string*, %nyx_string** %1854
  %1856 = getelementptr [1 x i8], [1 x i8]* @.str156, i32 0, i32 0
  %1857 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %1856, i64 0)
  %1858 = call i1 @nyx_string_equals(%nyx_string* %1855, %nyx_string* %1857)
  %1859 = xor i1 %1858, true
  br i1 %1859, label %then480, label %else481
then480:
  %1860 = load %nyx_string*, %nyx_string** %1854
  %1861 = getelementptr [6 x i8], [6 x i8]* @.str157, i32 0, i32 0
  %1862 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %1861, i64 5)
  %1863 = call %nyx_string* @nyx_string_concat(%nyx_string* %1860, %nyx_string* %1862)
  %1864 = load %nyx_string*, %nyx_string** %path.ptr
  %1865 = call %nyx_string* @nyx_string_concat(%nyx_string* %1863, %nyx_string* %1864)
  %1866 = getelementptr [4 x i8], [4 x i8]* @.str158, i32 0, i32 0
  %1867 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %1866, i64 3)
  %1868 = call %nyx_string* @nyx_string_concat(%nyx_string* %1865, %nyx_string* %1867)
  %1869 = alloca %nyx_string*
  store %nyx_string* %1868, %nyx_string** %1869
  %1870 = load %nyx_string*, %nyx_string** %1869
  %1871 = call i8* @nyx_string_to_cstr(%nyx_string* %1870)
  %1872 = call i1 @nyx_file_exists(i8* %1871)
  br i1 %1872, label %then483, label %else484
then483:
  %1873 = load %nyx_string*, %nyx_string** %1869
  ret %nyx_string* %1873
else484:
  br label %merge485
merge485:
  %1874 = load %nyx_string*, %nyx_string** %1854
  %1875 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %1876 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %1875, i64 1)
  %1877 = call %nyx_string* @nyx_string_concat(%nyx_string* %1874, %nyx_string* %1876)
  %1878 = load %nyx_string*, %nyx_string** %path.ptr
  %1879 = call %nyx_string* @nyx_string_concat(%nyx_string* %1877, %nyx_string* %1878)
  %1880 = getelementptr [4 x i8], [4 x i8]* @.str160, i32 0, i32 0
  %1881 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %1880, i64 3)
  %1882 = call %nyx_string* @nyx_string_concat(%nyx_string* %1879, %nyx_string* %1881)
  %1883 = alloca %nyx_string*
  store %nyx_string* %1882, %nyx_string** %1883
  %1884 = load %nyx_string*, %nyx_string** %1883
  %1885 = call i8* @nyx_string_to_cstr(%nyx_string* %1884)
  %1886 = call i1 @nyx_file_exists(i8* %1885)
  br i1 %1886, label %then486, label %else487
then486:
  %1887 = load %nyx_string*, %nyx_string** %1883
  ret %nyx_string* %1887
else487:
  br label %merge488
merge488:
  br label %merge482
else481:
  br label %merge482
merge482:
  %1888 = call %nyx_string* @dir_usuario_res()
  %1889 = alloca %nyx_string*
  store %nyx_string* %1888, %nyx_string** %1889
  %1890 = load %nyx_string*, %nyx_string** %1889
  %1891 = getelementptr [1 x i8], [1 x i8]* @.str161, i32 0, i32 0
  %1892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %1891, i64 0)
  %1893 = call i1 @nyx_string_equals(%nyx_string* %1890, %nyx_string* %1892)
  %1894 = xor i1 %1893, true
  br i1 %1894, label %then489, label %else490
then489:
  %1895 = load %nyx_string*, %nyx_string** %1889
  %1896 = getelementptr [11 x i8], [11 x i8]* @.str162, i32 0, i32 0
  %1897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %1896, i64 10)
  %1898 = call %nyx_string* @nyx_string_concat(%nyx_string* %1895, %nyx_string* %1897)
  %1899 = load %nyx_string*, %nyx_string** %path.ptr
  %1900 = call %nyx_string* @nyx_string_concat(%nyx_string* %1898, %nyx_string* %1899)
  %1901 = getelementptr [4 x i8], [4 x i8]* @.str163, i32 0, i32 0
  %1902 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %1901, i64 3)
  %1903 = call %nyx_string* @nyx_string_concat(%nyx_string* %1900, %nyx_string* %1902)
  %1904 = alloca %nyx_string*
  store %nyx_string* %1903, %nyx_string** %1904
  %1905 = load %nyx_string*, %nyx_string** %1904
  %1906 = call i8* @nyx_string_to_cstr(%nyx_string* %1905)
  %1907 = call i1 @nyx_file_exists(i8* %1906)
  br i1 %1907, label %then492, label %else493
then492:
  %1908 = load %nyx_string*, %nyx_string** %1904
  ret %nyx_string* %1908
else493:
  br label %merge494
merge494:
  %1909 = load %nyx_string*, %nyx_string** %1889
  %1910 = getelementptr [7 x i8], [7 x i8]* @.str164, i32 0, i32 0
  %1911 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %1910, i64 6)
  %1912 = call %nyx_string* @nyx_string_concat(%nyx_string* %1909, %nyx_string* %1911)
  %1913 = load %nyx_string*, %nyx_string** %path.ptr
  %1914 = call %nyx_string* @nyx_string_concat(%nyx_string* %1912, %nyx_string* %1913)
  %1915 = getelementptr [4 x i8], [4 x i8]* @.str165, i32 0, i32 0
  %1916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %1915, i64 3)
  %1917 = call %nyx_string* @nyx_string_concat(%nyx_string* %1914, %nyx_string* %1916)
  %1918 = alloca %nyx_string*
  store %nyx_string* %1917, %nyx_string** %1918
  %1919 = load %nyx_string*, %nyx_string** %1918
  %1920 = call i8* @nyx_string_to_cstr(%nyx_string* %1919)
  %1921 = call i1 @nyx_file_exists(i8* %1920)
  br i1 %1921, label %then495, label %else496
then495:
  %1922 = load %nyx_string*, %nyx_string** %1918
  ret %nyx_string* %1922
else496:
  br label %merge497
merge497:
  br label %merge491
else490:
  br label %merge491
merge491:
  %1923 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %1924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %1923, i64 0)
  ret %nyx_string* %1924
}

define internal { i64, i8* }* @prelude_module_list(
%nyx_string* %prelude.param) {
  %prelude.ptr = alloca %nyx_string*
  store %nyx_string* %prelude.param, %nyx_string** %prelude.ptr
  %1925 = getelementptr [20 x i8], [20 x i8]* @.str167, i32 0, i32 0
  %1926 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %1925, i64 19)
  %1927 = alloca %nyx_string*
  store %nyx_string* %1926, %nyx_string** %1927
  %1928 = load %nyx_string*, %nyx_string** %prelude.ptr
  %1929 = load %nyx_string*, %nyx_string** %1927
  %1930 = call i64 @nyx_string_index_of(%nyx_string* %1928, %nyx_string* %1929)
  %1931 = alloca i64
  store i64 %1930, i64* %1931
  %1932 = load i64, i64* %1931
  %1933 = icmp slt i64 %1932, 0
  br i1 %1933, label %then498, label %else499
then498:
  %1934 = call { i64, i8* }* @nyx_array_new_ptr()
  %1935 = getelementptr [3 x i8], [3 x i8]* @.str168, i32 0, i32 0
  %1936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %1935, i64 2)
  %1937 = ptrtoint %nyx_string* %1936 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1934, i64 %1937, i64 2)
  %1938 = getelementptr [5 x i8], [5 x i8]* @.str169, i32 0, i32 0
  %1939 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %1938, i64 4)
  %1940 = ptrtoint %nyx_string* %1939 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1934, i64 %1940, i64 2)
  %1941 = getelementptr [6 x i8], [6 x i8]* @.str170, i32 0, i32 0
  %1942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %1941, i64 5)
  %1943 = ptrtoint %nyx_string* %1942 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1934, i64 %1943, i64 2)
  %1944 = getelementptr [5 x i8], [5 x i8]* @.str171, i32 0, i32 0
  %1945 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %1944, i64 4)
  %1946 = ptrtoint %nyx_string* %1945 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1934, i64 %1946, i64 2)
  %1947 = getelementptr [4 x i8], [4 x i8]* @.str172, i32 0, i32 0
  %1948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %1947, i64 3)
  %1949 = ptrtoint %nyx_string* %1948 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1934, i64 %1949, i64 2)
  ret { i64, i8* }* %1934
else499:
  br label %merge500
merge500:
  %1950 = load %nyx_string*, %nyx_string** %prelude.ptr
  %1951 = load i64, i64* %1931
  %1952 = load %nyx_string*, %nyx_string** %1927
  %1953 = call i64 @nyx_string_byte_length(%nyx_string* %1952)
  %1954 = add i64 %1951, %1953
  %1955 = load %nyx_string*, %nyx_string** %prelude.ptr
  %1956 = call i64 @nyx_string_byte_length(%nyx_string* %1955)
  %1957 = call %nyx_string* @nyx_string_substring(%nyx_string* %1950, i64 %1954, i64 %1956)
  %1958 = alloca %nyx_string*
  store %nyx_string* %1957, %nyx_string** %1958
  %1959 = load %nyx_string*, %nyx_string** %1958
  %1960 = getelementptr [2 x i8], [2 x i8]* @.str173, i32 0, i32 0
  %1961 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %1960, i64 1)
  %1962 = call i64 @nyx_string_index_of(%nyx_string* %1959, %nyx_string* %1961)
  %1963 = alloca i64
  store i64 %1962, i64* %1963
  %1964 = load %nyx_string*, %nyx_string** %1958
  %1965 = alloca %nyx_string*
  store %nyx_string* %1964, %nyx_string** %1965
  %1966 = load i64, i64* %1963
  %1967 = icmp sge i64 %1966, 0
  br i1 %1967, label %then501, label %else502
then501:
  %1968 = load %nyx_string*, %nyx_string** %1958
  %1969 = load i64, i64* %1963
  %1970 = call %nyx_string* @nyx_string_substring(%nyx_string* %1968, i64 0, i64 %1969)
  store %nyx_string* %1970, %nyx_string** %1965
  br label %merge503
else502:
  br label %merge503
merge503:
  %1971 = call { i64, i8* }* @nyx_array_new_ptr()
  %1972 = alloca { i64, i8* }*
  store { i64, i8* }* %1971, { i64, i8* }** %1972
  %1973 = load %nyx_string*, %nyx_string** %1965
  %1974 = getelementptr [2 x i8], [2 x i8]* @.str174, i32 0, i32 0
  %1975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %1974, i64 1)
  %1976 = call { i64, i8* }* @nyx_string_split(%nyx_string* %1973, %nyx_string* %1975)
  %1977 = alloca { i64, i8* }*
  store { i64, i8* }* %1976, { i64, i8* }** %1977
  %1978 = alloca i64
  store i64 0, i64* %1978
  %1979 = getelementptr [1 x i8], [1 x i8]* @.str175, i32 0, i32 0
  %1980 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %1979, i64 0)
  %1981 = alloca %nyx_string*
  store %nyx_string* %1980, %nyx_string** %1981
  %1982 = call i8* @llvm.stacksave()
  br label %while_cond504
while_cond504:
  %1983 = load i64, i64* %1978
  %1984 = load { i64, i8* }*, { i64, i8* }** %1977
  %1985 = call i64 @nyx_array_length({ i64, i8* }* %1984)
  %1986 = icmp slt i64 %1983, %1985
  br i1 %1986, label %while_body505, label %while_end506
while_body505:
  call void @llvm.stackrestore(i8* %1982)
  %1987 = load { i64, i8* }*, { i64, i8* }** %1977
  %1988 = load i64, i64* %1978
  %1989 = call i64 @nyx_array_get_checked({ i64, i8* }* %1987, i64 %1988, i64 2)
  %1990 = inttoptr i64 %1989 to %nyx_string*
  %1991 = alloca %nyx_string*
  store %nyx_string* %1990, %nyx_string** %1991
  %1992 = load %nyx_string*, %nyx_string** %1991
  %1993 = call %nyx_string* @nyx_string_trim(%nyx_string* %1992)
  %1994 = alloca %nyx_string*
  store %nyx_string* %1993, %nyx_string** %1994
  %1995 = load %nyx_string*, %nyx_string** %1994
  %1996 = load %nyx_string*, %nyx_string** %1981
  %1997 = call i1 @nyx_string_equals(%nyx_string* %1995, %nyx_string* %1996)
  %1998 = xor i1 %1997, true
  br i1 %1998, label %then507, label %else508
then507:
  %1999 = load { i64, i8* }*, { i64, i8* }** %1972
  %2000 = load %nyx_string*, %nyx_string** %1994
  %2001 = ptrtoint %nyx_string* %2000 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %1999, i64 %2001, i64 2)
  br label %merge509
else508:
  br label %merge509
merge509:
  %2002 = load i64, i64* %1978
  %2003 = add i64 %2002, 1
  store i64 %2003, i64* %1978
  br label %while_cond504
while_end506:
  %2004 = load { i64, i8* }*, { i64, i8* }** %1972
  %2005 = call i64 @nyx_array_length({ i64, i8* }* %2004)
  %2006 = icmp eq i64 %2005, 0
  br i1 %2006, label %then510, label %else511
then510:
  %2007 = call { i64, i8* }* @nyx_array_new_ptr()
  %2008 = getelementptr [3 x i8], [3 x i8]* @.str176, i32 0, i32 0
  %2009 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %2008, i64 2)
  %2010 = ptrtoint %nyx_string* %2009 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2007, i64 %2010, i64 2)
  %2011 = getelementptr [5 x i8], [5 x i8]* @.str177, i32 0, i32 0
  %2012 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %2011, i64 4)
  %2013 = ptrtoint %nyx_string* %2012 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2007, i64 %2013, i64 2)
  %2014 = getelementptr [6 x i8], [6 x i8]* @.str178, i32 0, i32 0
  %2015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %2014, i64 5)
  %2016 = ptrtoint %nyx_string* %2015 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2007, i64 %2016, i64 2)
  %2017 = getelementptr [5 x i8], [5 x i8]* @.str179, i32 0, i32 0
  %2018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %2017, i64 4)
  %2019 = ptrtoint %nyx_string* %2018 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2007, i64 %2019, i64 2)
  %2020 = getelementptr [4 x i8], [4 x i8]* @.str180, i32 0, i32 0
  %2021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %2020, i64 3)
  %2022 = ptrtoint %nyx_string* %2021 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %2007, i64 %2022, i64 2)
  ret { i64, i8* }* %2007
else511:
  br label %merge512
merge512:
  %2023 = load { i64, i8* }*, { i64, i8* }** %1972
  ret { i64, i8* }* %2023
}

define internal i1 @es_modulo_del_compilador(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  %2024 = alloca i1
  store i1 false, i1* %2024
  %2025 = load %nyx_string*, %nyx_string** %raw.ptr
  %2026 = getelementptr [10 x i8], [10 x i8]* @.str181, i32 0, i32 0
  %2027 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %2026, i64 9)
  %2028 = call i1 @nyx_string_contains(%nyx_string* %2025, %nyx_string* %2027)
  %2029 = xor i1 %2028, true
  br i1 %2029, label %sc_and_rhs513, label %sc_and_end514
sc_and_rhs513:
  %2030 = load %nyx_string*, %nyx_string** %raw.ptr
  %2031 = getelementptr [16 x i8], [16 x i8]* @.str182, i32 0, i32 0
  %2032 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %2031, i64 15)
  %2033 = call i1 @nyx_string_contains(%nyx_string* %2030, %nyx_string* %2032)
  %2034 = xor i1 %2033, true
  store i1 %2034, i1* %2024
  br label %sc_and_end514
sc_and_end514:
  %2035 = load i1, i1* %2024
  br i1 %2035, label %then515, label %else516
then515:
  ret i1 0
else516:
  br label %merge517
merge517:
  %2036 = load %nyx_string*, %nyx_string** %raw.ptr
  %2037 = getelementptr [2 x i8], [2 x i8]* @.str183, i32 0, i32 0
  %2038 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %2037, i64 1)
  %2039 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2036, %nyx_string* %2038)
  %2040 = alloca { i64, i8* }*
  store { i64, i8* }* %2039, { i64, i8* }** %2040
  %2041 = alloca i64
  store i64 0, i64* %2041
  %2042 = getelementptr [19 x i8], [19 x i8]* @.str184, i32 0, i32 0
  %2043 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %2042, i64 18)
  %2044 = alloca %nyx_string*
  store %nyx_string* %2043, %nyx_string** %2044
  %2045 = getelementptr [8 x i8], [8 x i8]* @.str185, i32 0, i32 0
  %2046 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %2045, i64 7)
  %2047 = alloca %nyx_string*
  store %nyx_string* %2046, %nyx_string** %2047
  %2048 = getelementptr [11 x i8], [11 x i8]* @.str186, i32 0, i32 0
  %2049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %2048, i64 10)
  %2050 = alloca %nyx_string*
  store %nyx_string* %2049, %nyx_string** %2050
  %2051 = call i8* @llvm.stacksave()
  br label %while_cond518
while_cond518:
  %2052 = load i64, i64* %2041
  %2053 = load { i64, i8* }*, { i64, i8* }** %2040
  %2054 = call i64 @nyx_array_length({ i64, i8* }* %2053)
  %2055 = icmp slt i64 %2052, %2054
  br i1 %2055, label %while_body519, label %while_end520
while_body519:
  call void @llvm.stackrestore(i8* %2051)
  %2056 = load { i64, i8* }*, { i64, i8* }** %2040
  %2057 = load i64, i64* %2041
  %2058 = call i64 @nyx_array_get_checked({ i64, i8* }* %2056, i64 %2057, i64 2)
  %2059 = inttoptr i64 %2058 to %nyx_string*
  %2060 = alloca %nyx_string*
  store %nyx_string* %2059, %nyx_string** %2060
  %2061 = load %nyx_string*, %nyx_string** %2060
  %2062 = call %nyx_string* @nyx_string_trim(%nyx_string* %2061)
  %2063 = alloca %nyx_string*
  store %nyx_string* %2062, %nyx_string** %2063
  %2064 = load %nyx_string*, %nyx_string** %2063
  %2065 = load %nyx_string*, %nyx_string** %2044
  %2066 = call i1 @nyx_string_starts_with(%nyx_string* %2064, %nyx_string* %2065)
  br i1 %2066, label %then521, label %else522
then521:
  ret i1 1
else522:
  br label %merge523
merge523:
  %2067 = alloca i1
  store i1 false, i1* %2067
  %2068 = load %nyx_string*, %nyx_string** %2063
  %2069 = load %nyx_string*, %nyx_string** %2047
  %2070 = call i1 @nyx_string_starts_with(%nyx_string* %2068, %nyx_string* %2069)
  br i1 %2070, label %sc_and_rhs524, label %sc_and_end525
sc_and_rhs524:
  %2071 = load %nyx_string*, %nyx_string** %2063
  %2072 = load %nyx_string*, %nyx_string** %2050
  %2073 = call i1 @nyx_string_contains(%nyx_string* %2071, %nyx_string* %2072)
  store i1 %2073, i1* %2067
  br label %sc_and_end525
sc_and_end525:
  %2074 = load i1, i1* %2067
  br i1 %2074, label %then526, label %else527
then526:
  ret i1 1
else527:
  br label %merge528
merge528:
  %2075 = load i64, i64* %2041
  %2076 = add i64 %2075, 1
  store i64 %2076, i64* %2041
  br label %while_cond518
while_end520:
  ret i1 0
}

define internal %nyx_string* @marca_cierre(
%nyx_string* %padre.param) {
  %padre.ptr = alloca %nyx_string*
  store %nyx_string* %padre.param, %nyx_string** %padre.ptr
  %2077 = getelementptr [13 x i8], [13 x i8]* @.str187, i32 0, i32 0
  %2078 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %2077, i64 12)
  %2079 = call i8* @nyx_string_to_cstr(%nyx_string* %2078)
  %2080 = call %nyx_string* @nyx_getenv(i8* %2079)
  %2081 = alloca %nyx_string*
  store %nyx_string* %2080, %nyx_string** %2081
  %2082 = alloca i1
  store i1 true, i1* %2082
  %2083 = load %nyx_string*, %nyx_string** %padre.ptr
  %2084 = getelementptr [1 x i8], [1 x i8]* @.str188, i32 0, i32 0
  %2085 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %2084, i64 0)
  %2086 = call i1 @nyx_string_equals(%nyx_string* %2083, %nyx_string* %2085)
  br i1 %2086, label %sc_or_end530, label %sc_or_rhs529
sc_or_rhs529:
  %2087 = load %nyx_string*, %nyx_string** %padre.ptr
  %2088 = load %nyx_string*, %nyx_string** %2081
  %2089 = call i1 @nyx_string_equals(%nyx_string* %2087, %nyx_string* %2088)
  store i1 %2089, i1* %2082
  br label %sc_or_end530
sc_or_end530:
  %2090 = load i1, i1* %2082
  br i1 %2090, label %then531, label %else532
then531:
  %2091 = load %nyx_string*, %nyx_string** %2081
  %2092 = getelementptr [1 x i8], [1 x i8]* @.str189, i32 0, i32 0
  %2093 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %2092, i64 0)
  %2094 = call i1 @nyx_string_equals(%nyx_string* %2091, %nyx_string* %2093)
  %2095 = xor i1 %2094, true
  br i1 %2095, label %then534, label %else535
then534:
  %2096 = getelementptr [11 x i8], [11 x i8]* @.str190, i32 0, i32 0
  %2097 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %2096, i64 10)
  %2098 = load %nyx_string*, %nyx_string** %2081
  %2099 = call %nyx_string* @nyx_string_concat(%nyx_string* %2097, %nyx_string* %2098)
  %2100 = getelementptr [2 x i8], [2 x i8]* @.str191, i32 0, i32 0
  %2101 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %2100, i64 1)
  %2102 = call %nyx_string* @nyx_string_concat(%nyx_string* %2099, %nyx_string* %2101)
  ret %nyx_string* %2102
else535:
  br label %merge536
merge536:
  %2103 = getelementptr [11 x i8], [11 x i8]* @.str192, i32 0, i32 0
  %2104 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %2103, i64 10)
  ret %nyx_string* %2104
else532:
  br label %merge533
merge533:
  %2105 = getelementptr [11 x i8], [11 x i8]* @.str193, i32 0, i32 0
  %2106 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %2105, i64 10)
  %2107 = load %nyx_string*, %nyx_string** %padre.ptr
  %2108 = call %nyx_string* @nyx_string_concat(%nyx_string* %2106, %nyx_string* %2107)
  %2109 = getelementptr [2 x i8], [2 x i8]* @.str194, i32 0, i32 0
  %2110 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %2109, i64 1)
  %2111 = call %nyx_string* @nyx_string_concat(%nyx_string* %2108, %nyx_string* %2110)
  ret %nyx_string* %2111
}

define internal %nyx_string* @path_de_marca(
%nyx_string* %t.param) {
  %t.ptr = alloca %nyx_string*
  store %nyx_string* %t.param, %nyx_string** %t.ptr
  %2112 = load %nyx_string*, %nyx_string** %t.ptr
  %2113 = load %nyx_string*, %nyx_string** %t.ptr
  %2114 = call i64 @nyx_string_byte_length(%nyx_string* %2113)
  %2115 = call %nyx_string* @nyx_string_substring(%nyx_string* %2112, i64 9, i64 %2114)
  %2116 = alloca %nyx_string*
  store %nyx_string* %2115, %nyx_string** %2116
  %2117 = load %nyx_string*, %nyx_string** %2116
  %2118 = getelementptr [8 x i8], [8 x i8]* @.str195, i32 0, i32 0
  %2119 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %2118, i64 7)
  %2120 = call i1 @nyx_string_starts_with(%nyx_string* %2117, %nyx_string* %2119)
  br i1 %2120, label %then537, label %else538
then537:
  %2121 = load %nyx_string*, %nyx_string** %2116
  %2122 = load %nyx_string*, %nyx_string** %2116
  %2123 = call i64 @nyx_string_byte_length(%nyx_string* %2122)
  %2124 = call %nyx_string* @nyx_string_substring(%nyx_string* %2121, i64 7, i64 %2123)
  %2125 = call %nyx_string* @nyx_string_trim(%nyx_string* %2124)
  ret %nyx_string* %2125
else538:
  br label %merge539
merge539:
  %2126 = load %nyx_string*, %nyx_string** %2116
  %2127 = call %nyx_string* @nyx_string_trim(%nyx_string* %2126)
  ret %nyx_string* %2127
}

define internal %nyx_string* @import_ya_inlineado(
) {
  %2128 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %2129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %2128, i64 1)
  ret %nyx_string* %2129
}

define internal %nyx_string* @ruta_import_del_principal(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  %2130 = getelementptr [16 x i8], [16 x i8]* @.str197, i32 0, i32 0
  %2131 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %2130, i64 15)
  %2132 = call i8* @nyx_string_to_cstr(%nyx_string* %2131)
  %2133 = call %nyx_string* @nyx_getenv(i8* %2132)
  %2134 = alloca %nyx_string*
  store %nyx_string* %2133, %nyx_string** %2134
  %2135 = load %nyx_string*, %nyx_string** %2134
  %2136 = getelementptr [1 x i8], [1 x i8]* @.str198, i32 0, i32 0
  %2137 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %2136, i64 0)
  %2138 = call i1 @nyx_string_equals(%nyx_string* %2135, %nyx_string* %2137)
  br i1 %2138, label %then540, label %else541
then540:
  %2139 = getelementptr [8 x i8], [8 x i8]* @.str199, i32 0, i32 0
  %2140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %2139, i64 7)
  %2141 = call i8* @nyx_string_to_cstr(%nyx_string* %2140)
  %2142 = call %nyx_string* @nyx_getenv(i8* %2141)
  store %nyx_string* %2142, %nyx_string** %2134
  br label %merge542
else541:
  br label %merge542
merge542:
  %2143 = load %nyx_string*, %nyx_string** %2134
  %2144 = getelementptr [4 x i8], [4 x i8]* @.str200, i32 0, i32 0
  %2145 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %2144, i64 3)
  %2146 = call i1 @nyx_string_ends_with(%nyx_string* %2143, %nyx_string* %2145)
  %2147 = xor i1 %2146, true
  br i1 %2147, label %then543, label %else544
then543:
  %2148 = getelementptr [1 x i8], [1 x i8]* @.str201, i32 0, i32 0
  %2149 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %2148, i64 0)
  ret %nyx_string* %2149
else544:
  br label %merge545
merge545:
  %2150 = load %nyx_string*, %nyx_string** %2134
  %2151 = load %nyx_string*, %nyx_string** %2134
  %2152 = call i64 @nyx_string_byte_length(%nyx_string* %2151)
  %2153 = sub i64 %2152, 3
  %2154 = call %nyx_string* @nyx_string_substring(%nyx_string* %2150, i64 0, i64 %2153)
  store %nyx_string* %2154, %nyx_string** %2134
  %2155 = getelementptr [16 x i8], [16 x i8]* @.str202, i32 0, i32 0
  %2156 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %2155, i64 15)
  %2157 = call i8* @nyx_string_to_cstr(%nyx_string* %2156)
  %2158 = call %nyx_string* @nyx_getenv(i8* %2157)
  %2159 = alloca %nyx_string*
  store %nyx_string* %2158, %nyx_string** %2159
  %2160 = alloca i1
  store i1 false, i1* %2160
  %2161 = load %nyx_string*, %nyx_string** %2159
  %2162 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %2163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %2162, i64 0)
  %2164 = call i1 @nyx_string_equals(%nyx_string* %2161, %nyx_string* %2163)
  %2165 = xor i1 %2164, true
  br i1 %2165, label %sc_and_rhs546, label %sc_and_end547
sc_and_rhs546:
  %2166 = load %nyx_string*, %nyx_string** %2134
  %2167 = load %nyx_string*, %nyx_string** %2159
  %2168 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %2169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %2168, i64 1)
  %2170 = call %nyx_string* @nyx_string_concat(%nyx_string* %2167, %nyx_string* %2169)
  %2171 = call i1 @nyx_string_starts_with(%nyx_string* %2166, %nyx_string* %2170)
  store i1 %2171, i1* %2160
  br label %sc_and_end547
sc_and_end547:
  %2172 = load i1, i1* %2160
  br i1 %2172, label %then548, label %else549
then548:
  %2173 = load %nyx_string*, %nyx_string** %2134
  %2174 = load %nyx_string*, %nyx_string** %2159
  %2175 = call i64 @nyx_string_byte_length(%nyx_string* %2174)
  %2176 = add i64 %2175, 1
  %2177 = load %nyx_string*, %nyx_string** %2134
  %2178 = call i64 @nyx_string_byte_length(%nyx_string* %2177)
  %2179 = call %nyx_string* @nyx_string_substring(%nyx_string* %2173, i64 %2176, i64 %2178)
  store %nyx_string* %2179, %nyx_string** %2134
  br label %merge550
else549:
  br label %merge550
merge550:
  %2180 = load %nyx_string*, %nyx_string** %2134
  %2181 = getelementptr [3 x i8], [3 x i8]* @.str205, i32 0, i32 0
  %2182 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %2181, i64 2)
  %2183 = call i1 @nyx_string_starts_with(%nyx_string* %2180, %nyx_string* %2182)
  br i1 %2183, label %then551, label %else552
then551:
  %2184 = load %nyx_string*, %nyx_string** %2134
  %2185 = load %nyx_string*, %nyx_string** %2134
  %2186 = call i64 @nyx_string_byte_length(%nyx_string* %2185)
  %2187 = call %nyx_string* @nyx_string_substring(%nyx_string* %2184, i64 2, i64 %2186)
  store %nyx_string* %2187, %nyx_string** %2134
  br label %merge553
else552:
  br label %merge553
merge553:
  %2188 = alloca i1
  store i1 true, i1* %2188
  %2189 = load %nyx_string*, %nyx_string** %2134
  %2190 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %2191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %2190, i64 0)
  %2192 = call i1 @nyx_string_equals(%nyx_string* %2189, %nyx_string* %2191)
  br i1 %2192, label %sc_or_end555, label %sc_or_rhs554
sc_or_rhs554:
  %2193 = load %nyx_string*, %nyx_string** %2134
  %2194 = getelementptr [2 x i8], [2 x i8]* @.str207, i32 0, i32 0
  %2195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %2194, i64 1)
  %2196 = call i1 @nyx_string_starts_with(%nyx_string* %2193, %nyx_string* %2195)
  store i1 %2196, i1* %2188
  br label %sc_or_end555
sc_or_end555:
  %2197 = load i1, i1* %2188
  br i1 %2197, label %then556, label %else557
then556:
  %2198 = getelementptr [1 x i8], [1 x i8]* @.str208, i32 0, i32 0
  %2199 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %2198, i64 0)
  ret %nyx_string* %2199
else557:
  br label %merge558
merge558:
  %2200 = load %nyx_string*, %nyx_string** %2134
  %2201 = call %nyx_string* @resolve_module_path(%nyx_string* %2200)
  %2202 = alloca %nyx_string*
  store %nyx_string* %2201, %nyx_string** %2202
  %2203 = load %nyx_string*, %nyx_string** %2202
  %2204 = getelementptr [1 x i8], [1 x i8]* @.str209, i32 0, i32 0
  %2205 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %2204, i64 0)
  %2206 = call i1 @nyx_string_equals(%nyx_string* %2203, %nyx_string* %2205)
  br i1 %2206, label %then559, label %else560
then559:
  %2207 = getelementptr [1 x i8], [1 x i8]* @.str210, i32 0, i32 0
  %2208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %2207, i64 0)
  ret %nyx_string* %2208
else560:
  br label %merge561
merge561:
  %2209 = load %nyx_string*, %nyx_string** %2202
  %2210 = call i8* @nyx_string_to_cstr(%nyx_string* %2209)
  %2211 = call %nyx_string* @nyx_read_file(i8* %2210)
  %2212 = load %nyx_string*, %nyx_string** %raw.ptr
  %2213 = call i1 @nyx_string_equals(%nyx_string* %2211, %nyx_string* %2212)
  %2214 = xor i1 %2213, true
  br i1 %2214, label %then562, label %else563
then562:
  %2215 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %2216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %2215, i64 0)
  ret %nyx_string* %2216
else563:
  br label %merge564
merge564:
  %2217 = load %nyx_string*, %nyx_string** %2134
  ret %nyx_string* %2217
}

define %nyx_string* @resolve_source(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  %2218 = alloca i1
  store i1 false, i1* %2218
  %2219 = load %nyx_string*, %nyx_string** %raw.ptr
  %2220 = call i1 @es_modulo_del_compilador(%nyx_string* %2219)
  br i1 %2220, label %sc_and_rhs565, label %sc_and_end566
sc_and_rhs565:
  %2221 = getelementptr [20 x i8], [20 x i8]* @.str212, i32 0, i32 0
  %2222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %2221, i64 19)
  %2223 = call i8* @nyx_string_to_cstr(%nyx_string* %2222)
  %2224 = call %nyx_string* @nyx_getenv(i8* %2223)
  %2225 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %2226 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %2225, i64 1)
  %2227 = call i1 @nyx_string_equals(%nyx_string* %2224, %nyx_string* %2226)
  %2228 = xor i1 %2227, true
  store i1 %2228, i1* %2218
  br label %sc_and_end566
sc_and_end566:
  %2229 = load i1, i1* %2218
  %2230 = alloca i1
  store i1 %2229, i1* %2230
  %2231 = getelementptr [13 x i8], [13 x i8]* @.str214, i32 0, i32 0
  %2232 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %2231, i64 12)
  %2233 = call i8* @nyx_string_to_cstr(%nyx_string* %2232)
  %2234 = call %nyx_string* @nyx_getenv(i8* %2233)
  %2235 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %2236 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %2235, i64 1)
  %2237 = call i1 @nyx_string_equals(%nyx_string* %2234, %nyx_string* %2236)
  br i1 %2237, label %then567, label %else568
then567:
  %2238 = load %nyx_string*, %nyx_string** %raw.ptr
  %2239 = call %nyx_string* @razon_no_separable(%nyx_string* %2238)
  %2240 = alloca %nyx_string*
  store %nyx_string* %2239, %nyx_string** %2240
  %2241 = load %nyx_string*, %nyx_string** %2240
  %2242 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %2243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %2242, i64 0)
  %2244 = call i1 @nyx_string_equals(%nyx_string* %2241, %nyx_string* %2243)
  %2245 = xor i1 %2244, true
  br i1 %2245, label %then570, label %else571
then570:
  %2246 = getelementptr [43 x i8], [43 x i8]* @.str217, i32 0, i32 0
  %2247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %2246, i64 42)
  %2248 = load %nyx_string*, %nyx_string** %2240
  %2249 = call %nyx_string* @nyx_string_concat(%nyx_string* %2247, %nyx_string* %2248)
  %2250 = getelementptr [52 x i8], [52 x i8]* @.str218, i32 0, i32 0
  %2251 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %2250, i64 51)
  %2252 = call %nyx_string* @nyx_string_concat(%nyx_string* %2249, %nyx_string* %2251)
  %2253 = getelementptr [42 x i8], [42 x i8]* @.str219, i32 0, i32 0
  %2254 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %2253, i64 41)
  %2255 = load %nyx_string*, %nyx_string** %2240
  %2256 = call %nyx_string* @nyx_string_concat(%nyx_string* %2254, %nyx_string* %2255)
  %2257 = getelementptr [65 x i8], [65 x i8]* @.str220, i32 0, i32 0
  %2258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %2257, i64 64)
  %2259 = call %nyx_string* @nyx_string_concat(%nyx_string* %2256, %nyx_string* %2258)
  %2260 = call %nyx_string* @nyx_msg(%nyx_string* %2252, %nyx_string* %2259)
  %2261 = call i8* @nyx_string_to_cstr(%nyx_string* %2260)
  call void @nyx_print_string(i8* %2261)
  call void @nyx_exit(i64 3)
  br label %merge572
else571:
  br label %merge572
merge572:
  br label %merge569
else568:
  br label %merge569
merge569:
  %2262 = call i8* @nyx_map_new(i32 0)
  %2263 = alloca i8*
  store i8* %2262, i8** %2263
  %2264 = call i8* @nyx_map_new(i32 0)
  %2265 = alloca i8*
  store i8* %2264, i8** %2265
  %2266 = getelementptr [1 x i8], [1 x i8]* @.str221, i32 0, i32 0
  %2267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %2266, i64 0)
  %2268 = alloca %nyx_string*
  store %nyx_string* %2267, %nyx_string** %2268
  %2269 = load i1, i1* %2230
  %2270 = xor i1 %2269, true
  br i1 %2270, label %then573, label %else574
then573:
  %2271 = getelementptr [12 x i8], [12 x i8]* @.str222, i32 0, i32 0
  %2272 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %2271, i64 11)
  %2273 = call %nyx_string* @resolve_module_path(%nyx_string* %2272)
  %2274 = alloca %nyx_string*
  store %nyx_string* %2273, %nyx_string** %2274
  %2275 = load %nyx_string*, %nyx_string** %2274
  %2276 = getelementptr [1 x i8], [1 x i8]* @.str223, i32 0, i32 0
  %2277 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %2276, i64 0)
  %2278 = call i1 @nyx_string_equals(%nyx_string* %2275, %nyx_string* %2277)
  %2279 = xor i1 %2278, true
  br i1 %2279, label %then576, label %else577
then576:
  %2280 = load %nyx_string*, %nyx_string** %2274
  %2281 = call i8* @nyx_string_to_cstr(%nyx_string* %2280)
  %2282 = call %nyx_string* @nyx_read_file(i8* %2281)
  %2283 = alloca %nyx_string*
  store %nyx_string* %2282, %nyx_string** %2283
  %2284 = load %nyx_string*, %nyx_string** %2283
  %2285 = getelementptr [2 x i8], [2 x i8]* @.str224, i32 0, i32 0
  %2286 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %2285, i64 1)
  %2287 = call %nyx_string* @nyx_string_concat(%nyx_string* %2284, %nyx_string* %2286)
  store %nyx_string* %2287, %nyx_string** %2268
  %2288 = load %nyx_string*, %nyx_string** %2283
  %2289 = call { i64, i8* }* @prelude_module_list(%nyx_string* %2288)
  %2290 = alloca { i64, i8* }*
  store { i64, i8* }* %2289, { i64, i8* }** %2290
  %2291 = alloca i64
  store i64 0, i64* %2291
  %2292 = call i8* @llvm.stacksave()
  br label %while_cond579
while_cond579:
  %2293 = load i64, i64* %2291
  %2294 = load { i64, i8* }*, { i64, i8* }** %2290
  %2295 = call i64 @nyx_array_length({ i64, i8* }* %2294)
  %2296 = icmp slt i64 %2293, %2295
  br i1 %2296, label %while_body580, label %while_end581
while_body580:
  call void @llvm.stackrestore(i8* %2292)
  %2297 = load { i64, i8* }*, { i64, i8* }** %2290
  %2298 = load i64, i64* %2291
  %2299 = call i64 @nyx_array_get_checked({ i64, i8* }* %2297, i64 %2298, i64 2)
  %2300 = inttoptr i64 %2299 to %nyx_string*
  %2301 = alloca %nyx_string*
  store %nyx_string* %2300, %nyx_string** %2301
  %2302 = load i8*, i8** %2263
  %2303 = getelementptr [5 x i8], [5 x i8]* @.str225, i32 0, i32 0
  %2304 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %2303, i64 4)
  %2305 = load %nyx_string*, %nyx_string** %2301
  %2306 = call %nyx_string* @nyx_string_concat(%nyx_string* %2304, %nyx_string* %2305)
  %2307 = call i8* @nyx_string_to_cstr(%nyx_string* %2306)
  call void @nyx_map_insert_int(i8* %2302, i8* %2307, i64 1)
  %2308 = load i64, i64* %2291
  %2309 = add i64 %2308, 1
  store i64 %2309, i64* %2291
  br label %while_cond579
while_end581:
  %2310 = load i8*, i8** %2263
  %2311 = getelementptr [12 x i8], [12 x i8]* @.str226, i32 0, i32 0
  %2312 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %2311, i64 11)
  %2313 = call i8* @nyx_string_to_cstr(%nyx_string* %2312)
  call void @nyx_map_insert_int(i8* %2310, i8* %2313, i64 1)
  br label %merge578
else577:
  br label %merge578
merge578:
  br label %merge575
else574:
  br label %merge575
merge575:
  %2314 = getelementptr [13 x i8], [13 x i8]* @.str227, i32 0, i32 0
  %2315 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %2314, i64 12)
  %2316 = call i8* @nyx_string_to_cstr(%nyx_string* %2315)
  %2317 = call %nyx_string* @nyx_getenv(i8* %2316)
  %2318 = alloca %nyx_string*
  store %nyx_string* %2317, %nyx_string** %2318
  %2319 = load %nyx_string*, %nyx_string** %2318
  %2320 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %2321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %2320, i64 0)
  %2322 = call i1 @nyx_string_equals(%nyx_string* %2319, %nyx_string* %2321)
  %2323 = xor i1 %2322, true
  br i1 %2323, label %then582, label %else583
then582:
  %2324 = load i8*, i8** %2263
  %2325 = load %nyx_string*, %nyx_string** %2318
  %2326 = call i8* @nyx_string_to_cstr(%nyx_string* %2325)
  call void @nyx_map_insert_int(i8* %2324, i8* %2326, i64 1)
  br label %merge584
else583:
  br label %merge584
merge584:
  %2327 = load %nyx_string*, %nyx_string** %raw.ptr
  %2328 = call %nyx_string* @ruta_import_del_principal(%nyx_string* %2327)
  %2329 = alloca %nyx_string*
  store %nyx_string* %2328, %nyx_string** %2329
  %2330 = alloca i1
  store i1 false, i1* %2330
  %2331 = load %nyx_string*, %nyx_string** %2329
  %2332 = getelementptr [1 x i8], [1 x i8]* @.str229, i32 0, i32 0
  %2333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %2332, i64 0)
  %2334 = call i1 @nyx_string_equals(%nyx_string* %2331, %nyx_string* %2333)
  %2335 = xor i1 %2334, true
  br i1 %2335, label %sc_and_rhs585, label %sc_and_end586
sc_and_rhs585:
  %2336 = load i8*, i8** %2263
  %2337 = load %nyx_string*, %nyx_string** %2329
  %2338 = call i8* @nyx_string_to_cstr(%nyx_string* %2337)
  %2339 = call i1 @nyx_map_contains_str(i8* %2336, i8* %2338)
  %2340 = xor i1 %2339, true
  store i1 %2340, i1* %2330
  br label %sc_and_end586
sc_and_end586:
  %2341 = load i1, i1* %2330
  br i1 %2341, label %then587, label %else588
then587:
  %2342 = load i8*, i8** %2263
  %2343 = load %nyx_string*, %nyx_string** %2329
  %2344 = call i8* @nyx_string_to_cstr(%nyx_string* %2343)
  call void @nyx_map_insert_int(i8* %2342, i8* %2344, i64 1)
  br label %merge589
else588:
  br label %merge589
merge589:
  %2345 = call i8* @nyx_sb_new(i64 1024)
  %2346 = alloca i8*
  store i8* %2345, i8** %2346
  %2347 = load %nyx_string*, %nyx_string** %raw.ptr
  %2348 = getelementptr [2 x i8], [2 x i8]* @.str230, i32 0, i32 0
  %2349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %2348, i64 1)
  %2350 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2347, %nyx_string* %2349)
  %2351 = alloca { i64, i8* }*
  store { i64, i8* }* %2350, { i64, i8* }** %2351
  %2352 = call i8* @nyx_sb_new(i64 1024)
  %2353 = alloca i8*
  store i8* %2352, i8** %2353
  %2354 = alloca i64
  store i64 0, i64* %2354
  %2355 = call i8* @llvm.stacksave()
  br label %while_cond590
while_cond590:
  %2356 = load i64, i64* %2354
  %2357 = load { i64, i8* }*, { i64, i8* }** %2351
  %2358 = call i64 @nyx_array_length({ i64, i8* }* %2357)
  %2359 = icmp slt i64 %2356, %2358
  br i1 %2359, label %while_body591, label %while_end592
while_body591:
  call void @llvm.stackrestore(i8* %2355)
  %2360 = load { i64, i8* }*, { i64, i8* }** %2351
  %2361 = load i64, i64* %2354
  %2362 = call i64 @nyx_array_get_checked({ i64, i8* }* %2360, i64 %2361, i64 2)
  %2363 = inttoptr i64 %2362 to %nyx_string*
  %2364 = alloca %nyx_string*
  store %nyx_string* %2363, %nyx_string** %2364
  %2365 = load %nyx_string*, %nyx_string** %2364
  %2366 = call i1 @is_module_import(%nyx_string* %2365)
  br i1 %2366, label %then593, label %else594
then593:
  %2367 = load %nyx_string*, %nyx_string** %2364
  %2368 = call %nyx_string* @find_import_path(%nyx_string* %2367)
  %2369 = alloca %nyx_string*
  store %nyx_string* %2368, %nyx_string** %2369
  %2370 = load %nyx_string*, %nyx_string** %2369
  %2371 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %2372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %2371, i64 0)
  %2373 = call i1 @nyx_string_equals(%nyx_string* %2370, %nyx_string* %2372)
  %2374 = xor i1 %2373, true
  br i1 %2374, label %then596, label %else597
then596:
  %2375 = load %nyx_string*, %nyx_string** %2364
  %2376 = call %nyx_string* @extract_module_alias(%nyx_string* %2375)
  %2377 = alloca %nyx_string*
  store %nyx_string* %2376, %nyx_string** %2377
  %2378 = load i8*, i8** %2263
  %2379 = load %nyx_string*, %nyx_string** %2369
  %2380 = call i8* @nyx_string_to_cstr(%nyx_string* %2379)
  %2381 = call i1 @nyx_map_contains_str(i8* %2378, i8* %2380)
  %2382 = alloca i1
  store i1 %2381, i1* %2382
  %2383 = load i1, i1* %2382
  %2384 = xor i1 %2383, true
  br i1 %2384, label %then599, label %else600
then599:
  %2385 = load i8*, i8** %2263
  %2386 = load %nyx_string*, %nyx_string** %2369
  %2387 = call i8* @nyx_string_to_cstr(%nyx_string* %2386)
  call void @nyx_map_insert_int(i8* %2385, i8* %2387, i64 1)
  %2388 = load %nyx_string*, %nyx_string** %2364
  %2389 = load %nyx_string*, %nyx_string** %2369
  %2390 = call i64 @aviso_no_separable(%nyx_string* %2388, %nyx_string* %2389)
  %2391 = load %nyx_string*, %nyx_string** %2364
  %2392 = load %nyx_string*, %nyx_string** %2369
  %2393 = load i8*, i8** %2263
  %2394 = call i64 @lib_decl_registrar(%nyx_string* %2391, %nyx_string* %2392, i8* %2393)
  br label %merge601
else600:
  br label %merge601
merge601:
  %2395 = load %nyx_string*, %nyx_string** %2369
  %2396 = call %nyx_string* @resolve_module_path(%nyx_string* %2395)
  %2397 = alloca %nyx_string*
  store %nyx_string* %2396, %nyx_string** %2397
  %2398 = load %nyx_string*, %nyx_string** %2397
  %2399 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %2400 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %2399, i64 0)
  %2401 = call i1 @nyx_string_equals(%nyx_string* %2398, %nyx_string* %2400)
  %2402 = xor i1 %2401, true
  br i1 %2402, label %then602, label %else603
then602:
  %2403 = load %nyx_string*, %nyx_string** %2397
  %2404 = call i8* @nyx_string_to_cstr(%nyx_string* %2403)
  %2405 = call %nyx_string* @nyx_read_file(i8* %2404)
  %2406 = alloca %nyx_string*
  store %nyx_string* %2405, %nyx_string** %2406
  %2407 = load %nyx_string*, %nyx_string** %2397
  %2408 = call %nyx_string* @detect_package_name(%nyx_string* %2407)
  %2409 = alloca %nyx_string*
  store %nyx_string* %2408, %nyx_string** %2409
  %2410 = load %nyx_string*, %nyx_string** %2409
  %2411 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %2412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %2411, i64 0)
  %2413 = call i1 @nyx_string_equals(%nyx_string* %2410, %nyx_string* %2412)
  %2414 = xor i1 %2413, true
  br i1 %2414, label %then605, label %else606
then605:
  %2415 = load %nyx_string*, %nyx_string** %2406
  %2416 = load %nyx_string*, %nyx_string** %2409
  %2417 = call %nyx_string* @rewrite_package_imports(%nyx_string* %2415, %nyx_string* %2416)
  store %nyx_string* %2417, %nyx_string** %2406
  br label %merge607
else606:
  br label %merge607
merge607:
  %2418 = load %nyx_string*, %nyx_string** %2369
  %2419 = getelementptr [10 x i8], [10 x i8]* @.str234, i32 0, i32 0
  %2420 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %2419, i64 9)
  %2421 = call i1 @nyx_string_contains(%nyx_string* %2418, %nyx_string* %2420)
  br i1 %2421, label %then608, label %else609
then608:
  %2422 = load %nyx_string*, %nyx_string** %2406
  %2423 = load i8*, i8** %2265
  %2424 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %2422, i8* %2423)
  store %nyx_string* %2424, %nyx_string** %2406
  br label %merge610
else609:
  br label %merge610
merge610:
  %2425 = load %nyx_string*, %nyx_string** %2406
  %2426 = call { i64, i8* }* @extract_exports(%nyx_string* %2425)
  %2427 = alloca { i64, i8* }*
  store { i64, i8* }* %2426, { i64, i8* }** %2427
  %2428 = load i8*, i8** %2346
  %2429 = getelementptr [8 x i8], [8 x i8]* @.str235, i32 0, i32 0
  %2430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %2429, i64 7)
  %2431 = load %nyx_string*, %nyx_string** %2377
  %2432 = call %nyx_string* @nyx_string_concat(%nyx_string* %2430, %nyx_string* %2431)
  %2433 = getelementptr [5 x i8], [5 x i8]* @.str236, i32 0, i32 0
  %2434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %2433, i64 4)
  %2435 = call %nyx_string* @nyx_string_concat(%nyx_string* %2432, %nyx_string* %2434)
  %2436 = load %nyx_string*, %nyx_string** %2369
  %2437 = call %nyx_string* @nyx_string_concat(%nyx_string* %2435, %nyx_string* %2436)
  %2438 = getelementptr [4 x i8], [4 x i8]* @.str237, i32 0, i32 0
  %2439 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %2438, i64 3)
  %2440 = call %nyx_string* @nyx_string_concat(%nyx_string* %2437, %nyx_string* %2439)
  %2441 = load { i64, i8* }*, { i64, i8* }** %2427
  %2442 = getelementptr [3 x i8], [3 x i8]* @.str238, i32 0, i32 0
  %2443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %2442, i64 2)
  %2444 = call %nyx_string* @nyx_string_join({ i64, i8* }* %2441, %nyx_string* %2443)
  %2445 = call %nyx_string* @nyx_string_concat(%nyx_string* %2440, %nyx_string* %2444)
  %2446 = getelementptr [3 x i8], [3 x i8]* @.str239, i32 0, i32 0
  %2447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %2446, i64 2)
  %2448 = call %nyx_string* @nyx_string_concat(%nyx_string* %2445, %nyx_string* %2447)
  call void @nyx_sb_append(i8* %2428, %nyx_string* %2448)
  %2449 = load i1, i1* %2382
  %2450 = xor i1 %2449, true
  br i1 %2450, label %then611, label %else612
then611:
  %2451 = load i8*, i8** %2353
  %2452 = getelementptr [11 x i8], [11 x i8]* @.str240, i32 0, i32 0
  %2453 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %2452, i64 10)
  %2454 = load %nyx_string*, %nyx_string** %2369
  %2455 = call %nyx_string* @nyx_string_concat(%nyx_string* %2453, %nyx_string* %2454)
  %2456 = getelementptr [2 x i8], [2 x i8]* @.str241, i32 0, i32 0
  %2457 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %2456, i64 1)
  %2458 = call %nyx_string* @nyx_string_concat(%nyx_string* %2455, %nyx_string* %2457)
  %2459 = getelementptr [11 x i8], [11 x i8]* @.str242, i32 0, i32 0
  %2460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %2459, i64 10)
  %2461 = call %nyx_string* @nyx_string_concat(%nyx_string* %2458, %nyx_string* %2460)
  %2462 = load %nyx_string*, %nyx_string** %2406
  %2463 = call %nyx_string* @nyx_string_concat(%nyx_string* %2461, %nyx_string* %2462)
  %2464 = getelementptr [2 x i8], [2 x i8]* @.str243, i32 0, i32 0
  %2465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %2464, i64 1)
  %2466 = call %nyx_string* @nyx_string_concat(%nyx_string* %2463, %nyx_string* %2465)
  %2467 = getelementptr [1 x i8], [1 x i8]* @.str244, i32 0, i32 0
  %2468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %2467, i64 0)
  %2469 = call %nyx_string* @marca_cierre(%nyx_string* %2468)
  %2470 = call %nyx_string* @nyx_string_concat(%nyx_string* %2466, %nyx_string* %2469)
  call void @nyx_sb_append(i8* %2451, %nyx_string* %2470)
  br label %merge613
else612:
  br label %merge613
merge613:
  br label %merge604
else603:
  %2471 = load %nyx_string*, %nyx_string** %2369
  %2472 = call i64 @import_not_found(%nyx_string* %2471)
  br label %merge604
merge604:
  %2473 = load i8*, i8** %2353
  %2474 = load %nyx_string*, %nyx_string** %2364
  %2475 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %2476 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %2475, i64 1)
  %2477 = call %nyx_string* @nyx_string_concat(%nyx_string* %2474, %nyx_string* %2476)
  %2478 = getelementptr [9 x i8], [9 x i8]* @.str246, i32 0, i32 0
  %2479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %2478, i64 8)
  %2480 = call %nyx_string* @nyx_string_concat(%nyx_string* %2477, %nyx_string* %2479)
  %2481 = load i64, i64* %2354
  %2482 = add i64 %2481, 2
  %2483 = call %nyx_string* @nyx_string_from_int(i64 %2482)
  %2484 = call %nyx_string* @nyx_string_concat(%nyx_string* %2480, %nyx_string* %2483)
  %2485 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %2486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %2485, i64 1)
  %2487 = call %nyx_string* @nyx_string_concat(%nyx_string* %2484, %nyx_string* %2486)
  call void @nyx_sb_append(i8* %2473, %nyx_string* %2487)
  br label %merge598
else597:
  %2488 = load i8*, i8** %2353
  %2489 = load %nyx_string*, %nyx_string** %2364
  %2490 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %2491 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %2490, i64 1)
  %2492 = call %nyx_string* @nyx_string_concat(%nyx_string* %2489, %nyx_string* %2491)
  call void @nyx_sb_append(i8* %2488, %nyx_string* %2492)
  br label %merge598
merge598:
  br label %merge595
else594:
  %2493 = load %nyx_string*, %nyx_string** %2364
  %2494 = call i1 @is_user_import(%nyx_string* %2493)
  br i1 %2494, label %then614, label %else615
then614:
  %2495 = load %nyx_string*, %nyx_string** %2364
  %2496 = call %nyx_string* @find_import_path(%nyx_string* %2495)
  %2497 = alloca %nyx_string*
  store %nyx_string* %2496, %nyx_string** %2497
  %2498 = load %nyx_string*, %nyx_string** %2497
  %2499 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %2500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %2499, i64 0)
  %2501 = call i1 @nyx_string_equals(%nyx_string* %2498, %nyx_string* %2500)
  %2502 = xor i1 %2501, true
  br i1 %2502, label %then617, label %else618
then617:
  %2503 = load i8*, i8** %2263
  %2504 = load %nyx_string*, %nyx_string** %2497
  %2505 = call i8* @nyx_string_to_cstr(%nyx_string* %2504)
  %2506 = call i1 @nyx_map_contains_str(i8* %2503, i8* %2505)
  %2507 = xor i1 %2506, true
  br i1 %2507, label %then620, label %else621
then620:
  %2508 = load i8*, i8** %2263
  %2509 = load %nyx_string*, %nyx_string** %2497
  %2510 = call i8* @nyx_string_to_cstr(%nyx_string* %2509)
  call void @nyx_map_insert_int(i8* %2508, i8* %2510, i64 1)
  %2511 = load %nyx_string*, %nyx_string** %2364
  %2512 = load %nyx_string*, %nyx_string** %2497
  %2513 = call i64 @aviso_no_separable(%nyx_string* %2511, %nyx_string* %2512)
  %2514 = load %nyx_string*, %nyx_string** %2364
  %2515 = load %nyx_string*, %nyx_string** %2497
  %2516 = load i8*, i8** %2263
  %2517 = call i64 @lib_decl_registrar(%nyx_string* %2514, %nyx_string* %2515, i8* %2516)
  %2518 = load %nyx_string*, %nyx_string** %2497
  %2519 = call %nyx_string* @resolve_module_path(%nyx_string* %2518)
  %2520 = alloca %nyx_string*
  store %nyx_string* %2519, %nyx_string** %2520
  %2521 = load %nyx_string*, %nyx_string** %2520
  %2522 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %2523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %2522, i64 0)
  %2524 = call i1 @nyx_string_equals(%nyx_string* %2521, %nyx_string* %2523)
  %2525 = xor i1 %2524, true
  br i1 %2525, label %then623, label %else624
then623:
  %2526 = load %nyx_string*, %nyx_string** %2520
  %2527 = call i8* @nyx_string_to_cstr(%nyx_string* %2526)
  %2528 = call %nyx_string* @nyx_read_file(i8* %2527)
  %2529 = alloca %nyx_string*
  store %nyx_string* %2528, %nyx_string** %2529
  %2530 = load %nyx_string*, %nyx_string** %2520
  %2531 = call %nyx_string* @detect_package_name(%nyx_string* %2530)
  %2532 = alloca %nyx_string*
  store %nyx_string* %2531, %nyx_string** %2532
  %2533 = load %nyx_string*, %nyx_string** %2532
  %2534 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %2535 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %2534, i64 0)
  %2536 = call i1 @nyx_string_equals(%nyx_string* %2533, %nyx_string* %2535)
  %2537 = xor i1 %2536, true
  br i1 %2537, label %then626, label %else627
then626:
  %2538 = load %nyx_string*, %nyx_string** %2529
  %2539 = load %nyx_string*, %nyx_string** %2532
  %2540 = call %nyx_string* @rewrite_package_imports(%nyx_string* %2538, %nyx_string* %2539)
  store %nyx_string* %2540, %nyx_string** %2529
  br label %merge628
else627:
  br label %merge628
merge628:
  %2541 = load %nyx_string*, %nyx_string** %2497
  %2542 = getelementptr [10 x i8], [10 x i8]* @.str252, i32 0, i32 0
  %2543 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %2542, i64 9)
  %2544 = call i1 @nyx_string_contains(%nyx_string* %2541, %nyx_string* %2543)
  br i1 %2544, label %then629, label %else630
then629:
  %2545 = load %nyx_string*, %nyx_string** %2529
  %2546 = load i8*, i8** %2265
  %2547 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %2545, i8* %2546)
  store %nyx_string* %2547, %nyx_string** %2529
  br label %merge631
else630:
  br label %merge631
merge631:
  %2548 = load i8*, i8** %2353
  %2549 = getelementptr [11 x i8], [11 x i8]* @.str253, i32 0, i32 0
  %2550 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %2549, i64 10)
  %2551 = load %nyx_string*, %nyx_string** %2497
  %2552 = call %nyx_string* @nyx_string_concat(%nyx_string* %2550, %nyx_string* %2551)
  %2553 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %2554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %2553, i64 1)
  %2555 = call %nyx_string* @nyx_string_concat(%nyx_string* %2552, %nyx_string* %2554)
  %2556 = getelementptr [11 x i8], [11 x i8]* @.str255, i32 0, i32 0
  %2557 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %2556, i64 10)
  %2558 = call %nyx_string* @nyx_string_concat(%nyx_string* %2555, %nyx_string* %2557)
  %2559 = load %nyx_string*, %nyx_string** %2529
  %2560 = call %nyx_string* @nyx_string_concat(%nyx_string* %2558, %nyx_string* %2559)
  %2561 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %2562 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %2561, i64 1)
  %2563 = call %nyx_string* @nyx_string_concat(%nyx_string* %2560, %nyx_string* %2562)
  %2564 = getelementptr [1 x i8], [1 x i8]* @.str257, i32 0, i32 0
  %2565 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %2564, i64 0)
  %2566 = call %nyx_string* @marca_cierre(%nyx_string* %2565)
  %2567 = call %nyx_string* @nyx_string_concat(%nyx_string* %2563, %nyx_string* %2566)
  %2568 = getelementptr [9 x i8], [9 x i8]* @.str258, i32 0, i32 0
  %2569 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %2568, i64 8)
  %2570 = call %nyx_string* @nyx_string_concat(%nyx_string* %2567, %nyx_string* %2569)
  %2571 = load i64, i64* %2354
  %2572 = add i64 %2571, 2
  %2573 = call %nyx_string* @nyx_string_from_int(i64 %2572)
  %2574 = call %nyx_string* @nyx_string_concat(%nyx_string* %2570, %nyx_string* %2573)
  %2575 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %2576 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %2575, i64 1)
  %2577 = call %nyx_string* @nyx_string_concat(%nyx_string* %2574, %nyx_string* %2576)
  call void @nyx_sb_append(i8* %2548, %nyx_string* %2577)
  br label %merge625
else624:
  %2578 = load %nyx_string*, %nyx_string** %2497
  %2579 = call i64 @import_not_found(%nyx_string* %2578)
  br label %merge625
merge625:
  br label %merge622
else621:
  %2580 = load i8*, i8** %2353
  %2581 = call %nyx_string* @import_ya_inlineado()
  call void @nyx_sb_append(i8* %2580, %nyx_string* %2581)
  br label %merge622
merge622:
  br label %merge619
else618:
  %2582 = load i8*, i8** %2353
  %2583 = load %nyx_string*, %nyx_string** %2364
  %2584 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %2585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %2584, i64 1)
  %2586 = call %nyx_string* @nyx_string_concat(%nyx_string* %2583, %nyx_string* %2585)
  call void @nyx_sb_append(i8* %2582, %nyx_string* %2586)
  br label %merge619
merge619:
  br label %merge616
else615:
  %2587 = load i8*, i8** %2353
  %2588 = load %nyx_string*, %nyx_string** %2364
  %2589 = getelementptr [2 x i8], [2 x i8]* @.str261, i32 0, i32 0
  %2590 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %2589, i64 1)
  %2591 = call %nyx_string* @nyx_string_concat(%nyx_string* %2588, %nyx_string* %2590)
  call void @nyx_sb_append(i8* %2587, %nyx_string* %2591)
  br label %merge616
merge616:
  br label %merge595
merge595:
  %2592 = load i64, i64* %2354
  %2593 = add i64 %2592, 1
  store i64 %2593, i64* %2354
  br label %while_cond590
while_end592:
  %2594 = load i8*, i8** %2353
  %2595 = call %nyx_string* @nyx_sb_to_string(i8* %2594)
  %2596 = alloca %nyx_string*
  store %nyx_string* %2595, %nyx_string** %2596
  %2597 = alloca i1
  store i1 1, i1* %2597
  %2598 = call i8* @llvm.stacksave()
  br label %while_cond632
while_cond632:
  %2599 = load i1, i1* %2597
  br i1 %2599, label %while_body633, label %while_end634
while_body633:
  call void @llvm.stackrestore(i8* %2598)
  store i1 0, i1* %2597
  %2600 = load %nyx_string*, %nyx_string** %2596
  %2601 = getelementptr [2 x i8], [2 x i8]* @.str262, i32 0, i32 0
  %2602 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %2601, i64 1)
  %2603 = call { i64, i8* }* @nyx_string_split(%nyx_string* %2600, %nyx_string* %2602)
  %2604 = alloca { i64, i8* }*
  store { i64, i8* }* %2603, { i64, i8* }** %2604
  %2605 = call i8* @nyx_sb_new(i64 1024)
  %2606 = alloca i8*
  store i8* %2605, i8** %2606
  %2607 = alloca i64
  store i64 0, i64* %2607
  %2608 = alloca i64
  store i64 1, i64* %2608
  %2609 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %2610 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %2609, i64 0)
  %2611 = alloca %nyx_string*
  store %nyx_string* %2610, %nyx_string** %2611
  %2612 = call i8* @llvm.stacksave()
  br label %while_cond635
while_cond635:
  %2613 = load i64, i64* %2607
  %2614 = load { i64, i8* }*, { i64, i8* }** %2604
  %2615 = call i64 @nyx_array_length({ i64, i8* }* %2614)
  %2616 = icmp slt i64 %2613, %2615
  br i1 %2616, label %while_body636, label %while_end637
while_body636:
  call void @llvm.stackrestore(i8* %2612)
  %2617 = load { i64, i8* }*, { i64, i8* }** %2604
  %2618 = load i64, i64* %2607
  %2619 = call i64 @nyx_array_get_checked({ i64, i8* }* %2617, i64 %2618, i64 2)
  %2620 = inttoptr i64 %2619 to %nyx_string*
  %2621 = alloca %nyx_string*
  store %nyx_string* %2620, %nyx_string** %2621
  %2622 = load %nyx_string*, %nyx_string** %2621
  %2623 = call %nyx_string* @nyx_string_trim(%nyx_string* %2622)
  %2624 = alloca %nyx_string*
  store %nyx_string* %2623, %nyx_string** %2624
  %2625 = load %nyx_string*, %nyx_string** %2624
  %2626 = getelementptr [10 x i8], [10 x i8]* @.str264, i32 0, i32 0
  %2627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %2626, i64 9)
  %2628 = call i1 @nyx_string_starts_with(%nyx_string* %2625, %nyx_string* %2627)
  br i1 %2628, label %then638, label %else639
then638:
  %2629 = load %nyx_string*, %nyx_string** %2624
  %2630 = call %nyx_string* @path_de_marca(%nyx_string* %2629)
  store %nyx_string* %2630, %nyx_string** %2611
  br label %merge640
else639:
  br label %merge640
merge640:
  %2631 = load %nyx_string*, %nyx_string** %2624
  %2632 = getelementptr [9 x i8], [9 x i8]* @.str265, i32 0, i32 0
  %2633 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %2632, i64 8)
  %2634 = call i1 @nyx_string_starts_with(%nyx_string* %2631, %nyx_string* %2633)
  br i1 %2634, label %then641, label %else642
then641:
  %2635 = load %nyx_string*, %nyx_string** %2624
  %2636 = load %nyx_string*, %nyx_string** %2624
  %2637 = call i64 @nyx_string_byte_length(%nyx_string* %2636)
  %2638 = call %nyx_string* @nyx_string_substring(%nyx_string* %2635, i64 8, i64 %2637)
  %2639 = call %nyx_string* @nyx_string_trim(%nyx_string* %2638)
  %2640 = call i64 @nyx_string_to_int(%nyx_string* %2639)
  %2641 = alloca i64
  store i64 %2640, i64* %2641
  %2642 = load i64, i64* %2641
  %2643 = icmp sgt i64 %2642, 0
  br i1 %2643, label %then644, label %else645
then644:
  %2644 = load i64, i64* %2641
  store i64 %2644, i64* %2608
  br label %merge646
else645:
  br label %merge646
merge646:
  %2645 = load i8*, i8** %2606
  %2646 = load %nyx_string*, %nyx_string** %2621
  %2647 = getelementptr [2 x i8], [2 x i8]* @.str266, i32 0, i32 0
  %2648 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %2647, i64 1)
  %2649 = call %nyx_string* @nyx_string_concat(%nyx_string* %2646, %nyx_string* %2648)
  call void @nyx_sb_append(i8* %2645, %nyx_string* %2649)
  %2650 = load i64, i64* %2607
  %2651 = add i64 %2650, 1
  store i64 %2651, i64* %2607
  br label %merge643
else642:
  %2652 = load %nyx_string*, %nyx_string** %2621
  %2653 = call i1 @is_module_import(%nyx_string* %2652)
  br i1 %2653, label %then647, label %else648
then647:
  %2654 = load %nyx_string*, %nyx_string** %2621
  %2655 = call %nyx_string* @find_import_path(%nyx_string* %2654)
  %2656 = alloca %nyx_string*
  store %nyx_string* %2655, %nyx_string** %2656
  %2657 = alloca i1
  store i1 false, i1* %2657
  %2658 = load %nyx_string*, %nyx_string** %2656
  %2659 = getelementptr [1 x i8], [1 x i8]* @.str267, i32 0, i32 0
  %2660 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %2659, i64 0)
  %2661 = call i1 @nyx_string_equals(%nyx_string* %2658, %nyx_string* %2660)
  %2662 = xor i1 %2661, true
  br i1 %2662, label %sc_and_rhs650, label %sc_and_end651
sc_and_rhs650:
  %2663 = load i8*, i8** %2263
  %2664 = load %nyx_string*, %nyx_string** %2656
  %2665 = call i8* @nyx_string_to_cstr(%nyx_string* %2664)
  %2666 = call i1 @nyx_map_contains_str(i8* %2663, i8* %2665)
  %2667 = xor i1 %2666, true
  store i1 %2667, i1* %2657
  br label %sc_and_end651
sc_and_end651:
  %2668 = load i1, i1* %2657
  br i1 %2668, label %then652, label %else653
then652:
  %2669 = load i8*, i8** %2263
  %2670 = load %nyx_string*, %nyx_string** %2656
  %2671 = call i8* @nyx_string_to_cstr(%nyx_string* %2670)
  call void @nyx_map_insert_int(i8* %2669, i8* %2671, i64 1)
  %2672 = load %nyx_string*, %nyx_string** %2621
  %2673 = load %nyx_string*, %nyx_string** %2656
  %2674 = call i64 @aviso_no_separable(%nyx_string* %2672, %nyx_string* %2673)
  %2675 = load %nyx_string*, %nyx_string** %2621
  %2676 = load %nyx_string*, %nyx_string** %2656
  %2677 = load i8*, i8** %2263
  %2678 = call i64 @lib_decl_registrar(%nyx_string* %2675, %nyx_string* %2676, i8* %2677)
  store i1 1, i1* %2597
  %2679 = load %nyx_string*, %nyx_string** %2656
  %2680 = call %nyx_string* @resolve_module_path(%nyx_string* %2679)
  %2681 = alloca %nyx_string*
  store %nyx_string* %2680, %nyx_string** %2681
  %2682 = load %nyx_string*, %nyx_string** %2681
  %2683 = getelementptr [1 x i8], [1 x i8]* @.str268, i32 0, i32 0
  %2684 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %2683, i64 0)
  %2685 = call i1 @nyx_string_equals(%nyx_string* %2682, %nyx_string* %2684)
  %2686 = xor i1 %2685, true
  br i1 %2686, label %then655, label %else656
then655:
  %2687 = load %nyx_string*, %nyx_string** %2681
  %2688 = call i8* @nyx_string_to_cstr(%nyx_string* %2687)
  %2689 = call %nyx_string* @nyx_read_file(i8* %2688)
  %2690 = alloca %nyx_string*
  store %nyx_string* %2689, %nyx_string** %2690
  %2691 = load %nyx_string*, %nyx_string** %2681
  %2692 = call %nyx_string* @detect_package_name(%nyx_string* %2691)
  %2693 = alloca %nyx_string*
  store %nyx_string* %2692, %nyx_string** %2693
  %2694 = load %nyx_string*, %nyx_string** %2693
  %2695 = getelementptr [1 x i8], [1 x i8]* @.str269, i32 0, i32 0
  %2696 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %2695, i64 0)
  %2697 = call i1 @nyx_string_equals(%nyx_string* %2694, %nyx_string* %2696)
  %2698 = xor i1 %2697, true
  br i1 %2698, label %then658, label %else659
then658:
  %2699 = load %nyx_string*, %nyx_string** %2690
  %2700 = load %nyx_string*, %nyx_string** %2693
  %2701 = call %nyx_string* @rewrite_package_imports(%nyx_string* %2699, %nyx_string* %2700)
  store %nyx_string* %2701, %nyx_string** %2690
  br label %merge660
else659:
  br label %merge660
merge660:
  %2702 = load %nyx_string*, %nyx_string** %2656
  %2703 = getelementptr [10 x i8], [10 x i8]* @.str270, i32 0, i32 0
  %2704 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %2703, i64 9)
  %2705 = call i1 @nyx_string_contains(%nyx_string* %2702, %nyx_string* %2704)
  br i1 %2705, label %then661, label %else662
then661:
  %2706 = load %nyx_string*, %nyx_string** %2690
  %2707 = load i8*, i8** %2265
  %2708 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %2706, i8* %2707)
  store %nyx_string* %2708, %nyx_string** %2690
  br label %merge663
else662:
  br label %merge663
merge663:
  %2709 = load %nyx_string*, %nyx_string** %2690
  %2710 = call { i64, i8* }* @extract_exports(%nyx_string* %2709)
  %2711 = alloca { i64, i8* }*
  store { i64, i8* }* %2710, { i64, i8* }** %2711
  %2712 = load i8*, i8** %2346
  %2713 = getelementptr [8 x i8], [8 x i8]* @.str271, i32 0, i32 0
  %2714 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %2713, i64 7)
  %2715 = load %nyx_string*, %nyx_string** %2621
  %2716 = call %nyx_string* @extract_module_alias(%nyx_string* %2715)
  %2717 = call %nyx_string* @nyx_string_concat(%nyx_string* %2714, %nyx_string* %2716)
  %2718 = getelementptr [5 x i8], [5 x i8]* @.str272, i32 0, i32 0
  %2719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %2718, i64 4)
  %2720 = call %nyx_string* @nyx_string_concat(%nyx_string* %2717, %nyx_string* %2719)
  %2721 = load %nyx_string*, %nyx_string** %2656
  %2722 = call %nyx_string* @nyx_string_concat(%nyx_string* %2720, %nyx_string* %2721)
  %2723 = getelementptr [4 x i8], [4 x i8]* @.str273, i32 0, i32 0
  %2724 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %2723, i64 3)
  %2725 = call %nyx_string* @nyx_string_concat(%nyx_string* %2722, %nyx_string* %2724)
  %2726 = load { i64, i8* }*, { i64, i8* }** %2711
  %2727 = getelementptr [3 x i8], [3 x i8]* @.str274, i32 0, i32 0
  %2728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %2727, i64 2)
  %2729 = call %nyx_string* @nyx_string_join({ i64, i8* }* %2726, %nyx_string* %2728)
  %2730 = call %nyx_string* @nyx_string_concat(%nyx_string* %2725, %nyx_string* %2729)
  %2731 = getelementptr [3 x i8], [3 x i8]* @.str275, i32 0, i32 0
  %2732 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %2731, i64 2)
  %2733 = call %nyx_string* @nyx_string_concat(%nyx_string* %2730, %nyx_string* %2732)
  call void @nyx_sb_append(i8* %2712, %nyx_string* %2733)
  %2734 = load i8*, i8** %2606
  %2735 = getelementptr [11 x i8], [11 x i8]* @.str276, i32 0, i32 0
  %2736 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %2735, i64 10)
  %2737 = load %nyx_string*, %nyx_string** %2656
  %2738 = call %nyx_string* @nyx_string_concat(%nyx_string* %2736, %nyx_string* %2737)
  %2739 = getelementptr [2 x i8], [2 x i8]* @.str277, i32 0, i32 0
  %2740 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %2739, i64 1)
  %2741 = call %nyx_string* @nyx_string_concat(%nyx_string* %2738, %nyx_string* %2740)
  %2742 = getelementptr [11 x i8], [11 x i8]* @.str278, i32 0, i32 0
  %2743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %2742, i64 10)
  %2744 = call %nyx_string* @nyx_string_concat(%nyx_string* %2741, %nyx_string* %2743)
  %2745 = load %nyx_string*, %nyx_string** %2690
  %2746 = call %nyx_string* @nyx_string_concat(%nyx_string* %2744, %nyx_string* %2745)
  %2747 = getelementptr [2 x i8], [2 x i8]* @.str279, i32 0, i32 0
  %2748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %2747, i64 1)
  %2749 = call %nyx_string* @nyx_string_concat(%nyx_string* %2746, %nyx_string* %2748)
  %2750 = load %nyx_string*, %nyx_string** %2611
  %2751 = call %nyx_string* @marca_cierre(%nyx_string* %2750)
  %2752 = call %nyx_string* @nyx_string_concat(%nyx_string* %2749, %nyx_string* %2751)
  call void @nyx_sb_append(i8* %2734, %nyx_string* %2752)
  br label %merge657
else656:
  %2753 = load %nyx_string*, %nyx_string** %2656
  %2754 = call i64 @import_not_found(%nyx_string* %2753)
  br label %merge657
merge657:
  %2755 = load i8*, i8** %2606
  %2756 = load %nyx_string*, %nyx_string** %2621
  %2757 = getelementptr [2 x i8], [2 x i8]* @.str280, i32 0, i32 0
  %2758 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %2757, i64 1)
  %2759 = call %nyx_string* @nyx_string_concat(%nyx_string* %2756, %nyx_string* %2758)
  %2760 = getelementptr [9 x i8], [9 x i8]* @.str281, i32 0, i32 0
  %2761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %2760, i64 8)
  %2762 = call %nyx_string* @nyx_string_concat(%nyx_string* %2759, %nyx_string* %2761)
  %2763 = load i64, i64* %2608
  %2764 = add i64 %2763, 1
  %2765 = call %nyx_string* @nyx_string_from_int(i64 %2764)
  %2766 = call %nyx_string* @nyx_string_concat(%nyx_string* %2762, %nyx_string* %2765)
  %2767 = getelementptr [2 x i8], [2 x i8]* @.str282, i32 0, i32 0
  %2768 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %2767, i64 1)
  %2769 = call %nyx_string* @nyx_string_concat(%nyx_string* %2766, %nyx_string* %2768)
  call void @nyx_sb_append(i8* %2755, %nyx_string* %2769)
  br label %merge654
else653:
  %2770 = load %nyx_string*, %nyx_string** %2621
  %2771 = call %nyx_string* @extract_module_alias(%nyx_string* %2770)
  %2772 = alloca %nyx_string*
  store %nyx_string* %2771, %nyx_string** %2772
  %2773 = alloca i1
  store i1 false, i1* %2773
  %2774 = load %nyx_string*, %nyx_string** %2656
  %2775 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %2776 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %2775, i64 0)
  %2777 = call i1 @nyx_string_equals(%nyx_string* %2774, %nyx_string* %2776)
  %2778 = xor i1 %2777, true
  br i1 %2778, label %sc_and_rhs664, label %sc_and_end665
sc_and_rhs664:
  %2779 = load %nyx_string*, %nyx_string** %2772
  %2780 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %2781 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %2780, i64 0)
  %2782 = call i1 @nyx_string_equals(%nyx_string* %2779, %nyx_string* %2781)
  %2783 = xor i1 %2782, true
  store i1 %2783, i1* %2773
  br label %sc_and_end665
sc_and_end665:
  %2784 = load i1, i1* %2773
  br i1 %2784, label %then666, label %else667
then666:
  %2785 = load %nyx_string*, %nyx_string** %2656
  %2786 = call %nyx_string* @resolve_module_path(%nyx_string* %2785)
  %2787 = alloca %nyx_string*
  store %nyx_string* %2786, %nyx_string** %2787
  %2788 = load %nyx_string*, %nyx_string** %2787
  %2789 = getelementptr [1 x i8], [1 x i8]* @.str285, i32 0, i32 0
  %2790 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %2789, i64 0)
  %2791 = call i1 @nyx_string_equals(%nyx_string* %2788, %nyx_string* %2790)
  %2792 = xor i1 %2791, true
  br i1 %2792, label %then669, label %else670
then669:
  %2793 = load %nyx_string*, %nyx_string** %2787
  %2794 = call i8* @nyx_string_to_cstr(%nyx_string* %2793)
  %2795 = call %nyx_string* @nyx_read_file(i8* %2794)
  %2796 = alloca %nyx_string*
  store %nyx_string* %2795, %nyx_string** %2796
  %2797 = load %nyx_string*, %nyx_string** %2796
  %2798 = call { i64, i8* }* @extract_exports(%nyx_string* %2797)
  %2799 = alloca { i64, i8* }*
  store { i64, i8* }* %2798, { i64, i8* }** %2799
  %2800 = load i8*, i8** %2346
  %2801 = getelementptr [8 x i8], [8 x i8]* @.str286, i32 0, i32 0
  %2802 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %2801, i64 7)
  %2803 = load %nyx_string*, %nyx_string** %2772
  %2804 = call %nyx_string* @nyx_string_concat(%nyx_string* %2802, %nyx_string* %2803)
  %2805 = getelementptr [5 x i8], [5 x i8]* @.str287, i32 0, i32 0
  %2806 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %2805, i64 4)
  %2807 = call %nyx_string* @nyx_string_concat(%nyx_string* %2804, %nyx_string* %2806)
  %2808 = load %nyx_string*, %nyx_string** %2656
  %2809 = call %nyx_string* @nyx_string_concat(%nyx_string* %2807, %nyx_string* %2808)
  %2810 = getelementptr [4 x i8], [4 x i8]* @.str288, i32 0, i32 0
  %2811 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %2810, i64 3)
  %2812 = call %nyx_string* @nyx_string_concat(%nyx_string* %2809, %nyx_string* %2811)
  %2813 = load { i64, i8* }*, { i64, i8* }** %2799
  %2814 = getelementptr [3 x i8], [3 x i8]* @.str289, i32 0, i32 0
  %2815 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %2814, i64 2)
  %2816 = call %nyx_string* @nyx_string_join({ i64, i8* }* %2813, %nyx_string* %2815)
  %2817 = call %nyx_string* @nyx_string_concat(%nyx_string* %2812, %nyx_string* %2816)
  %2818 = getelementptr [3 x i8], [3 x i8]* @.str290, i32 0, i32 0
  %2819 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %2818, i64 2)
  %2820 = call %nyx_string* @nyx_string_concat(%nyx_string* %2817, %nyx_string* %2819)
  call void @nyx_sb_append(i8* %2800, %nyx_string* %2820)
  br label %merge671
else670:
  br label %merge671
merge671:
  br label %merge668
else667:
  br label %merge668
merge668:
  %2821 = load i8*, i8** %2606
  %2822 = load %nyx_string*, %nyx_string** %2621
  %2823 = getelementptr [2 x i8], [2 x i8]* @.str291, i32 0, i32 0
  %2824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %2823, i64 1)
  %2825 = call %nyx_string* @nyx_string_concat(%nyx_string* %2822, %nyx_string* %2824)
  call void @nyx_sb_append(i8* %2821, %nyx_string* %2825)
  br label %merge654
merge654:
  br label %merge649
else648:
  %2826 = load %nyx_string*, %nyx_string** %2621
  %2827 = call i1 @is_user_import(%nyx_string* %2826)
  br i1 %2827, label %then672, label %else673
then672:
  %2828 = load %nyx_string*, %nyx_string** %2621
  %2829 = call %nyx_string* @find_import_path(%nyx_string* %2828)
  %2830 = alloca %nyx_string*
  store %nyx_string* %2829, %nyx_string** %2830
  %2831 = alloca i1
  store i1 false, i1* %2831
  %2832 = load %nyx_string*, %nyx_string** %2830
  %2833 = getelementptr [1 x i8], [1 x i8]* @.str292, i32 0, i32 0
  %2834 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %2833, i64 0)
  %2835 = call i1 @nyx_string_equals(%nyx_string* %2832, %nyx_string* %2834)
  %2836 = xor i1 %2835, true
  br i1 %2836, label %sc_and_rhs675, label %sc_and_end676
sc_and_rhs675:
  %2837 = load i8*, i8** %2263
  %2838 = load %nyx_string*, %nyx_string** %2830
  %2839 = call i8* @nyx_string_to_cstr(%nyx_string* %2838)
  %2840 = call i1 @nyx_map_contains_str(i8* %2837, i8* %2839)
  %2841 = xor i1 %2840, true
  store i1 %2841, i1* %2831
  br label %sc_and_end676
sc_and_end676:
  %2842 = load i1, i1* %2831
  br i1 %2842, label %then677, label %else678
then677:
  %2843 = load i8*, i8** %2263
  %2844 = load %nyx_string*, %nyx_string** %2830
  %2845 = call i8* @nyx_string_to_cstr(%nyx_string* %2844)
  call void @nyx_map_insert_int(i8* %2843, i8* %2845, i64 1)
  %2846 = load %nyx_string*, %nyx_string** %2621
  %2847 = load %nyx_string*, %nyx_string** %2830
  %2848 = call i64 @aviso_no_separable(%nyx_string* %2846, %nyx_string* %2847)
  %2849 = load %nyx_string*, %nyx_string** %2621
  %2850 = load %nyx_string*, %nyx_string** %2830
  %2851 = load i8*, i8** %2263
  %2852 = call i64 @lib_decl_registrar(%nyx_string* %2849, %nyx_string* %2850, i8* %2851)
  store i1 1, i1* %2597
  %2853 = load %nyx_string*, %nyx_string** %2830
  %2854 = call %nyx_string* @resolve_module_path(%nyx_string* %2853)
  %2855 = alloca %nyx_string*
  store %nyx_string* %2854, %nyx_string** %2855
  %2856 = load %nyx_string*, %nyx_string** %2855
  %2857 = getelementptr [1 x i8], [1 x i8]* @.str293, i32 0, i32 0
  %2858 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %2857, i64 0)
  %2859 = call i1 @nyx_string_equals(%nyx_string* %2856, %nyx_string* %2858)
  %2860 = xor i1 %2859, true
  br i1 %2860, label %then680, label %else681
then680:
  %2861 = load %nyx_string*, %nyx_string** %2855
  %2862 = call i8* @nyx_string_to_cstr(%nyx_string* %2861)
  %2863 = call %nyx_string* @nyx_read_file(i8* %2862)
  %2864 = alloca %nyx_string*
  store %nyx_string* %2863, %nyx_string** %2864
  %2865 = load %nyx_string*, %nyx_string** %2855
  %2866 = call %nyx_string* @detect_package_name(%nyx_string* %2865)
  %2867 = alloca %nyx_string*
  store %nyx_string* %2866, %nyx_string** %2867
  %2868 = load %nyx_string*, %nyx_string** %2867
  %2869 = getelementptr [1 x i8], [1 x i8]* @.str294, i32 0, i32 0
  %2870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %2869, i64 0)
  %2871 = call i1 @nyx_string_equals(%nyx_string* %2868, %nyx_string* %2870)
  %2872 = xor i1 %2871, true
  br i1 %2872, label %then683, label %else684
then683:
  %2873 = load %nyx_string*, %nyx_string** %2864
  %2874 = load %nyx_string*, %nyx_string** %2867
  %2875 = call %nyx_string* @rewrite_package_imports(%nyx_string* %2873, %nyx_string* %2874)
  store %nyx_string* %2875, %nyx_string** %2864
  br label %merge685
else684:
  br label %merge685
merge685:
  %2876 = load %nyx_string*, %nyx_string** %2830
  %2877 = getelementptr [10 x i8], [10 x i8]* @.str295, i32 0, i32 0
  %2878 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %2877, i64 9)
  %2879 = call i1 @nyx_string_contains(%nyx_string* %2876, %nyx_string* %2878)
  br i1 %2879, label %then686, label %else687
then686:
  %2880 = load %nyx_string*, %nyx_string** %2864
  %2881 = load i8*, i8** %2265
  %2882 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %2880, i8* %2881)
  store %nyx_string* %2882, %nyx_string** %2864
  br label %merge688
else687:
  br label %merge688
merge688:
  %2883 = load i8*, i8** %2606
  %2884 = getelementptr [11 x i8], [11 x i8]* @.str296, i32 0, i32 0
  %2885 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %2884, i64 10)
  %2886 = load %nyx_string*, %nyx_string** %2830
  %2887 = call %nyx_string* @nyx_string_concat(%nyx_string* %2885, %nyx_string* %2886)
  %2888 = getelementptr [2 x i8], [2 x i8]* @.str297, i32 0, i32 0
  %2889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %2888, i64 1)
  %2890 = call %nyx_string* @nyx_string_concat(%nyx_string* %2887, %nyx_string* %2889)
  %2891 = getelementptr [11 x i8], [11 x i8]* @.str298, i32 0, i32 0
  %2892 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %2891, i64 10)
  %2893 = call %nyx_string* @nyx_string_concat(%nyx_string* %2890, %nyx_string* %2892)
  %2894 = load %nyx_string*, %nyx_string** %2864
  %2895 = call %nyx_string* @nyx_string_concat(%nyx_string* %2893, %nyx_string* %2894)
  %2896 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %2897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %2896, i64 1)
  %2898 = call %nyx_string* @nyx_string_concat(%nyx_string* %2895, %nyx_string* %2897)
  %2899 = load %nyx_string*, %nyx_string** %2611
  %2900 = call %nyx_string* @marca_cierre(%nyx_string* %2899)
  %2901 = call %nyx_string* @nyx_string_concat(%nyx_string* %2898, %nyx_string* %2900)
  %2902 = getelementptr [9 x i8], [9 x i8]* @.str300, i32 0, i32 0
  %2903 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %2902, i64 8)
  %2904 = call %nyx_string* @nyx_string_concat(%nyx_string* %2901, %nyx_string* %2903)
  %2905 = load i64, i64* %2608
  %2906 = add i64 %2905, 1
  %2907 = call %nyx_string* @nyx_string_from_int(i64 %2906)
  %2908 = call %nyx_string* @nyx_string_concat(%nyx_string* %2904, %nyx_string* %2907)
  %2909 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %2910 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %2909, i64 1)
  %2911 = call %nyx_string* @nyx_string_concat(%nyx_string* %2908, %nyx_string* %2910)
  call void @nyx_sb_append(i8* %2883, %nyx_string* %2911)
  br label %merge682
else681:
  %2912 = load %nyx_string*, %nyx_string** %2830
  %2913 = call i64 @import_not_found(%nyx_string* %2912)
  br label %merge682
merge682:
  br label %merge679
else678:
  %2914 = load %nyx_string*, %nyx_string** %2830
  %2915 = getelementptr [1 x i8], [1 x i8]* @.str302, i32 0, i32 0
  %2916 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %2915, i64 0)
  %2917 = call i1 @nyx_string_equals(%nyx_string* %2914, %nyx_string* %2916)
  %2918 = xor i1 %2917, true
  br i1 %2918, label %then689, label %else690
then689:
  %2919 = load i8*, i8** %2606
  %2920 = call %nyx_string* @import_ya_inlineado()
  call void @nyx_sb_append(i8* %2919, %nyx_string* %2920)
  br label %merge691
else690:
  %2921 = load i8*, i8** %2606
  %2922 = load %nyx_string*, %nyx_string** %2621
  %2923 = getelementptr [2 x i8], [2 x i8]* @.str303, i32 0, i32 0
  %2924 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %2923, i64 1)
  %2925 = call %nyx_string* @nyx_string_concat(%nyx_string* %2922, %nyx_string* %2924)
  call void @nyx_sb_append(i8* %2921, %nyx_string* %2925)
  br label %merge691
merge691:
  br label %merge679
merge679:
  br label %merge674
else673:
  %2926 = load i8*, i8** %2606
  %2927 = load %nyx_string*, %nyx_string** %2621
  %2928 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %2929 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %2928, i64 1)
  %2930 = call %nyx_string* @nyx_string_concat(%nyx_string* %2927, %nyx_string* %2929)
  call void @nyx_sb_append(i8* %2926, %nyx_string* %2930)
  br label %merge674
merge674:
  br label %merge649
merge649:
  %2931 = load i64, i64* %2608
  %2932 = add i64 %2931, 1
  store i64 %2932, i64* %2608
  %2933 = load i64, i64* %2607
  %2934 = add i64 %2933, 1
  store i64 %2934, i64* %2607
  br label %merge643
merge643:
  br label %while_cond635
while_end637:
  %2935 = load i8*, i8** %2606
  %2936 = call %nyx_string* @nyx_sb_to_string(i8* %2935)
  store %nyx_string* %2936, %nyx_string** %2596
  br label %while_cond632
while_end634:
  %2937 = getelementptr [1 x i8], [1 x i8]* @.str305, i32 0, i32 0
  %2938 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %2937, i64 0)
  %2939 = alloca %nyx_string*
  store %nyx_string* %2938, %nyx_string** %2939
  %2940 = load %nyx_string*, %nyx_string** %2268
  %2941 = getelementptr [1 x i8], [1 x i8]* @.str306, i32 0, i32 0
  %2942 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %2941, i64 0)
  %2943 = call i1 @nyx_string_equals(%nyx_string* %2940, %nyx_string* %2942)
  %2944 = xor i1 %2943, true
  br i1 %2944, label %then692, label %else693
then692:
  %2945 = getelementptr [17 x i8], [17 x i8]* @.str307, i32 0, i32 0
  %2946 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %2945, i64 16)
  store %nyx_string* %2946, %nyx_string** %2939
  br label %merge694
else693:
  br label %merge694
merge694:
  %2947 = getelementptr [1 x i8], [1 x i8]* @.str308, i32 0, i32 0
  %2948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %2947, i64 0)
  %2949 = alloca %nyx_string*
  store %nyx_string* %2948, %nyx_string** %2949
  %2950 = load i8*, i8** %2263
  %2951 = call { i64, i8* }* @nyx_map_keys_array(i8* %2950)
  %2952 = alloca { i64, i8* }*
  store { i64, i8* }* %2951, { i64, i8* }** %2952
  %2953 = alloca i64
  store i64 0, i64* %2953
  %2954 = call i8* @llvm.stacksave()
  br label %while_cond695
while_cond695:
  %2955 = load i64, i64* %2953
  %2956 = load { i64, i8* }*, { i64, i8* }** %2952
  %2957 = call i64 @nyx_array_length({ i64, i8* }* %2956)
  %2958 = icmp slt i64 %2955, %2957
  br i1 %2958, label %while_body696, label %while_end697
while_body696:
  call void @llvm.stackrestore(i8* %2954)
  %2959 = load { i64, i8* }*, { i64, i8* }** %2952
  %2960 = load i64, i64* %2953
  %2961 = call i64 @nyx_array_get_checked({ i64, i8* }* %2959, i64 %2960, i64 2)
  %2962 = inttoptr i64 %2961 to %nyx_string*
  %2963 = alloca %nyx_string*
  store %nyx_string* %2962, %nyx_string** %2963
  %2964 = load %nyx_string*, %nyx_string** %2963
  %2965 = getelementptr [9 x i8], [9 x i8]* @.str309, i32 0, i32 0
  %2966 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %2965, i64 8)
  %2967 = call i1 @nyx_string_starts_with(%nyx_string* %2964, %nyx_string* %2966)
  br i1 %2967, label %then698, label %else699
then698:
  %2968 = load %nyx_string*, %nyx_string** %2949
  %2969 = getelementptr [1 x i8], [1 x i8]* @.str310, i32 0, i32 0
  %2970 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %2969, i64 0)
  %2971 = call i1 @nyx_string_equals(%nyx_string* %2968, %nyx_string* %2970)
  %2972 = xor i1 %2971, true
  br i1 %2972, label %then701, label %else702
then701:
  %2973 = load %nyx_string*, %nyx_string** %2949
  %2974 = getelementptr [2 x i8], [2 x i8]* @.str311, i32 0, i32 0
  %2975 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %2974, i64 1)
  %2976 = call %nyx_string* @nyx_string_concat(%nyx_string* %2973, %nyx_string* %2975)
  store %nyx_string* %2976, %nyx_string** %2949
  br label %merge703
else702:
  br label %merge703
merge703:
  %2977 = load %nyx_string*, %nyx_string** %2949
  %2978 = load %nyx_string*, %nyx_string** %2963
  %2979 = load %nyx_string*, %nyx_string** %2963
  %2980 = call i64 @nyx_string_byte_length(%nyx_string* %2979)
  %2981 = call %nyx_string* @nyx_string_substring(%nyx_string* %2978, i64 8, i64 %2980)
  %2982 = call %nyx_string* @nyx_string_concat(%nyx_string* %2977, %nyx_string* %2981)
  store %nyx_string* %2982, %nyx_string** %2949
  br label %merge700
else699:
  br label %merge700
merge700:
  %2983 = load i64, i64* %2953
  %2984 = add i64 %2983, 1
  store i64 %2984, i64* %2953
  br label %while_cond695
while_end697:
  %2985 = getelementptr [13 x i8], [13 x i8]* @.str312, i32 0, i32 0
  %2986 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %2985, i64 12)
  %2987 = load %nyx_string*, %nyx_string** %2949
  %2988 = call i8* @nyx_string_to_cstr(%nyx_string* %2986)
  %2989 = call i8* @nyx_string_to_cstr(%nyx_string* %2987)
  call void @nyx_setenv(i8* %2988, i8* %2989)
  %2990 = getelementptr [1 x i8], [1 x i8]* @.str313, i32 0, i32 0
  %2991 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %2990, i64 0)
  %2992 = alloca %nyx_string*
  store %nyx_string* %2991, %nyx_string** %2992
  %2993 = getelementptr [13 x i8], [13 x i8]* @.str314, i32 0, i32 0
  %2994 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %2993, i64 12)
  %2995 = call i8* @nyx_string_to_cstr(%nyx_string* %2994)
  %2996 = call %nyx_string* @nyx_getenv(i8* %2995)
  %2997 = getelementptr [1 x i8], [1 x i8]* @.str315, i32 0, i32 0
  %2998 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %2997, i64 0)
  %2999 = call i1 @nyx_string_equals(%nyx_string* %2996, %nyx_string* %2998)
  %3000 = xor i1 %2999, true
  br i1 %3000, label %then704, label %else705
then704:
  %3001 = getelementptr [1 x i8], [1 x i8]* @.str316, i32 0, i32 0
  %3002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %3001, i64 0)
  %3003 = call %nyx_string* @marca_cierre(%nyx_string* %3002)
  store %nyx_string* %3003, %nyx_string** %2992
  br label %merge706
else705:
  br label %merge706
merge706:
  %3004 = load %nyx_string*, %nyx_string** %2939
  %3005 = load %nyx_string*, %nyx_string** %2268
  %3006 = call %nyx_string* @nyx_string_concat(%nyx_string* %3004, %nyx_string* %3005)
  %3007 = load i8*, i8** %2346
  %3008 = call %nyx_string* @nyx_sb_to_string(i8* %3007)
  %3009 = call %nyx_string* @nyx_string_concat(%nyx_string* %3006, %nyx_string* %3008)
  %3010 = load %nyx_string*, %nyx_string** %2992
  %3011 = call %nyx_string* @nyx_string_concat(%nyx_string* %3009, %nyx_string* %3010)
  %3012 = getelementptr [11 x i8], [11 x i8]* @.str317, i32 0, i32 0
  %3013 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %3012, i64 10)
  %3014 = call %nyx_string* @nyx_string_concat(%nyx_string* %3011, %nyx_string* %3013)
  %3015 = load %nyx_string*, %nyx_string** %2596
  %3016 = call %nyx_string* @nyx_string_concat(%nyx_string* %3014, %nyx_string* %3015)
  ret %nyx_string* %3016
}

define %nyx_string* @nyx_msg(
%nyx_string* %es.param, %nyx_string* %en.param) {
  %es.ptr = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  %en.ptr = alloca %nyx_string*
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %3017 = getelementptr [9 x i8], [9 x i8]* @.str318, i32 0, i32 0
  %3018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %3017, i64 8)
  %3019 = call i8* @nyx_string_to_cstr(%nyx_string* %3018)
  %3020 = call %nyx_string* @nyx_getenv(i8* %3019)
  %3021 = alloca %nyx_string*
  store %nyx_string* %3020, %nyx_string** %3021
  %3022 = load %nyx_string*, %nyx_string** %3021
  %3023 = getelementptr [3 x i8], [3 x i8]* @.str319, i32 0, i32 0
  %3024 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %3023, i64 2)
  %3025 = call i1 @nyx_string_equals(%nyx_string* %3022, %nyx_string* %3024)
  br i1 %3025, label %then707, label %else708
then707:
  %3026 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %3026
else708:
  br label %merge709
merge709:
  %3027 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %3027
}

define internal %nyx_string* @import_levenshtein_best(
%nyx_string* %target.param, { i64, i8* }* %candidates.param) {
  %target.ptr = alloca %nyx_string*
  store %nyx_string* %target.param, %nyx_string** %target.ptr
  %candidates.ptr = alloca { i64, i8* }*
  store { i64, i8* }* %candidates.param, { i64, i8* }** %candidates.ptr
  %3028 = load %nyx_string*, %nyx_string** %target.ptr
  %3029 = call i64 @nyx_string_byte_length(%nyx_string* %3028)
  %3030 = alloca i64
  store i64 %3029, i64* %3030
  %3031 = load i64, i64* %3030
  %3032 = icmp eq i64 %3031, 0
  br i1 %3032, label %then710, label %else711
then710:
  %3033 = getelementptr [1 x i8], [1 x i8]* @.str320, i32 0, i32 0
  %3034 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %3033, i64 0)
  ret %nyx_string* %3034
else711:
  br label %merge712
merge712:
  %3035 = getelementptr [1 x i8], [1 x i8]* @.str321, i32 0, i32 0
  %3036 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %3035, i64 0)
  %3037 = alloca %nyx_string*
  store %nyx_string* %3036, %nyx_string** %3037
  %3038 = alloca i64
  store i64 999, i64* %3038
  %3039 = alloca i64
  store i64 0, i64* %3039
  %3040 = call i8* @llvm.stacksave()
  br label %while_cond713
while_cond713:
  %3041 = load i64, i64* %3039
  %3042 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %3043 = call i64 @nyx_array_length({ i64, i8* }* %3042)
  %3044 = icmp slt i64 %3041, %3043
  br i1 %3044, label %while_body714, label %while_end715
while_body714:
  call void @llvm.stackrestore(i8* %3040)
  %3045 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %3046 = load i64, i64* %3039
  %3047 = call i64 @nyx_array_get_checked({ i64, i8* }* %3045, i64 %3046, i64 2)
  %3048 = inttoptr i64 %3047 to %nyx_string*
  %3049 = alloca %nyx_string*
  store %nyx_string* %3048, %nyx_string** %3049
  %3050 = load %nyx_string*, %nyx_string** %3049
  %3051 = call i64 @nyx_string_byte_length(%nyx_string* %3050)
  %3052 = alloca i64
  store i64 %3051, i64* %3052
  %3053 = call { i64, i8* }* @nyx_array_new_ptr()
  %3054 = alloca { i64, i8* }*
  store { i64, i8* }* %3053, { i64, i8* }** %3054
  %3055 = alloca i64
  store i64 0, i64* %3055
  %3056 = call i8* @llvm.stacksave()
  br label %while_cond716
while_cond716:
  %3057 = load i64, i64* %3055
  %3058 = load i64, i64* %3052
  %3059 = icmp sle i64 %3057, %3058
  br i1 %3059, label %while_body717, label %while_end718
while_body717:
  call void @llvm.stackrestore(i8* %3056)
  %3060 = load { i64, i8* }*, { i64, i8* }** %3054
  %3061 = load i64, i64* %3055
  call void @nyx_array_push_tagged({ i64, i8* }* %3060, i64 %3061, i64 1)
  %3062 = load i64, i64* %3055
  %3063 = add i64 %3062, 1
  store i64 %3063, i64* %3055
  br label %while_cond716
while_end718:
  %3064 = alloca i64
  store i64 1, i64* %3064
  %3065 = call i8* @llvm.stacksave()
  br label %while_cond719
while_cond719:
  %3066 = load i64, i64* %3064
  %3067 = load i64, i64* %3030
  %3068 = icmp sle i64 %3066, %3067
  br i1 %3068, label %while_body720, label %while_end721
while_body720:
  call void @llvm.stackrestore(i8* %3065)
  %3069 = call { i64, i8* }* @nyx_array_new_ptr()
  %3070 = alloca { i64, i8* }*
  store { i64, i8* }* %3069, { i64, i8* }** %3070
  %3071 = load { i64, i8* }*, { i64, i8* }** %3070
  %3072 = load i64, i64* %3064
  call void @nyx_array_push_tagged({ i64, i8* }* %3071, i64 %3072, i64 1)
  %3073 = load %nyx_string*, %nyx_string** %target.ptr
  %3074 = load i64, i64* %3064
  %3075 = sub i64 %3074, 1
  %3076 = call i8 @nyx_string_char_at(%nyx_string* %3073, i64 %3075)
  %3077 = zext i8 %3076 to i64
  %3078 = alloca i64
  store i64 %3077, i64* %3078
  store i64 1, i64* %3055
  %3079 = call i8* @llvm.stacksave()
  br label %while_cond722
while_cond722:
  %3080 = load i64, i64* %3055
  %3081 = load i64, i64* %3052
  %3082 = icmp sle i64 %3080, %3081
  br i1 %3082, label %while_body723, label %while_end724
while_body723:
  call void @llvm.stackrestore(i8* %3079)
  %3083 = load %nyx_string*, %nyx_string** %3049
  %3084 = load i64, i64* %3055
  %3085 = sub i64 %3084, 1
  %3086 = call i8 @nyx_string_char_at(%nyx_string* %3083, i64 %3085)
  %3087 = zext i8 %3086 to i64
  %3088 = alloca i64
  store i64 %3087, i64* %3088
  %3089 = alloca i64
  store i64 1, i64* %3089
  %3090 = load i64, i64* %3078
  %3091 = load i64, i64* %3088
  %3092 = icmp eq i64 %3090, %3091
  br i1 %3092, label %then725, label %else726
then725:
  store i64 0, i64* %3089
  br label %merge727
else726:
  br label %merge727
merge727:
  %3093 = load { i64, i8* }*, { i64, i8* }** %3070
  %3094 = load i64, i64* %3055
  %3095 = sub i64 %3094, 1
  %3096 = call i64 @nyx_array_get({ i64, i8* }* %3093, i64 %3095)
  %3097 = add i64 %3096, 1
  %3098 = alloca i64
  store i64 %3097, i64* %3098
  %3099 = load { i64, i8* }*, { i64, i8* }** %3054
  %3100 = load i64, i64* %3055
  %3101 = call i64 @nyx_array_get({ i64, i8* }* %3099, i64 %3100)
  %3102 = add i64 %3101, 1
  %3103 = alloca i64
  store i64 %3102, i64* %3103
  %3104 = load { i64, i8* }*, { i64, i8* }** %3054
  %3105 = load i64, i64* %3055
  %3106 = sub i64 %3105, 1
  %3107 = call i64 @nyx_array_get({ i64, i8* }* %3104, i64 %3106)
  %3108 = load i64, i64* %3089
  %3109 = add i64 %3107, %3108
  %3110 = alloca i64
  store i64 %3109, i64* %3110
  %3111 = load i64, i64* %3098
  %3112 = alloca i64
  store i64 %3111, i64* %3112
  %3113 = load i64, i64* %3103
  %3114 = load i64, i64* %3112
  %3115 = icmp slt i64 %3113, %3114
  br i1 %3115, label %then728, label %else729
then728:
  %3116 = load i64, i64* %3103
  store i64 %3116, i64* %3112
  br label %merge730
else729:
  br label %merge730
merge730:
  %3117 = load i64, i64* %3110
  %3118 = load i64, i64* %3112
  %3119 = icmp slt i64 %3117, %3118
  br i1 %3119, label %then731, label %else732
then731:
  %3120 = load i64, i64* %3110
  store i64 %3120, i64* %3112
  br label %merge733
else732:
  br label %merge733
merge733:
  %3121 = load { i64, i8* }*, { i64, i8* }** %3070
  %3122 = load i64, i64* %3112
  call void @nyx_array_push_tagged({ i64, i8* }* %3121, i64 %3122, i64 1)
  %3123 = load i64, i64* %3055
  %3124 = add i64 %3123, 1
  store i64 %3124, i64* %3055
  br label %while_cond722
while_end724:
  %3125 = load { i64, i8* }*, { i64, i8* }** %3070
  store { i64, i8* }* %3125, { i64, i8* }** %3054
  %3126 = load i64, i64* %3064
  %3127 = add i64 %3126, 1
  store i64 %3127, i64* %3064
  br label %while_cond719
while_end721:
  %3128 = load { i64, i8* }*, { i64, i8* }** %3054
  %3129 = load i64, i64* %3052
  %3130 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %3128, i64 %3129)
  %3131 = alloca i64
  store i64 %3130, i64* %3131
  %3132 = alloca i64
  store i64 3, i64* %3132
  %3133 = load i64, i64* %3030
  %3134 = sdiv i64 %3133, 2
  %3135 = alloca i64
  store i64 %3134, i64* %3135
  %3136 = load i64, i64* %3135
  %3137 = load i64, i64* %3132
  %3138 = icmp slt i64 %3136, %3137
  br i1 %3138, label %then734, label %else735
then734:
  %3139 = load i64, i64* %3135
  store i64 %3139, i64* %3132
  br label %merge736
else735:
  br label %merge736
merge736:
  %3140 = load i64, i64* %3132
  %3141 = icmp slt i64 %3140, 1
  br i1 %3141, label %then737, label %else738
then737:
  store i64 1, i64* %3132
  br label %merge739
else738:
  br label %merge739
merge739:
  %3142 = load i64, i64* %3131
  %3143 = load i64, i64* %3132
  %3144 = icmp sle i64 %3142, %3143
  br i1 %3144, label %then740, label %else741
then740:
  %3145 = load i64, i64* %3131
  %3146 = load i64, i64* %3038
  %3147 = icmp slt i64 %3145, %3146
  br i1 %3147, label %then743, label %else744
then743:
  %3148 = load i64, i64* %3131
  store i64 %3148, i64* %3038
  %3149 = load %nyx_string*, %nyx_string** %3049
  store %nyx_string* %3149, %nyx_string** %3037
  br label %merge745
else744:
  br label %merge745
merge745:
  br label %merge742
else741:
  br label %merge742
merge742:
  %3150 = load i64, i64* %3039
  %3151 = add i64 %3150, 1
  store i64 %3151, i64* %3039
  br label %while_cond713
while_end715:
  %3152 = load %nyx_string*, %nyx_string** %3037
  ret %nyx_string* %3152
}

define internal %nyx_string* @find_std_dir(
) {
  %3153 = getelementptr [4 x i8], [4 x i8]* @.str322, i32 0, i32 0
  %3154 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %3153, i64 3)
  %3155 = call i8* @nyx_string_to_cstr(%nyx_string* %3154)
  %3156 = call i1 @nyx_file_exists(i8* %3155)
  br i1 %3156, label %then746, label %else747
then746:
  %3157 = getelementptr [4 x i8], [4 x i8]* @.str323, i32 0, i32 0
  %3158 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %3157, i64 3)
  ret %nyx_string* %3158
else747:
  br label %merge748
merge748:
  %3159 = getelementptr [9 x i8], [9 x i8]* @.str324, i32 0, i32 0
  %3160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %3159, i64 8)
  %3161 = call i8* @nyx_string_to_cstr(%nyx_string* %3160)
  %3162 = call %nyx_string* @nyx_getenv(i8* %3161)
  %3163 = alloca %nyx_string*
  store %nyx_string* %3162, %nyx_string** %3163
  %3164 = alloca i1
  store i1 false, i1* %3164
  %3165 = load %nyx_string*, %nyx_string** %3163
  %3166 = getelementptr [1 x i8], [1 x i8]* @.str325, i32 0, i32 0
  %3167 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %3166, i64 0)
  %3168 = call i1 @nyx_string_equals(%nyx_string* %3165, %nyx_string* %3167)
  %3169 = xor i1 %3168, true
  br i1 %3169, label %sc_and_rhs749, label %sc_and_end750
sc_and_rhs749:
  %3170 = load %nyx_string*, %nyx_string** %3163
  %3171 = getelementptr [5 x i8], [5 x i8]* @.str326, i32 0, i32 0
  %3172 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %3171, i64 4)
  %3173 = call %nyx_string* @nyx_string_concat(%nyx_string* %3170, %nyx_string* %3172)
  %3174 = call i8* @nyx_string_to_cstr(%nyx_string* %3173)
  %3175 = call i1 @nyx_file_exists(i8* %3174)
  store i1 %3175, i1* %3164
  br label %sc_and_end750
sc_and_end750:
  %3176 = load i1, i1* %3164
  br i1 %3176, label %then751, label %else752
then751:
  %3177 = load %nyx_string*, %nyx_string** %3163
  %3178 = getelementptr [5 x i8], [5 x i8]* @.str327, i32 0, i32 0
  %3179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %3178, i64 4)
  %3180 = call %nyx_string* @nyx_string_concat(%nyx_string* %3177, %nyx_string* %3179)
  ret %nyx_string* %3180
else752:
  br label %merge753
merge753:
  %3181 = call %nyx_string* @dir_usuario_res()
  %3182 = alloca %nyx_string*
  store %nyx_string* %3181, %nyx_string** %3182
  %3183 = alloca i1
  store i1 false, i1* %3183
  %3184 = load %nyx_string*, %nyx_string** %3182
  %3185 = getelementptr [1 x i8], [1 x i8]* @.str328, i32 0, i32 0
  %3186 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %3185, i64 0)
  %3187 = call i1 @nyx_string_equals(%nyx_string* %3184, %nyx_string* %3186)
  %3188 = xor i1 %3187, true
  br i1 %3188, label %sc_and_rhs754, label %sc_and_end755
sc_and_rhs754:
  %3189 = load %nyx_string*, %nyx_string** %3182
  %3190 = getelementptr [10 x i8], [10 x i8]* @.str329, i32 0, i32 0
  %3191 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %3190, i64 9)
  %3192 = call %nyx_string* @nyx_string_concat(%nyx_string* %3189, %nyx_string* %3191)
  %3193 = call i8* @nyx_string_to_cstr(%nyx_string* %3192)
  %3194 = call i1 @nyx_file_exists(i8* %3193)
  store i1 %3194, i1* %3183
  br label %sc_and_end755
sc_and_end755:
  %3195 = load i1, i1* %3183
  br i1 %3195, label %then756, label %else757
then756:
  %3196 = load %nyx_string*, %nyx_string** %3182
  %3197 = getelementptr [10 x i8], [10 x i8]* @.str330, i32 0, i32 0
  %3198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %3197, i64 9)
  %3199 = call %nyx_string* @nyx_string_concat(%nyx_string* %3196, %nyx_string* %3198)
  ret %nyx_string* %3199
else757:
  br label %merge758
merge758:
  %3200 = getelementptr [1 x i8], [1 x i8]* @.str331, i32 0, i32 0
  %3201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %3200, i64 0)
  ret %nyx_string* %3201
}

define internal { i64, i8* }* @nx_basenames_in(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %3202 = call { i64, i8* }* @nyx_array_new_ptr()
  %3203 = alloca { i64, i8* }*
  store { i64, i8* }* %3202, { i64, i8* }** %3203
  %3204 = alloca i1
  store i1 true, i1* %3204
  %3205 = load %nyx_string*, %nyx_string** %dir.ptr
  %3206 = getelementptr [1 x i8], [1 x i8]* @.str332, i32 0, i32 0
  %3207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %3206, i64 0)
  %3208 = call i1 @nyx_string_equals(%nyx_string* %3205, %nyx_string* %3207)
  br i1 %3208, label %sc_or_end760, label %sc_or_rhs759
sc_or_rhs759:
  %3209 = load %nyx_string*, %nyx_string** %dir.ptr
  %3210 = call i8* @nyx_string_to_cstr(%nyx_string* %3209)
  %3211 = call i1 @nyx_file_exists(i8* %3210)
  %3212 = xor i1 %3211, true
  store i1 %3212, i1* %3204
  br label %sc_or_end760
sc_or_end760:
  %3213 = load i1, i1* %3204
  br i1 %3213, label %then761, label %else762
then761:
  %3214 = load { i64, i8* }*, { i64, i8* }** %3203
  ret { i64, i8* }* %3214
else762:
  br label %merge763
merge763:
  %3215 = load %nyx_string*, %nyx_string** %dir.ptr
  %3216 = call i8* @nyx_string_to_cstr(%nyx_string* %3215)
  %3217 = call { i64, i8* }* @nyx_readdir(i8* %3216)
  %3218 = alloca { i64, i8* }*
  store { i64, i8* }* %3217, { i64, i8* }** %3218
  %3219 = alloca i64
  store i64 0, i64* %3219
  %3220 = getelementptr [4 x i8], [4 x i8]* @.str333, i32 0, i32 0
  %3221 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %3220, i64 3)
  %3222 = alloca %nyx_string*
  store %nyx_string* %3221, %nyx_string** %3222
  %3223 = call i8* @llvm.stacksave()
  br label %while_cond764
while_cond764:
  %3224 = load i64, i64* %3219
  %3225 = load { i64, i8* }*, { i64, i8* }** %3218
  %3226 = call i64 @nyx_array_length({ i64, i8* }* %3225)
  %3227 = icmp slt i64 %3224, %3226
  br i1 %3227, label %while_body765, label %while_end766
while_body765:
  call void @llvm.stackrestore(i8* %3223)
  %3228 = load { i64, i8* }*, { i64, i8* }** %3218
  %3229 = load i64, i64* %3219
  %3230 = call i64 @nyx_array_get_checked({ i64, i8* }* %3228, i64 %3229, i64 2)
  %3231 = inttoptr i64 %3230 to %nyx_string*
  %3232 = alloca %nyx_string*
  store %nyx_string* %3231, %nyx_string** %3232
  %3233 = load %nyx_string*, %nyx_string** %3232
  %3234 = load %nyx_string*, %nyx_string** %3222
  %3235 = call i1 @nyx_string_ends_with(%nyx_string* %3233, %nyx_string* %3234)
  br i1 %3235, label %then767, label %else768
then767:
  %3236 = load { i64, i8* }*, { i64, i8* }** %3203
  %3237 = load %nyx_string*, %nyx_string** %3232
  %3238 = load %nyx_string*, %nyx_string** %3232
  %3239 = call i64 @nyx_string_byte_length(%nyx_string* %3238)
  %3240 = sub i64 %3239, 3
  %3241 = call %nyx_string* @nyx_string_substring(%nyx_string* %3237, i64 0, i64 %3240)
  %3242 = ptrtoint %nyx_string* %3241 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %3236, i64 %3242, i64 2)
  br label %merge769
else768:
  br label %merge769
merge769:
  %3243 = load i64, i64* %3219
  %3244 = add i64 %3243, 1
  store i64 %3244, i64* %3219
  br label %while_cond764
while_end766:
  %3245 = load { i64, i8* }*, { i64, i8* }** %3203
  ret { i64, i8* }* %3245
}

define internal %nyx_string* @nyx_json_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %3246 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %3247 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %3246, i64 0)
  %3248 = alloca %nyx_string*
  store %nyx_string* %3247, %nyx_string** %3248
  %3249 = alloca i64
  store i64 0, i64* %3249
  %3250 = alloca i64
  store i64 0, i64* %3250
  %3251 = load %nyx_string*, %nyx_string** %s.ptr
  %3252 = call i64 @nyx_string_byte_length(%nyx_string* %3251)
  %3253 = alloca i64
  store i64 %3252, i64* %3253
  %3254 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %3255 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %3254, i64 0)
  %3256 = alloca %nyx_string*
  store %nyx_string* %3255, %nyx_string** %3256
  %3257 = getelementptr [3 x i8], [3 x i8]* @.str336, i32 0, i32 0
  %3258 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %3257, i64 2)
  %3259 = alloca %nyx_string*
  store %nyx_string* %3258, %nyx_string** %3259
  %3260 = getelementptr [3 x i8], [3 x i8]* @.str337, i32 0, i32 0
  %3261 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %3260, i64 2)
  %3262 = alloca %nyx_string*
  store %nyx_string* %3261, %nyx_string** %3262
  %3263 = getelementptr [3 x i8], [3 x i8]* @.str338, i32 0, i32 0
  %3264 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %3263, i64 2)
  %3265 = alloca %nyx_string*
  store %nyx_string* %3264, %nyx_string** %3265
  %3266 = getelementptr [3 x i8], [3 x i8]* @.str339, i32 0, i32 0
  %3267 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %3266, i64 2)
  %3268 = alloca %nyx_string*
  store %nyx_string* %3267, %nyx_string** %3268
  %3269 = getelementptr [3 x i8], [3 x i8]* @.str340, i32 0, i32 0
  %3270 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %3269, i64 2)
  %3271 = alloca %nyx_string*
  store %nyx_string* %3270, %nyx_string** %3271
  %3272 = call i8* @llvm.stacksave()
  br label %while_cond770
while_cond770:
  %3273 = load i64, i64* %3250
  %3274 = load i64, i64* %3253
  %3275 = icmp slt i64 %3273, %3274
  br i1 %3275, label %while_body771, label %while_end772
while_body771:
  call void @llvm.stackrestore(i8* %3272)
  %3276 = load %nyx_string*, %nyx_string** %s.ptr
  %3277 = load i64, i64* %3250
  %3278 = call i8 @nyx_string_char_at(%nyx_string* %3276, i64 %3277)
  %3279 = zext i8 %3278 to i64
  %3280 = alloca i64
  store i64 %3279, i64* %3280
  %3281 = load %nyx_string*, %nyx_string** %3256
  %3282 = alloca %nyx_string*
  store %nyx_string* %3281, %nyx_string** %3282
  %3283 = load i64, i64* %3280
  %3284 = icmp eq i64 %3283, 34
  br i1 %3284, label %then773, label %else774
then773:
  %3285 = load %nyx_string*, %nyx_string** %3259
  store %nyx_string* %3285, %nyx_string** %3282
  br label %merge775
else774:
  br label %merge775
merge775:
  %3286 = load i64, i64* %3280
  %3287 = icmp eq i64 %3286, 92
  br i1 %3287, label %then776, label %else777
then776:
  %3288 = load %nyx_string*, %nyx_string** %3262
  store %nyx_string* %3288, %nyx_string** %3282
  br label %merge778
else777:
  br label %merge778
merge778:
  %3289 = load i64, i64* %3280
  %3290 = icmp eq i64 %3289, 10
  br i1 %3290, label %then779, label %else780
then779:
  %3291 = load %nyx_string*, %nyx_string** %3265
  store %nyx_string* %3291, %nyx_string** %3282
  br label %merge781
else780:
  br label %merge781
merge781:
  %3292 = load i64, i64* %3280
  %3293 = icmp eq i64 %3292, 13
  br i1 %3293, label %then782, label %else783
then782:
  %3294 = load %nyx_string*, %nyx_string** %3268
  store %nyx_string* %3294, %nyx_string** %3282
  br label %merge784
else783:
  br label %merge784
merge784:
  %3295 = load i64, i64* %3280
  %3296 = icmp eq i64 %3295, 9
  br i1 %3296, label %then785, label %else786
then785:
  %3297 = load %nyx_string*, %nyx_string** %3271
  store %nyx_string* %3297, %nyx_string** %3282
  br label %merge787
else786:
  br label %merge787
merge787:
  %3298 = load %nyx_string*, %nyx_string** %3282
  %3299 = load %nyx_string*, %nyx_string** %3256
  %3300 = call i1 @nyx_string_equals(%nyx_string* %3298, %nyx_string* %3299)
  %3301 = xor i1 %3300, true
  br i1 %3301, label %then788, label %else789
then788:
  %3302 = load %nyx_string*, %nyx_string** %3248
  %3303 = load %nyx_string*, %nyx_string** %s.ptr
  %3304 = load i64, i64* %3249
  %3305 = load i64, i64* %3250
  %3306 = call %nyx_string* @nyx_string_substring(%nyx_string* %3303, i64 %3304, i64 %3305)
  %3307 = call %nyx_string* @nyx_string_concat(%nyx_string* %3302, %nyx_string* %3306)
  %3308 = load %nyx_string*, %nyx_string** %3282
  %3309 = call %nyx_string* @nyx_string_concat(%nyx_string* %3307, %nyx_string* %3308)
  store %nyx_string* %3309, %nyx_string** %3248
  %3310 = load i64, i64* %3250
  %3311 = add i64 %3310, 1
  store i64 %3311, i64* %3249
  br label %merge790
else789:
  br label %merge790
merge790:
  %3312 = load i64, i64* %3250
  %3313 = add i64 %3312, 1
  store i64 %3313, i64* %3250
  br label %while_cond770
while_end772:
  %3314 = load i64, i64* %3249
  %3315 = icmp eq i64 %3314, 0
  br i1 %3315, label %then791, label %else792
then791:
  %3316 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %3316
else792:
  br label %merge793
merge793:
  %3317 = load %nyx_string*, %nyx_string** %3248
  %3318 = load %nyx_string*, %nyx_string** %s.ptr
  %3319 = load i64, i64* %3249
  %3320 = load i64, i64* %3253
  %3321 = call %nyx_string* @nyx_string_substring(%nyx_string* %3318, i64 %3319, i64 %3320)
  %3322 = call %nyx_string* @nyx_string_concat(%nyx_string* %3317, %nyx_string* %3321)
  ret %nyx_string* %3322
}

define i64 @set_resolve_soft_errors(
i1 %on.param) {
  %on.ptr = alloca i1
  store i1 %on.param, i1* %on.ptr
  %3323 = load i1, i1* %on.ptr
  store i1 %3323, i1* @g_resolve_soft
  store i64 0, i64* @g_resolve_errors
  ret i64 0
}

define i64 @get_resolve_error_count(
) {
  %3324 = load i64, i64* @g_resolve_errors
  ret i64 %3324
}

define internal i64 @import_not_found(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %3325 = load %nyx_string*, %nyx_string** %path.ptr
  %3326 = call %nyx_string* @base_name_from_path(%nyx_string* %3325)
  %3327 = alloca %nyx_string*
  store %nyx_string* %3326, %nyx_string** %3327
  %3328 = call { i64, i8* }* @nyx_array_new_ptr()
  %3329 = alloca { i64, i8* }*
  store { i64, i8* }* %3328, { i64, i8* }** %3329
  %3330 = call { i64, i8* }* @nyx_array_new_ptr()
  %3331 = alloca { i64, i8* }*
  store { i64, i8* }* %3330, { i64, i8* }** %3331
  %3332 = getelementptr [16 x i8], [16 x i8]* @.str341, i32 0, i32 0
  %3333 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %3332, i64 15)
  %3334 = call i8* @nyx_string_to_cstr(%nyx_string* %3333)
  %3335 = call %nyx_string* @nyx_getenv(i8* %3334)
  %3336 = alloca %nyx_string*
  store %nyx_string* %3335, %nyx_string** %3336
  %3337 = load %nyx_string*, %nyx_string** %path.ptr
  %3338 = getelementptr [5 x i8], [5 x i8]* @.str342, i32 0, i32 0
  %3339 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %3338, i64 4)
  %3340 = call i1 @nyx_string_starts_with(%nyx_string* %3337, %nyx_string* %3339)
  br i1 %3340, label %then794, label %else795
then794:
  %3341 = call %nyx_string* @find_std_dir()
  %3342 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %3341)
  store { i64, i8* }* %3342, { i64, i8* }** %3329
  br label %merge796
else795:
  %3343 = load %nyx_string*, %nyx_string** %path.ptr
  %3344 = getelementptr [5 x i8], [5 x i8]* @.str343, i32 0, i32 0
  %3345 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %3344, i64 4)
  %3346 = call i1 @nyx_string_starts_with(%nyx_string* %3343, %nyx_string* %3345)
  br i1 %3346, label %then797, label %else798
then797:
  %3347 = load %nyx_string*, %nyx_string** %3336
  %3348 = getelementptr [1 x i8], [1 x i8]* @.str344, i32 0, i32 0
  %3349 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %3348, i64 0)
  %3350 = call i1 @nyx_string_equals(%nyx_string* %3347, %nyx_string* %3349)
  %3351 = xor i1 %3350, true
  br i1 %3351, label %then800, label %else801
then800:
  %3352 = load %nyx_string*, %nyx_string** %3336
  %3353 = getelementptr [5 x i8], [5 x i8]* @.str345, i32 0, i32 0
  %3354 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %3353, i64 4)
  %3355 = call %nyx_string* @nyx_string_concat(%nyx_string* %3352, %nyx_string* %3354)
  %3356 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %3355)
  store { i64, i8* }* %3356, { i64, i8* }** %3331
  br label %merge802
else801:
  br label %merge802
merge802:
  br label %merge799
else798:
  %3357 = call %nyx_string* @find_std_dir()
  %3358 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %3357)
  store { i64, i8* }* %3358, { i64, i8* }** %3329
  %3359 = load %nyx_string*, %nyx_string** %3336
  %3360 = getelementptr [1 x i8], [1 x i8]* @.str346, i32 0, i32 0
  %3361 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %3360, i64 0)
  %3362 = call i1 @nyx_string_equals(%nyx_string* %3359, %nyx_string* %3361)
  %3363 = xor i1 %3362, true
  br i1 %3363, label %then803, label %else804
then803:
  %3364 = load %nyx_string*, %nyx_string** %3336
  %3365 = getelementptr [5 x i8], [5 x i8]* @.str347, i32 0, i32 0
  %3366 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %3365, i64 4)
  %3367 = call %nyx_string* @nyx_string_concat(%nyx_string* %3364, %nyx_string* %3366)
  %3368 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %3367)
  store { i64, i8* }* %3368, { i64, i8* }** %3331
  br label %merge805
else804:
  br label %merge805
merge805:
  br label %merge799
merge799:
  br label %merge796
merge796:
  %3369 = call { i64, i8* }* @nyx_array_new_ptr()
  %3370 = alloca { i64, i8* }*
  store { i64, i8* }* %3369, { i64, i8* }** %3370
  %3371 = alloca i64
  store i64 0, i64* %3371
  %3372 = call i8* @llvm.stacksave()
  br label %while_cond806
while_cond806:
  %3373 = load i64, i64* %3371
  %3374 = load { i64, i8* }*, { i64, i8* }** %3329
  %3375 = call i64 @nyx_array_length({ i64, i8* }* %3374)
  %3376 = icmp slt i64 %3373, %3375
  br i1 %3376, label %while_body807, label %while_end808
while_body807:
  call void @llvm.stackrestore(i8* %3372)
  %3377 = load { i64, i8* }*, { i64, i8* }** %3370
  %3378 = load { i64, i8* }*, { i64, i8* }** %3329
  %3379 = load i64, i64* %3371
  %3380 = call i64 @nyx_array_get({ i64, i8* }* %3378, i64 %3379)
  %3381 = load { i64, i8* }*, { i64, i8* }** %3329
  %3382 = load i64, i64* %3371
  %3383 = call i64 @nyx_array_get_tag({ i64, i8* }* %3381, i64 %3382)
  call void @nyx_array_push_tagged({ i64, i8* }* %3377, i64 %3380, i64 %3383)
  %3384 = load i64, i64* %3371
  %3385 = add i64 %3384, 1
  store i64 %3385, i64* %3371
  br label %while_cond806
while_end808:
  store i64 0, i64* %3371
  %3386 = call i8* @llvm.stacksave()
  br label %while_cond809
while_cond809:
  %3387 = load i64, i64* %3371
  %3388 = load { i64, i8* }*, { i64, i8* }** %3331
  %3389 = call i64 @nyx_array_length({ i64, i8* }* %3388)
  %3390 = icmp slt i64 %3387, %3389
  br i1 %3390, label %while_body810, label %while_end811
while_body810:
  call void @llvm.stackrestore(i8* %3386)
  %3391 = load { i64, i8* }*, { i64, i8* }** %3370
  %3392 = load { i64, i8* }*, { i64, i8* }** %3331
  %3393 = load i64, i64* %3371
  %3394 = call i64 @nyx_array_get({ i64, i8* }* %3392, i64 %3393)
  %3395 = load { i64, i8* }*, { i64, i8* }** %3331
  %3396 = load i64, i64* %3371
  %3397 = call i64 @nyx_array_get_tag({ i64, i8* }* %3395, i64 %3396)
  call void @nyx_array_push_tagged({ i64, i8* }* %3391, i64 %3394, i64 %3397)
  %3398 = load i64, i64* %3371
  %3399 = add i64 %3398, 1
  store i64 %3399, i64* %3371
  br label %while_cond809
while_end811:
  %3400 = getelementptr [1 x i8], [1 x i8]* @.str348, i32 0, i32 0
  %3401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %3400, i64 0)
  %3402 = alloca %nyx_string*
  store %nyx_string* %3401, %nyx_string** %3402
  %3403 = alloca i1
  store i1 false, i1* %3403
  %3404 = load %nyx_string*, %nyx_string** %3327
  %3405 = getelementptr [1 x i8], [1 x i8]* @.str349, i32 0, i32 0
  %3406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %3405, i64 0)
  %3407 = call i1 @nyx_string_equals(%nyx_string* %3404, %nyx_string* %3406)
  %3408 = xor i1 %3407, true
  br i1 %3408, label %sc_and_rhs812, label %sc_and_end813
sc_and_rhs812:
  %3409 = load { i64, i8* }*, { i64, i8* }** %3370
  %3410 = call i64 @nyx_array_length({ i64, i8* }* %3409)
  %3411 = icmp sgt i64 %3410, 0
  store i1 %3411, i1* %3403
  br label %sc_and_end813
sc_and_end813:
  %3412 = load i1, i1* %3403
  br i1 %3412, label %then814, label %else815
then814:
  %3413 = load %nyx_string*, %nyx_string** %3327
  %3414 = load { i64, i8* }*, { i64, i8* }** %3370
  %3415 = call %nyx_string* @import_levenshtein_best(%nyx_string* %3413, { i64, i8* }* %3414)
  store %nyx_string* %3415, %nyx_string** %3402
  br label %merge816
else815:
  br label %merge816
merge816:
  %3416 = getelementptr [1 x i8], [1 x i8]* @.str350, i32 0, i32 0
  %3417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %3416, i64 0)
  %3418 = alloca %nyx_string*
  store %nyx_string* %3417, %nyx_string** %3418
  %3419 = load %nyx_string*, %nyx_string** %path.ptr
  %3420 = getelementptr [5 x i8], [5 x i8]* @.str351, i32 0, i32 0
  %3421 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %3420, i64 4)
  %3422 = call i1 @nyx_string_starts_with(%nyx_string* %3419, %nyx_string* %3421)
  %3423 = xor i1 %3422, true
  br i1 %3423, label %then817, label %else818
then817:
  %3424 = getelementptr [5 x i8], [5 x i8]* @.str352, i32 0, i32 0
  %3425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %3424, i64 4)
  %3426 = load %nyx_string*, %nyx_string** %path.ptr
  %3427 = call %nyx_string* @nyx_string_concat(%nyx_string* %3425, %nyx_string* %3426)
  store %nyx_string* %3427, %nyx_string** %3418
  br label %merge819
else818:
  br label %merge819
merge819:
  %3428 = load %nyx_string*, %nyx_string** %3402
  %3429 = getelementptr [1 x i8], [1 x i8]* @.str353, i32 0, i32 0
  %3430 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %3429, i64 0)
  %3431 = call i1 @nyx_string_equals(%nyx_string* %3428, %nyx_string* %3430)
  %3432 = xor i1 %3431, true
  br i1 %3432, label %then820, label %else821
then820:
  %3433 = load %nyx_string*, %nyx_string** %path.ptr
  %3434 = getelementptr [5 x i8], [5 x i8]* @.str354, i32 0, i32 0
  %3435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %3434, i64 4)
  %3436 = call i1 @nyx_string_starts_with(%nyx_string* %3433, %nyx_string* %3435)
  br i1 %3436, label %then823, label %else824
then823:
  %3437 = getelementptr [5 x i8], [5 x i8]* @.str355, i32 0, i32 0
  %3438 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %3437, i64 4)
  %3439 = load %nyx_string*, %nyx_string** %3402
  %3440 = call %nyx_string* @nyx_string_concat(%nyx_string* %3438, %nyx_string* %3439)
  store %nyx_string* %3440, %nyx_string** %3418
  br label %merge825
else824:
  %3441 = load %nyx_string*, %nyx_string** %path.ptr
  %3442 = getelementptr [5 x i8], [5 x i8]* @.str356, i32 0, i32 0
  %3443 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %3442, i64 4)
  %3444 = call i1 @nyx_string_starts_with(%nyx_string* %3441, %nyx_string* %3443)
  br i1 %3444, label %then826, label %else827
then826:
  %3445 = getelementptr [5 x i8], [5 x i8]* @.str357, i32 0, i32 0
  %3446 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %3445, i64 4)
  %3447 = load %nyx_string*, %nyx_string** %3402
  %3448 = call %nyx_string* @nyx_string_concat(%nyx_string* %3446, %nyx_string* %3447)
  store %nyx_string* %3448, %nyx_string** %3418
  br label %merge828
else827:
  %3449 = load { i64, i8* }*, { i64, i8* }** %3329
  %3450 = load %nyx_string*, %nyx_string** %3402
  %3451 = ptrtoint %nyx_string* %3450 to i64
  %3452 = call i64 @nyx_array_contains_tagged({ i64, i8* }* %3449, i64 %3451, i64 2)
  %3453 = trunc i64 %3452 to i1
  br i1 %3453, label %then829, label %else830
then829:
  %3454 = getelementptr [5 x i8], [5 x i8]* @.str358, i32 0, i32 0
  %3455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %3454, i64 4)
  %3456 = load %nyx_string*, %nyx_string** %3402
  %3457 = call %nyx_string* @nyx_string_concat(%nyx_string* %3455, %nyx_string* %3456)
  store %nyx_string* %3457, %nyx_string** %3418
  br label %merge831
else830:
  %3458 = getelementptr [5 x i8], [5 x i8]* @.str359, i32 0, i32 0
  %3459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %3458, i64 4)
  %3460 = load %nyx_string*, %nyx_string** %3402
  %3461 = call %nyx_string* @nyx_string_concat(%nyx_string* %3459, %nyx_string* %3460)
  store %nyx_string* %3461, %nyx_string** %3418
  br label %merge831
merge831:
  br label %merge828
merge828:
  br label %merge825
merge825:
  br label %merge822
else821:
  br label %merge822
merge822:
  %3462 = alloca i1
  store i1 1, i1* %3462
  %3463 = load %nyx_string*, %nyx_string** %3418
  %3464 = load %nyx_string*, %nyx_string** %path.ptr
  %3465 = call i1 @nyx_string_equals(%nyx_string* %3463, %nyx_string* %3464)
  br i1 %3465, label %then832, label %else833
then832:
  store i1 0, i1* %3462
  br label %merge834
else833:
  br label %merge834
merge834:
  %3466 = load %nyx_string*, %nyx_string** %3418
  %3467 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %3468 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %3467, i64 0)
  %3469 = call i1 @nyx_string_equals(%nyx_string* %3466, %nyx_string* %3468)
  br i1 %3469, label %then835, label %else836
then835:
  store i1 0, i1* %3462
  br label %merge837
else836:
  br label %merge837
merge837:
  %3470 = getelementptr [9 x i8], [9 x i8]* @.str361, i32 0, i32 0
  %3471 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %3470, i64 8)
  %3472 = call i8* @nyx_string_to_cstr(%nyx_string* %3471)
  %3473 = call %nyx_string* @nyx_getenv(i8* %3472)
  %3474 = getelementptr [5 x i8], [5 x i8]* @.str362, i32 0, i32 0
  %3475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %3474, i64 4)
  %3476 = call i1 @nyx_string_equals(%nyx_string* %3473, %nyx_string* %3475)
  br i1 %3476, label %then838, label %else839
then838:
  %3477 = getelementptr [27 x i8], [27 x i8]* @.str363, i32 0, i32 0
  %3478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %3477, i64 26)
  %3479 = load %nyx_string*, %nyx_string** %path.ptr
  %3480 = call %nyx_string* @nyx_string_concat(%nyx_string* %3478, %nyx_string* %3479)
  %3481 = getelementptr [44 x i8], [44 x i8]* @.str364, i32 0, i32 0
  %3482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %3481, i64 43)
  %3483 = call %nyx_string* @nyx_string_concat(%nyx_string* %3480, %nyx_string* %3482)
  %3484 = alloca %nyx_string*
  store %nyx_string* %3483, %nyx_string** %3484
  %3485 = getelementptr [55 x i8], [55 x i8]* @.str365, i32 0, i32 0
  %3486 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %3485, i64 54)
  %3487 = alloca %nyx_string*
  store %nyx_string* %3486, %nyx_string** %3487
  %3488 = load %nyx_string*, %nyx_string** %3487
  %3489 = getelementptr [13 x i8], [13 x i8]* @.str366, i32 0, i32 0
  %3490 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %3489, i64 12)
  %3491 = call %nyx_string* @nyx_string_concat(%nyx_string* %3488, %nyx_string* %3490)
  %3492 = load %nyx_string*, %nyx_string** %3484
  %3493 = call %nyx_string* @nyx_json_escape(%nyx_string* %3492)
  %3494 = call %nyx_string* @nyx_string_concat(%nyx_string* %3491, %nyx_string* %3493)
  %3495 = getelementptr [2 x i8], [2 x i8]* @.str367, i32 0, i32 0
  %3496 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %3495, i64 1)
  %3497 = call %nyx_string* @nyx_string_concat(%nyx_string* %3494, %nyx_string* %3496)
  store %nyx_string* %3497, %nyx_string** %3487
  %3498 = load i1, i1* %3462
  br i1 %3498, label %then841, label %else842
then841:
  %3499 = load %nyx_string*, %nyx_string** %3487
  %3500 = getelementptr [16 x i8], [16 x i8]* @.str368, i32 0, i32 0
  %3501 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %3500, i64 15)
  %3502 = call %nyx_string* @nyx_string_concat(%nyx_string* %3499, %nyx_string* %3501)
  %3503 = load %nyx_string*, %nyx_string** %3418
  %3504 = call %nyx_string* @nyx_json_escape(%nyx_string* %3503)
  %3505 = call %nyx_string* @nyx_string_concat(%nyx_string* %3502, %nyx_string* %3504)
  %3506 = getelementptr [2 x i8], [2 x i8]* @.str369, i32 0, i32 0
  %3507 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %3506, i64 1)
  %3508 = call %nyx_string* @nyx_string_concat(%nyx_string* %3505, %nyx_string* %3507)
  store %nyx_string* %3508, %nyx_string** %3487
  br label %merge843
else842:
  br label %merge843
merge843:
  %3509 = load %nyx_string*, %nyx_string** %3487
  %3510 = getelementptr [2 x i8], [2 x i8]* @.str370, i32 0, i32 0
  %3511 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %3510, i64 1)
  %3512 = call %nyx_string* @nyx_string_concat(%nyx_string* %3509, %nyx_string* %3511)
  store %nyx_string* %3512, %nyx_string** %3487
  %3513 = load %nyx_string*, %nyx_string** %3487
  %3514 = call i8* @nyx_string_to_cstr(%nyx_string* %3513)
  call void @nyx_print_string(i8* %3514)
  %3515 = load i64, i64* @g_resolve_errors
  %3516 = add i64 %3515, 1
  store i64 %3516, i64* @g_resolve_errors
  %3517 = load i1, i1* @g_resolve_soft
  %3518 = xor i1 %3517, true
  br i1 %3518, label %then844, label %else845
then844:
  call void @nyx_exit(i64 1)
  br label %merge846
else845:
  br label %merge846
merge846:
  ret i64 1
else839:
  br label %merge840
merge840:
  %3519 = getelementptr [49 x i8], [49 x i8]* @.str371, i32 0, i32 0
  %3520 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %3519, i64 48)
  %3521 = load %nyx_string*, %nyx_string** %path.ptr
  %3522 = call %nyx_string* @nyx_string_concat(%nyx_string* %3520, %nyx_string* %3521)
  %3523 = getelementptr [41 x i8], [41 x i8]* @.str372, i32 0, i32 0
  %3524 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %3523, i64 40)
  %3525 = call %nyx_string* @nyx_string_concat(%nyx_string* %3522, %nyx_string* %3524)
  %3526 = getelementptr [44 x i8], [44 x i8]* @.str373, i32 0, i32 0
  %3527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %3526, i64 43)
  %3528 = load %nyx_string*, %nyx_string** %path.ptr
  %3529 = call %nyx_string* @nyx_string_concat(%nyx_string* %3527, %nyx_string* %3528)
  %3530 = getelementptr [44 x i8], [44 x i8]* @.str374, i32 0, i32 0
  %3531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %3530, i64 43)
  %3532 = call %nyx_string* @nyx_string_concat(%nyx_string* %3529, %nyx_string* %3531)
  %3533 = call %nyx_string* @nyx_msg(%nyx_string* %3525, %nyx_string* %3532)
  %3534 = call i8* @nyx_string_to_cstr(%nyx_string* %3533)
  call void @nyx_print_string(i8* %3534)
  %3535 = load i1, i1* %3462
  br i1 %3535, label %then847, label %else848
then847:
  %3536 = getelementptr [26 x i8], [26 x i8]* @.str375, i32 0, i32 0
  %3537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %3536, i64 25)
  %3538 = load %nyx_string*, %nyx_string** %3418
  %3539 = call %nyx_string* @nyx_string_concat(%nyx_string* %3537, %nyx_string* %3538)
  %3540 = getelementptr [3 x i8], [3 x i8]* @.str376, i32 0, i32 0
  %3541 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %3540, i64 2)
  %3542 = call %nyx_string* @nyx_string_concat(%nyx_string* %3539, %nyx_string* %3541)
  %3543 = getelementptr [22 x i8], [22 x i8]* @.str377, i32 0, i32 0
  %3544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %3543, i64 21)
  %3545 = load %nyx_string*, %nyx_string** %3418
  %3546 = call %nyx_string* @nyx_string_concat(%nyx_string* %3544, %nyx_string* %3545)
  %3547 = getelementptr [3 x i8], [3 x i8]* @.str378, i32 0, i32 0
  %3548 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %3547, i64 2)
  %3549 = call %nyx_string* @nyx_string_concat(%nyx_string* %3546, %nyx_string* %3548)
  %3550 = call %nyx_string* @nyx_msg(%nyx_string* %3542, %nyx_string* %3549)
  %3551 = call i8* @nyx_string_to_cstr(%nyx_string* %3550)
  call void @nyx_print_string(i8* %3551)
  br label %merge849
else848:
  br label %merge849
merge849:
  %3552 = load i64, i64* @g_resolve_errors
  %3553 = add i64 %3552, 1
  store i64 %3553, i64* @g_resolve_errors
  %3554 = load i1, i1* @g_resolve_soft
  %3555 = xor i1 %3554, true
  br i1 %3555, label %then850, label %else851
then850:
  call void @nyx_exit(i64 1)
  br label %merge852
else851:
  br label %merge852
merge852:
  ret i64 1
}


attributes #0 = { returns_twice }

