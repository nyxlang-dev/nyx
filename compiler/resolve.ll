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
  %t9 = alloca %nyx_string*
  %t1 = call %nyx_string* @nyx_host_os()
  %t2 = getelementptr [8 x i8], [8 x i8]* @.str0, i32 0, i32 0
  %t3 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str0.c, i8* %t2, i64 7)
  %t4 = call i1 @nyx_string_equals(%nyx_string* %t1, %nyx_string* %t3)
  br i1 %t4, label %then0, label %else1
then0:
  %t5 = getelementptr [12 x i8], [12 x i8]* @.str1, i32 0, i32 0
  %t6 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str1.c, i8* %t5, i64 11)
  %t7 = call i8* @nyx_string_to_cstr(%nyx_string* %t6)
  %t8 = call %nyx_string* @nyx_getenv(i8* %t7)
  store %nyx_string* %t8, %nyx_string** %t9
  %t10 = load %nyx_string*, %nyx_string** %t9
  %t11 = getelementptr [1 x i8], [1 x i8]* @.str2, i32 0, i32 0
  %t12 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str2.c, i8* %t11, i64 0)
  %t13 = call i1 @nyx_string_equals(%nyx_string* %t10, %nyx_string* %t12)
  %t14 = xor i1 %t13, true
  br i1 %t14, label %then3, label %else4
then3:
  %t15 = load %nyx_string*, %nyx_string** %t9
  ret %nyx_string* %t15
else4:
  br label %merge5
merge5:
  br label %merge2
else1:
  br label %merge2
merge2:
  %t16 = getelementptr [5 x i8], [5 x i8]* @.str3, i32 0, i32 0
  %t17 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str3.c, i8* %t16, i64 4)
  %t18 = call i8* @nyx_string_to_cstr(%nyx_string* %t17)
  %t19 = call %nyx_string* @nyx_getenv(i8* %t18)
  ret %nyx_string* %t19
}

define internal %nyx_string* @find_import_path(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  %t23 = alloca i64
  %t31 = alloca i8
  %t39 = alloca i64
  %t49 = alloca i8
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t20 = load %nyx_string*, %nyx_string** %line.ptr
  %t21 = call i64 @nyx_string_byte_length(%nyx_string* %t20)
  %t22 = sub i64 %t21, 1
  store i64 %t22, i64* %t23
  br label %while_cond6
while_cond6:
  %t24 = load i64, i64* %t23
  %t25 = icmp sge i64 %t24, 0
  br i1 %t25, label %while_body7, label %while_end8
while_body7:
  %t26 = load %nyx_string*, %nyx_string** %line.ptr
  %t27 = load i64, i64* %t23
  %t28 = call i8 @nyx_string_char_at(%nyx_string* %t26, i64 %t27)
  %t29 = zext i8 %t28 to i64
  %t30 = trunc i64 %t29 to i8
  store i8 %t30, i8* %t31
  %t32 = load i8, i8* %t31
  %t33 = getelementptr [1 x i8], [1 x i8]* @.str4, i32 0, i32 0
  %t34 = load i8, i8* %t33
  %t35 = zext i8 %t34 to i64
  %t36 = zext i8 %t32 to i64
  %t37 = icmp eq i64 %t36, %t35
  br i1 %t37, label %then9, label %else10
then9:
  %t38 = load i64, i64* %t23
  store i64 %t38, i64* %t39
  %t40 = load i64, i64* %t23
  %t41 = sub i64 %t40, 1
  store i64 %t41, i64* %t23
  br label %while_cond12
while_cond12:
  %t42 = load i64, i64* %t23
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %while_body13, label %while_end14
while_body13:
  %t44 = load %nyx_string*, %nyx_string** %line.ptr
  %t45 = load i64, i64* %t23
  %t46 = call i8 @nyx_string_char_at(%nyx_string* %t44, i64 %t45)
  %t47 = zext i8 %t46 to i64
  %t48 = trunc i64 %t47 to i8
  store i8 %t48, i8* %t49
  %t50 = load i8, i8* %t49
  %t51 = getelementptr [1 x i8], [1 x i8]* @.str5, i32 0, i32 0
  %t52 = load i8, i8* %t51
  %t53 = zext i8 %t52 to i64
  %t54 = zext i8 %t50 to i64
  %t55 = icmp eq i64 %t54, %t53
  br i1 %t55, label %then15, label %else16
then15:
  %t56 = load %nyx_string*, %nyx_string** %line.ptr
  %t57 = load i64, i64* %t23
  %t58 = add i64 %t57, 1
  %t59 = load i64, i64* %t39
  %t60 = call %nyx_string* @nyx_string_substring(%nyx_string* %t56, i64 %t58, i64 %t59)
  ret %nyx_string* %t60
else16:
  br label %merge17
merge17:
  %t61 = load i64, i64* %t23
  %t62 = sub i64 %t61, 1
  store i64 %t62, i64* %t23
  br label %while_cond12
while_end14:
  br label %merge11
else10:
  br label %merge11
merge11:
  %t63 = load i64, i64* %t23
  %t64 = sub i64 %t63, 1
  store i64 %t64, i64* %t23
  br label %while_cond6
while_end8:
  %t65 = getelementptr [1 x i8], [1 x i8]* @.str6, i32 0, i32 0
  %t66 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str6.c, i8* %t65, i64 0)
  ret %nyx_string* %t66
}

define internal i1 @import_es_lib(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  %t71 = alloca %nyx_string*
  %t78 = alloca %nyx_string*
  %t87 = alloca { i64, i8* }*
  %t88 = alloca i64
  %t97 = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t67 = getelementptr [16 x i8], [16 x i8]* @.str7, i32 0, i32 0
  %t68 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str7.c, i8* %t67, i64 15)
  %t69 = call i8* @nyx_string_to_cstr(%nyx_string* %t68)
  %t70 = call %nyx_string* @nyx_getenv(i8* %t69)
  store %nyx_string* %t70, %nyx_string** %t71
  %t72 = load %nyx_string*, %nyx_string** %t71
  %t73 = getelementptr [1 x i8], [1 x i8]* @.str8, i32 0, i32 0
  %t74 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str8.c, i8* %t73, i64 0)
  %t75 = call i1 @nyx_string_equals(%nyx_string* %t72, %nyx_string* %t74)
  br i1 %t75, label %then18, label %else19
then18:
  ret i1 0
else19:
  br label %merge20
merge20:
  %t76 = load %nyx_string*, %nyx_string** %line.ptr
  %t77 = call %nyx_string* @find_import_path(%nyx_string* %t76)
  store %nyx_string* %t77, %nyx_string** %t78
  %t79 = load %nyx_string*, %nyx_string** %t78
  %t80 = getelementptr [1 x i8], [1 x i8]* @.str9, i32 0, i32 0
  %t81 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str9.c, i8* %t80, i64 0)
  %t82 = call i1 @nyx_string_equals(%nyx_string* %t79, %nyx_string* %t81)
  br i1 %t82, label %then21, label %else22
then21:
  ret i1 0
else22:
  br label %merge23
merge23:
  %t83 = load %nyx_string*, %nyx_string** %t71
  %t84 = getelementptr [2 x i8], [2 x i8]* @.str10, i32 0, i32 0
  %t85 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str10.c, i8* %t84, i64 1)
  %t86 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t83, %nyx_string* %t85)
  store { i64, i8* }* %t86, { i64, i8* }** %t87
  store i64 0, i64* %t88
  br label %while_cond24
while_cond24:
  %t89 = load i64, i64* %t88
  %t90 = load { i64, i8* }*, { i64, i8* }** %t87
  %t91 = call i64 @nyx_array_length({ i64, i8* }* %t90)
  %t92 = icmp slt i64 %t89, %t91
  br i1 %t92, label %while_body25, label %while_end26
while_body25:
  %t93 = load { i64, i8* }*, { i64, i8* }** %t87
  %t94 = load i64, i64* %t88
  %t95 = call i64 @nyx_array_get_checked({ i64, i8* }* %t93, i64 %t94, i64 2)
  %t96 = inttoptr i64 %t95 to %nyx_string*
  store %nyx_string* %t96, %nyx_string** %t97
  %t98 = load %nyx_string*, %nyx_string** %t97
  %t99 = call %nyx_string* @nyx_string_trim(%nyx_string* %t98)
  %t100 = load %nyx_string*, %nyx_string** %t78
  %t101 = call i1 @nyx_string_equals(%nyx_string* %t99, %nyx_string* %t100)
  br i1 %t101, label %then27, label %else28
then27:
  ret i1 1
else28:
  br label %merge29
merge29:
  %t102 = load i64, i64* %t88
  %t103 = add i64 %t102, 1
  store i64 %t103, i64* %t88
  br label %while_cond24
while_end26:
  ret i1 0
}

define internal i1 @is_user_import(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  %t106 = alloca %nyx_string*
  %t117 = alloca i1
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t104 = load %nyx_string*, %nyx_string** %line.ptr
  %t105 = call %nyx_string* @nyx_string_trim(%nyx_string* %t104)
  store %nyx_string* %t105, %nyx_string** %t106
  %t107 = load %nyx_string*, %nyx_string** %t106
  %t108 = getelementptr [8 x i8], [8 x i8]* @.str11, i32 0, i32 0
  %t109 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str11.c, i8* %t108, i64 7)
  %t110 = call i1 @nyx_string_starts_with(%nyx_string* %t107, %nyx_string* %t109)
  %t111 = xor i1 %t110, true
  br i1 %t111, label %then30, label %else31
then30:
  ret i1 0
else31:
  br label %merge32
merge32:
  %t112 = load %nyx_string*, %nyx_string** %line.ptr
  %t113 = getelementptr [5 x i8], [5 x i8]* @.str12, i32 0, i32 0
  %t114 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str12.c, i8* %t113, i64 4)
  %t115 = call i1 @nyx_string_contains(%nyx_string* %t112, %nyx_string* %t114)
  %t116 = xor i1 %t115, true
  br i1 %t116, label %then33, label %else34
then33:
  ret i1 0
else34:
  br label %merge35
merge35:
  store i1 false, i1* %t117
  %t118 = load %nyx_string*, %nyx_string** %line.ptr
  %t119 = getelementptr [10 x i8], [10 x i8]* @.str13, i32 0, i32 0
  %t120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str13.c, i8* %t119, i64 9)
  %t121 = call i1 @nyx_string_contains(%nyx_string* %t118, %nyx_string* %t120)
  br i1 %t121, label %sc_and_rhs36, label %sc_and_end37
sc_and_rhs36:
  %t122 = getelementptr [20 x i8], [20 x i8]* @.str14, i32 0, i32 0
  %t123 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str14.c, i8* %t122, i64 19)
  %t124 = call i8* @nyx_string_to_cstr(%nyx_string* %t123)
  %t125 = call %nyx_string* @nyx_getenv(i8* %t124)
  %t126 = getelementptr [2 x i8], [2 x i8]* @.str15, i32 0, i32 0
  %t127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str15.c, i8* %t126, i64 1)
  %t128 = call i1 @nyx_string_equals(%nyx_string* %t125, %nyx_string* %t127)
  %t129 = xor i1 %t128, true
  store i1 %t129, i1* %t117
  br label %sc_and_end37
sc_and_end37:
  %t130 = load i1, i1* %t117
  br i1 %t130, label %then38, label %else39
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
  %prefijo.ptr = alloca %nyx_string*
  %t137 = alloca %nyx_string*
  %t138 = alloca i64
  %t147 = alloca i64
  %t148 = alloca i1
  %t149 = alloca i1
  %t150 = alloca i1
  %t151 = alloca i1
  %t157 = alloca i1
  %t164 = alloca i1
  %t174 = alloca i1
  store %nyx_string* %t.param, %nyx_string** %t.ptr
  store %nyx_string* %prefijo.param, %nyx_string** %prefijo.ptr
  %t131 = load %nyx_string*, %nyx_string** %t.ptr
  %t132 = load %nyx_string*, %nyx_string** %prefijo.ptr
  %t133 = call i64 @nyx_string_byte_length(%nyx_string* %t132)
  %t134 = load %nyx_string*, %nyx_string** %t.ptr
  %t135 = call i64 @nyx_string_byte_length(%nyx_string* %t134)
  %t136 = call %nyx_string* @nyx_string_substring(%nyx_string* %t131, i64 %t133, i64 %t135)
  store %nyx_string* %t136, %nyx_string** %t137
  store i64 0, i64* %t138
  br label %while_cond41
while_cond41:
  %t139 = load i64, i64* %t138
  %t140 = load %nyx_string*, %nyx_string** %t137
  %t141 = call i64 @nyx_string_byte_length(%nyx_string* %t140)
  %t142 = icmp slt i64 %t139, %t141
  br i1 %t142, label %while_body42, label %while_end43
while_body42:
  %t143 = load %nyx_string*, %nyx_string** %t137
  %t144 = load i64, i64* %t138
  %t145 = call i8 @nyx_string_char_at(%nyx_string* %t143, i64 %t144)
  %t146 = zext i8 %t145 to i64
  store i64 %t146, i64* %t147
  store i1 true, i1* %t148
  store i1 true, i1* %t149
  store i1 true, i1* %t150
  store i1 false, i1* %t151
  %t152 = load i64, i64* %t147
  %t153 = icmp sge i64 %t152, 97
  br i1 %t153, label %sc_and_rhs44, label %sc_and_end45
sc_and_rhs44:
  %t154 = load i64, i64* %t147
  %t155 = icmp sle i64 %t154, 122
  store i1 %t155, i1* %t151
  br label %sc_and_end45
sc_and_end45:
  %t156 = load i1, i1* %t151
  br i1 %t156, label %sc_or_end47, label %sc_or_rhs46
sc_or_rhs46:
  store i1 false, i1* %t157
  %t158 = load i64, i64* %t147
  %t159 = icmp sge i64 %t158, 65
  br i1 %t159, label %sc_and_rhs48, label %sc_and_end49
sc_and_rhs48:
  %t160 = load i64, i64* %t147
  %t161 = icmp sle i64 %t160, 90
  store i1 %t161, i1* %t157
  br label %sc_and_end49
sc_and_end49:
  %t162 = load i1, i1* %t157
  store i1 %t162, i1* %t150
  br label %sc_or_end47
sc_or_end47:
  %t163 = load i1, i1* %t150
  br i1 %t163, label %sc_or_end51, label %sc_or_rhs50
sc_or_rhs50:
  store i1 false, i1* %t164
  %t165 = load i64, i64* %t147
  %t166 = icmp sge i64 %t165, 48
  br i1 %t166, label %sc_and_rhs52, label %sc_and_end53
sc_and_rhs52:
  %t167 = load i64, i64* %t147
  %t168 = icmp sle i64 %t167, 57
  store i1 %t168, i1* %t164
  br label %sc_and_end53
sc_and_end53:
  %t169 = load i1, i1* %t164
  store i1 %t169, i1* %t149
  br label %sc_or_end51
sc_or_end51:
  %t170 = load i1, i1* %t149
  br i1 %t170, label %sc_or_end55, label %sc_or_rhs54
sc_or_rhs54:
  %t171 = load i64, i64* %t147
  %t172 = icmp eq i64 %t171, 95
  store i1 %t172, i1* %t148
  br label %sc_or_end55
sc_or_end55:
  %t173 = load i1, i1* %t148
  store i1 %t173, i1* %t174
  %t175 = load i1, i1* %t174
  %t176 = xor i1 %t175, true
  br i1 %t176, label %then56, label %else57
then56:
  %t177 = load %nyx_string*, %nyx_string** %t137
  %t178 = load i64, i64* %t138
  %t179 = call %nyx_string* @nyx_string_substring(%nyx_string* %t177, i64 0, i64 %t178)
  ret %nyx_string* %t179
else57:
  br label %merge58
merge58:
  %t180 = load i64, i64* %t138
  %t181 = add i64 %t180, 1
  store i64 %t181, i64* %t138
  br label %while_cond41
while_end43:
  %t182 = load %nyx_string*, %nyx_string** %t137
  ret %nyx_string* %t182
}

define internal %nyx_string* @razon_no_separable(
%nyx_string* %src.param) {
  %src.ptr = alloca %nyx_string*
  %t187 = alloca { i64, i8* }*
  %t189 = alloca { i64, i8* }*
  %t190 = alloca i64
  %t193 = alloca %nyx_string*
  %t196 = alloca %nyx_string*
  %t199 = alloca %nyx_string*
  %t202 = alloca %nyx_string*
  %t205 = alloca %nyx_string*
  %t208 = alloca %nyx_string*
  %t211 = alloca %nyx_string*
  %t214 = alloca %nyx_string*
  %t217 = alloca %nyx_string*
  %t220 = alloca %nyx_string*
  %t223 = alloca %nyx_string*
  %t226 = alloca %nyx_string*
  %t229 = alloca %nyx_string*
  %t232 = alloca %nyx_string*
  %t235 = alloca %nyx_string*
  %t238 = alloca %nyx_string*
  %t241 = alloca %nyx_string*
  %t250 = alloca %nyx_string*
  %t253 = alloca %nyx_string*
  %t255 = alloca %nyx_string*
  %t271 = alloca %nyx_string*
  %t281 = alloca %nyx_string*
  %t298 = alloca i1
  %t307 = alloca %nyx_string*
  %t332 = alloca %nyx_string*
  %t376 = alloca %nyx_string*
  %t383 = alloca %nyx_string*
  store %nyx_string* %src.param, %nyx_string** %src.ptr
  %t183 = load %nyx_string*, %nyx_string** %src.ptr
  %t184 = getelementptr [2 x i8], [2 x i8]* @.str16, i32 0, i32 0
  %t185 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str16.c, i8* %t184, i64 1)
  %t186 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t183, %nyx_string* %t185)
  store { i64, i8* }* %t186, { i64, i8* }** %t187
  %t188 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t188, { i64, i8* }** %t189
  store i64 0, i64* %t190
  %t191 = getelementptr [1 x i8], [1 x i8]* @.str17, i32 0, i32 0
  %t192 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str17.c, i8* %t191, i64 0)
  store %nyx_string* %t192, %nyx_string** %t193
  %t194 = getelementptr [8 x i8], [8 x i8]* @.str18, i32 0, i32 0
  %t195 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str18.c, i8* %t194, i64 7)
  store %nyx_string* %t195, %nyx_string** %t196
  %t197 = getelementptr [11 x i8], [11 x i8]* @.str19, i32 0, i32 0
  %t198 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str19.c, i8* %t197, i64 10)
  store %nyx_string* %t198, %nyx_string** %t199
  %t200 = getelementptr [2 x i8], [2 x i8]* @.str20, i32 0, i32 0
  %t201 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str20.c, i8* %t200, i64 1)
  store %nyx_string* %t201, %nyx_string** %t202
  %t203 = getelementptr [18 x i8], [18 x i8]* @.str21, i32 0, i32 0
  %t204 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str21.c, i8* %t203, i64 17)
  store %nyx_string* %t204, %nyx_string** %t205
  %t206 = getelementptr [2 x i8], [2 x i8]* @.str22, i32 0, i32 0
  %t207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str22.c, i8* %t206, i64 1)
  store %nyx_string* %t207, %nyx_string** %t208
  %t209 = getelementptr [17 x i8], [17 x i8]* @.str23, i32 0, i32 0
  %t210 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str23.c, i8* %t209, i64 16)
  store %nyx_string* %t210, %nyx_string** %t211
  %t212 = getelementptr [6 x i8], [6 x i8]* @.str24, i32 0, i32 0
  %t213 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str24.c, i8* %t212, i64 5)
  store %nyx_string* %t213, %nyx_string** %t214
  %t215 = getelementptr [6 x i8], [6 x i8]* @.str25, i32 0, i32 0
  %t216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str25.c, i8* %t215, i64 5)
  store %nyx_string* %t216, %nyx_string** %t217
  %t218 = getelementptr [2 x i8], [2 x i8]* @.str26, i32 0, i32 0
  %t219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str26.c, i8* %t218, i64 1)
  store %nyx_string* %t219, %nyx_string** %t220
  %t221 = getelementptr [18 x i8], [18 x i8]* @.str27, i32 0, i32 0
  %t222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str27.c, i8* %t221, i64 17)
  store %nyx_string* %t222, %nyx_string** %t223
  %t224 = getelementptr [17 x i8], [17 x i8]* @.str28, i32 0, i32 0
  %t225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str28.c, i8* %t224, i64 16)
  store %nyx_string* %t225, %nyx_string** %t226
  %t227 = getelementptr [7 x i8], [7 x i8]* @.str29, i32 0, i32 0
  %t228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str29.c, i8* %t227, i64 6)
  store %nyx_string* %t228, %nyx_string** %t229
  %t230 = getelementptr [11 x i8], [11 x i8]* @.str30, i32 0, i32 0
  %t231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str30.c, i8* %t230, i64 10)
  store %nyx_string* %t231, %nyx_string** %t232
  %t233 = getelementptr [14 x i8], [14 x i8]* @.str31, i32 0, i32 0
  %t234 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str31.c, i8* %t233, i64 13)
  store %nyx_string* %t234, %nyx_string** %t235
  %t236 = getelementptr [11 x i8], [11 x i8]* @.str32, i32 0, i32 0
  %t237 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str32.c, i8* %t236, i64 10)
  store %nyx_string* %t237, %nyx_string** %t238
  %t239 = getelementptr [12 x i8], [12 x i8]* @.str33, i32 0, i32 0
  %t240 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str33.c, i8* %t239, i64 11)
  store %nyx_string* %t240, %nyx_string** %t241
  br label %while_cond59
while_cond59:
  %t242 = load i64, i64* %t190
  %t243 = load { i64, i8* }*, { i64, i8* }** %t187
  %t244 = call i64 @nyx_array_length({ i64, i8* }* %t243)
  %t245 = icmp slt i64 %t242, %t244
  br i1 %t245, label %while_body60, label %while_end61
while_body60:
  %t246 = load { i64, i8* }*, { i64, i8* }** %t187
  %t247 = load i64, i64* %t190
  %t248 = call i64 @nyx_array_get_checked({ i64, i8* }* %t246, i64 %t247, i64 2)
  %t249 = inttoptr i64 %t248 to %nyx_string*
  store %nyx_string* %t249, %nyx_string** %t250
  %t251 = load %nyx_string*, %nyx_string** %t250
  %t252 = call %nyx_string* @nyx_string_trim(%nyx_string* %t251)
  store %nyx_string* %t252, %nyx_string** %t253
  %t254 = load %nyx_string*, %nyx_string** %t193
  store %nyx_string* %t254, %nyx_string** %t255
  %t256 = load %nyx_string*, %nyx_string** %t253
  %t257 = load %nyx_string*, %nyx_string** %t196
  %t258 = call i1 @nyx_string_starts_with(%nyx_string* %t256, %nyx_string* %t257)
  br i1 %t258, label %then62, label %else63
then62:
  %t259 = load %nyx_string*, %nyx_string** %t196
  store %nyx_string* %t259, %nyx_string** %t255
  br label %merge64
else63:
  br label %merge64
merge64:
  %t260 = load %nyx_string*, %nyx_string** %t253
  %t261 = load %nyx_string*, %nyx_string** %t199
  %t262 = call i1 @nyx_string_starts_with(%nyx_string* %t260, %nyx_string* %t261)
  br i1 %t262, label %then65, label %else66
then65:
  %t263 = load %nyx_string*, %nyx_string** %t199
  store %nyx_string* %t263, %nyx_string** %t255
  br label %merge67
else66:
  br label %merge67
merge67:
  %t264 = load %nyx_string*, %nyx_string** %t255
  %t265 = load %nyx_string*, %nyx_string** %t193
  %t266 = call i1 @nyx_string_equals(%nyx_string* %t264, %nyx_string* %t265)
  %t267 = xor i1 %t266, true
  br i1 %t267, label %then68, label %else69
then68:
  %t268 = load %nyx_string*, %nyx_string** %t253
  %t269 = load %nyx_string*, %nyx_string** %t255
  %t270 = call %nyx_string* @nombre_tras(%nyx_string* %t268, %nyx_string* %t269)
  store %nyx_string* %t270, %nyx_string** %t271
  %t272 = load %nyx_string*, %nyx_string** %t253
  %t273 = load %nyx_string*, %nyx_string** %t255
  %t274 = call i64 @nyx_string_byte_length(%nyx_string* %t273)
  %t275 = load %nyx_string*, %nyx_string** %t271
  %t276 = call i64 @nyx_string_byte_length(%nyx_string* %t275)
  %t277 = add i64 %t274, %t276
  %t278 = load %nyx_string*, %nyx_string** %t253
  %t279 = call i64 @nyx_string_byte_length(%nyx_string* %t278)
  %t280 = call %nyx_string* @nyx_string_substring(%nyx_string* %t272, i64 %t277, i64 %t279)
  store %nyx_string* %t280, %nyx_string** %t281
  %t282 = load %nyx_string*, %nyx_string** %t281
  %t283 = load %nyx_string*, %nyx_string** %t202
  %t284 = call i1 @nyx_string_starts_with(%nyx_string* %t282, %nyx_string* %t283)
  br i1 %t284, label %then71, label %else72
then71:
  %t285 = load { i64, i8* }*, { i64, i8* }** %t189
  %t286 = load %nyx_string*, %nyx_string** %t205
  %t287 = load %nyx_string*, %nyx_string** %t271
  %t288 = call %nyx_string* @nyx_string_concat(%nyx_string* %t286, %nyx_string* %t287)
  %t289 = load %nyx_string*, %nyx_string** %t208
  %t290 = call %nyx_string* @nyx_string_concat(%nyx_string* %t288, %nyx_string* %t289)
  %t291 = load %nyx_string*, %nyx_string** %t211
  %t292 = load %nyx_string*, %nyx_string** %t271
  %t293 = call %nyx_string* @nyx_string_concat(%nyx_string* %t291, %nyx_string* %t292)
  %t294 = load %nyx_string*, %nyx_string** %t208
  %t295 = call %nyx_string* @nyx_string_concat(%nyx_string* %t293, %nyx_string* %t294)
  %t296 = call %nyx_string* @nyx_msg(%nyx_string* %t290, %nyx_string* %t295)
  %t297 = ptrtoint %nyx_string* %t296 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t285, i64 %t297, i64 2)
  br label %merge73
else72:
  br label %merge73
merge73:
  br label %merge70
else69:
  br label %merge70
merge70:
  store i1 true, i1* %t298
  %t299 = load %nyx_string*, %nyx_string** %t253
  %t300 = load %nyx_string*, %nyx_string** %t214
  %t301 = call i1 @nyx_string_starts_with(%nyx_string* %t299, %nyx_string* %t300)
  br i1 %t301, label %sc_or_end75, label %sc_or_rhs74
sc_or_rhs74:
  %t302 = load %nyx_string*, %nyx_string** %t253
  %t303 = load %nyx_string*, %nyx_string** %t217
  %t304 = call i1 @nyx_string_starts_with(%nyx_string* %t302, %nyx_string* %t303)
  store i1 %t304, i1* %t298
  br label %sc_or_end75
sc_or_end75:
  %t305 = load i1, i1* %t298
  br i1 %t305, label %then76, label %else77
then76:
  %t306 = load %nyx_string*, %nyx_string** %t253
  store %nyx_string* %t306, %nyx_string** %t307
  %t308 = load %nyx_string*, %nyx_string** %t307
  %t309 = load %nyx_string*, %nyx_string** %t220
  %t310 = call i1 @nyx_string_contains(%nyx_string* %t308, %nyx_string* %t309)
  br i1 %t310, label %then79, label %else80
then79:
  %t311 = load %nyx_string*, %nyx_string** %t307
  %t312 = load %nyx_string*, %nyx_string** %t307
  %t313 = load %nyx_string*, %nyx_string** %t220
  %t314 = call i64 @nyx_string_index_of(%nyx_string* %t312, %nyx_string* %t313)
  %t315 = call %nyx_string* @nyx_string_substring(%nyx_string* %t311, i64 0, i64 %t314)
  store %nyx_string* %t315, %nyx_string** %t307
  br label %merge81
else80:
  br label %merge81
merge81:
  %t316 = load { i64, i8* }*, { i64, i8* }** %t189
  %t317 = load %nyx_string*, %nyx_string** %t223
  %t318 = load %nyx_string*, %nyx_string** %t307
  %t319 = call %nyx_string* @nyx_string_trim(%nyx_string* %t318)
  %t320 = call %nyx_string* @nyx_string_concat(%nyx_string* %t317, %nyx_string* %t319)
  %t321 = load %nyx_string*, %nyx_string** %t208
  %t322 = call %nyx_string* @nyx_string_concat(%nyx_string* %t320, %nyx_string* %t321)
  %t323 = load %nyx_string*, %nyx_string** %t226
  %t324 = load %nyx_string*, %nyx_string** %t307
  %t325 = call %nyx_string* @nyx_string_trim(%nyx_string* %t324)
  %t326 = call %nyx_string* @nyx_string_concat(%nyx_string* %t323, %nyx_string* %t325)
  %t327 = load %nyx_string*, %nyx_string** %t208
  %t328 = call %nyx_string* @nyx_string_concat(%nyx_string* %t326, %nyx_string* %t327)
  %t329 = call %nyx_string* @nyx_msg(%nyx_string* %t322, %nyx_string* %t328)
  %t330 = ptrtoint %nyx_string* %t329 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t316, i64 %t330, i64 2)
  br label %merge78
else77:
  br label %merge78
merge78:
  %t331 = load %nyx_string*, %nyx_string** %t193
  store %nyx_string* %t331, %nyx_string** %t332
  %t333 = load %nyx_string*, %nyx_string** %t253
  %t334 = load %nyx_string*, %nyx_string** %t229
  %t335 = call i1 @nyx_string_starts_with(%nyx_string* %t333, %nyx_string* %t334)
  br i1 %t335, label %then82, label %else83
then82:
  %t336 = load %nyx_string*, %nyx_string** %t229
  store %nyx_string* %t336, %nyx_string** %t332
  br label %merge84
else83:
  br label %merge84
merge84:
  %t337 = load %nyx_string*, %nyx_string** %t253
  %t338 = load %nyx_string*, %nyx_string** %t232
  %t339 = call i1 @nyx_string_starts_with(%nyx_string* %t337, %nyx_string* %t338)
  br i1 %t339, label %then85, label %else86
then85:
  %t340 = load %nyx_string*, %nyx_string** %t232
  store %nyx_string* %t340, %nyx_string** %t332
  br label %merge87
else86:
  br label %merge87
merge87:
  %t341 = load %nyx_string*, %nyx_string** %t253
  %t342 = load %nyx_string*, %nyx_string** %t235
  %t343 = call i1 @nyx_string_starts_with(%nyx_string* %t341, %nyx_string* %t342)
  br i1 %t343, label %then88, label %else89
then88:
  %t344 = load %nyx_string*, %nyx_string** %t235
  store %nyx_string* %t344, %nyx_string** %t332
  br label %merge90
else89:
  br label %merge90
merge90:
  %t345 = load %nyx_string*, %nyx_string** %t332
  %t346 = load %nyx_string*, %nyx_string** %t193
  %t347 = call i1 @nyx_string_equals(%nyx_string* %t345, %nyx_string* %t346)
  %t348 = xor i1 %t347, true
  br i1 %t348, label %then91, label %else92
then91:
  %t349 = load { i64, i8* }*, { i64, i8* }** %t189
  %t350 = load %nyx_string*, %nyx_string** %t238
  %t351 = load %nyx_string*, %nyx_string** %t253
  %t352 = load %nyx_string*, %nyx_string** %t332
  %t353 = call %nyx_string* @nombre_tras(%nyx_string* %t351, %nyx_string* %t352)
  %t354 = call %nyx_string* @nyx_string_concat(%nyx_string* %t350, %nyx_string* %t353)
  %t355 = load %nyx_string*, %nyx_string** %t208
  %t356 = call %nyx_string* @nyx_string_concat(%nyx_string* %t354, %nyx_string* %t355)
  %t357 = load %nyx_string*, %nyx_string** %t241
  %t358 = load %nyx_string*, %nyx_string** %t253
  %t359 = load %nyx_string*, %nyx_string** %t332
  %t360 = call %nyx_string* @nombre_tras(%nyx_string* %t358, %nyx_string* %t359)
  %t361 = call %nyx_string* @nyx_string_concat(%nyx_string* %t357, %nyx_string* %t360)
  %t362 = load %nyx_string*, %nyx_string** %t208
  %t363 = call %nyx_string* @nyx_string_concat(%nyx_string* %t361, %nyx_string* %t362)
  %t364 = call %nyx_string* @nyx_msg(%nyx_string* %t356, %nyx_string* %t363)
  %t365 = ptrtoint %nyx_string* %t364 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t349, i64 %t365, i64 2)
  br label %merge93
else92:
  br label %merge93
merge93:
  %t366 = load i64, i64* %t190
  %t367 = add i64 %t366, 1
  store i64 %t367, i64* %t190
  br label %while_cond59
while_end61:
  %t368 = load { i64, i8* }*, { i64, i8* }** %t189
  %t369 = call i64 @nyx_array_length({ i64, i8* }* %t368)
  %t370 = icmp eq i64 %t369, 0
  br i1 %t370, label %then94, label %else95
then94:
  %t371 = getelementptr [1 x i8], [1 x i8]* @.str34, i32 0, i32 0
  %t372 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str34.c, i8* %t371, i64 0)
  ret %nyx_string* %t372
else95:
  br label %merge96
merge96:
  %t373 = load { i64, i8* }*, { i64, i8* }** %t189
  %t374 = call i64 @nyx_array_get_checked({ i64, i8* }* %t373, i64 0, i64 2)
  %t375 = inttoptr i64 %t374 to %nyx_string*
  store %nyx_string* %t375, %nyx_string** %t376
  %t377 = load { i64, i8* }*, { i64, i8* }** %t189
  %t378 = call i64 @nyx_array_length({ i64, i8* }* %t377)
  %t379 = icmp sgt i64 %t378, 1
  br i1 %t379, label %then97, label %else98
then97:
  %t380 = load { i64, i8* }*, { i64, i8* }** %t189
  %t381 = call i64 @nyx_array_get_checked({ i64, i8* }* %t380, i64 1, i64 2)
  %t382 = inttoptr i64 %t381 to %nyx_string*
  store %nyx_string* %t382, %nyx_string** %t383
  %t384 = load %nyx_string*, %nyx_string** %t376
  %t385 = getelementptr [4 x i8], [4 x i8]* @.str35, i32 0, i32 0
  %t386 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str35.c, i8* %t385, i64 3)
  %t387 = getelementptr [6 x i8], [6 x i8]* @.str36, i32 0, i32 0
  %t388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str36.c, i8* %t387, i64 5)
  %t389 = call %nyx_string* @nyx_msg(%nyx_string* %t386, %nyx_string* %t388)
  %t390 = call %nyx_string* @nyx_string_concat(%nyx_string* %t384, %nyx_string* %t389)
  %t391 = load %nyx_string*, %nyx_string** %t383
  %t392 = call %nyx_string* @nyx_string_concat(%nyx_string* %t390, %nyx_string* %t391)
  store %nyx_string* %t392, %nyx_string** %t376
  br label %merge99
else98:
  br label %merge99
merge99:
  %t393 = load { i64, i8* }*, { i64, i8* }** %t189
  %t394 = call i64 @nyx_array_length({ i64, i8* }* %t393)
  %t395 = icmp sgt i64 %t394, 2
  br i1 %t395, label %then100, label %else101
then100:
  %t396 = load %nyx_string*, %nyx_string** %t376
  %t397 = getelementptr [4 x i8], [4 x i8]* @.str37, i32 0, i32 0
  %t398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str37.c, i8* %t397, i64 3)
  %t399 = call %nyx_string* @nyx_string_concat(%nyx_string* %t396, %nyx_string* %t398)
  %t400 = load { i64, i8* }*, { i64, i8* }** %t189
  %t401 = call i64 @nyx_array_length({ i64, i8* }* %t400)
  %t402 = sub i64 %t401, 2
  %t403 = call %nyx_string* @nyx_string_from_int(i64 %t402)
  %t404 = call %nyx_string* @nyx_string_concat(%nyx_string* %t399, %nyx_string* %t403)
  %t405 = getelementptr [2 x i8], [2 x i8]* @.str38, i32 0, i32 0
  %t406 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str38.c, i8* %t405, i64 1)
  %t407 = call %nyx_string* @nyx_string_concat(%nyx_string* %t404, %nyx_string* %t406)
  store %nyx_string* %t407, %nyx_string** %t376
  br label %merge102
else101:
  br label %merge102
merge102:
  %t408 = load %nyx_string*, %nyx_string** %t376
  ret %nyx_string* %t408
}

define internal i1 @modulo_separable(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  %t415 = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t409 = load %nyx_string*, %nyx_string** %path.ptr
  %t410 = getelementptr [1 x i8], [1 x i8]* @.str39, i32 0, i32 0
  %t411 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str39.c, i8* %t410, i64 0)
  %t412 = call i1 @nyx_string_equals(%nyx_string* %t409, %nyx_string* %t411)
  br i1 %t412, label %then103, label %else104
then103:
  ret i1 1
else104:
  br label %merge105
merge105:
  %t413 = load %nyx_string*, %nyx_string** %path.ptr
  %t414 = call %nyx_string* @resolve_module_path(%nyx_string* %t413)
  store %nyx_string* %t414, %nyx_string** %t415
  %t416 = load %nyx_string*, %nyx_string** %t415
  %t417 = getelementptr [1 x i8], [1 x i8]* @.str40, i32 0, i32 0
  %t418 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str40.c, i8* %t417, i64 0)
  %t419 = call i1 @nyx_string_equals(%nyx_string* %t416, %nyx_string* %t418)
  br i1 %t419, label %then106, label %else107
then106:
  ret i1 1
else107:
  br label %merge108
merge108:
  %t420 = load %nyx_string*, %nyx_string** %t415
  %t421 = call i8* @nyx_string_to_cstr(%nyx_string* %t420)
  %t422 = call %nyx_string* @nyx_read_file(i8* %t421)
  %t423 = call %nyx_string* @razon_no_separable(%nyx_string* %t422)
  %t424 = getelementptr [1 x i8], [1 x i8]* @.str41, i32 0, i32 0
  %t425 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str41.c, i8* %t424, i64 0)
  %t426 = call i1 @nyx_string_equals(%nyx_string* %t423, %nyx_string* %t425)
  ret i1 %t426
}

define internal i64 @lib_decl_registrar(
%nyx_string* %line.param, %nyx_string* %path.param, i8* %imported.param) {
  %line.ptr = alloca %nyx_string*
  %path.ptr = alloca %nyx_string*
  %imported.ptr = alloca i8*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  store i8* %imported.param, i8** %imported.ptr
  %t427 = load %nyx_string*, %nyx_string** %line.ptr
  %t428 = call i1 @import_es_lib(%nyx_string* %t427)
  %t429 = xor i1 %t428, true
  br i1 %t429, label %then109, label %else110
then109:
  ret i64 0
else110:
  br label %merge111
merge111:
  %t430 = load %nyx_string*, %nyx_string** %path.ptr
  %t431 = call i1 @modulo_separable(%nyx_string* %t430)
  %t432 = xor i1 %t431, true
  br i1 %t432, label %then112, label %else113
then112:
  ret i64 0
else113:
  br label %merge114
merge114:
  %t433 = load i8*, i8** %imported.ptr
  %t434 = getelementptr [9 x i8], [9 x i8]* @.str42, i32 0, i32 0
  %t435 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str42.c, i8* %t434, i64 8)
  %t436 = load %nyx_string*, %nyx_string** %path.ptr
  %t437 = call %nyx_string* @nyx_string_concat(%nyx_string* %t435, %nyx_string* %t436)
  %t438 = call i8* @nyx_string_to_cstr(%nyx_string* %t437)
  call void @nyx_map_insert_int(i8* %t433, i8* %t438, i64 1)
  ret i64 0
}

define internal i64 @aviso_no_separable(
%nyx_string* %line.param, %nyx_string* %path.param) {
  %line.ptr = alloca %nyx_string*
  %path.ptr = alloca %nyx_string*
  %t444 = alloca %nyx_string*
  %t453 = alloca %nyx_string*
  %t477 = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t439 = load %nyx_string*, %nyx_string** %line.ptr
  %t440 = call i1 @import_es_lib(%nyx_string* %t439)
  %t441 = xor i1 %t440, true
  br i1 %t441, label %then115, label %else116
then115:
  ret i64 0
else116:
  br label %merge117
merge117:
  %t442 = load %nyx_string*, %nyx_string** %path.ptr
  %t443 = call %nyx_string* @resolve_module_path(%nyx_string* %t442)
  store %nyx_string* %t443, %nyx_string** %t444
  %t445 = load %nyx_string*, %nyx_string** %t444
  %t446 = getelementptr [1 x i8], [1 x i8]* @.str43, i32 0, i32 0
  %t447 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str43.c, i8* %t446, i64 0)
  %t448 = call i1 @nyx_string_equals(%nyx_string* %t445, %nyx_string* %t447)
  br i1 %t448, label %then118, label %else119
then118:
  ret i64 0
else119:
  br label %merge120
merge120:
  %t449 = load %nyx_string*, %nyx_string** %t444
  %t450 = call i8* @nyx_string_to_cstr(%nyx_string* %t449)
  %t451 = call %nyx_string* @nyx_read_file(i8* %t450)
  %t452 = call %nyx_string* @razon_no_separable(%nyx_string* %t451)
  store %nyx_string* %t452, %nyx_string** %t453
  %t454 = load %nyx_string*, %nyx_string** %t453
  %t455 = getelementptr [1 x i8], [1 x i8]* @.str44, i32 0, i32 0
  %t456 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str44.c, i8* %t455, i64 0)
  %t457 = call i1 @nyx_string_equals(%nyx_string* %t454, %nyx_string* %t456)
  br i1 %t457, label %then121, label %else122
then121:
  ret i64 0
else122:
  br label %merge123
merge123:
  %t458 = getelementptr [9 x i8], [9 x i8]* @.str45, i32 0, i32 0
  %t459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str45.c, i8* %t458, i64 8)
  %t460 = call i8* @nyx_string_to_cstr(%nyx_string* %t459)
  %t461 = call %nyx_string* @nyx_getenv(i8* %t460)
  %t462 = getelementptr [5 x i8], [5 x i8]* @.str46, i32 0, i32 0
  %t463 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str46.c, i8* %t462, i64 4)
  %t464 = call i1 @nyx_string_equals(%nyx_string* %t461, %nyx_string* %t463)
  br i1 %t464, label %then124, label %else125
then124:
  %t465 = getelementptr [9 x i8], [9 x i8]* @.str47, i32 0, i32 0
  %t466 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str47.c, i8* %t465, i64 8)
  %t467 = load %nyx_string*, %nyx_string** %path.ptr
  %t468 = call %nyx_string* @nyx_string_concat(%nyx_string* %t466, %nyx_string* %t467)
  %t469 = getelementptr [41 x i8], [41 x i8]* @.str48, i32 0, i32 0
  %t470 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str48.c, i8* %t469, i64 40)
  %t471 = call %nyx_string* @nyx_string_concat(%nyx_string* %t468, %nyx_string* %t470)
  %t472 = load %nyx_string*, %nyx_string** %t453
  %t473 = call %nyx_string* @nyx_string_concat(%nyx_string* %t471, %nyx_string* %t472)
  %t474 = getelementptr [20 x i8], [20 x i8]* @.str49, i32 0, i32 0
  %t475 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str49.c, i8* %t474, i64 19)
  %t476 = call %nyx_string* @nyx_string_concat(%nyx_string* %t473, %nyx_string* %t475)
  store %nyx_string* %t476, %nyx_string** %t477
  %t478 = getelementptr [69 x i8], [69 x i8]* @.str50, i32 0, i32 0
  %t479 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str50.c, i8* %t478, i64 68)
  %t480 = load %nyx_string*, %nyx_string** %t477
  %t481 = call %nyx_string* @nyx_json_escape(%nyx_string* %t480)
  %t482 = call %nyx_string* @nyx_string_concat(%nyx_string* %t479, %nyx_string* %t481)
  %t483 = getelementptr [3 x i8], [3 x i8]* @.str51, i32 0, i32 0
  %t484 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str51.c, i8* %t483, i64 2)
  %t485 = call %nyx_string* @nyx_string_concat(%nyx_string* %t482, %nyx_string* %t484)
  %t486 = call i8* @nyx_string_to_cstr(%nyx_string* %t485)
  call void @nyx_print_string(i8* %t486)
  ret i64 0
else125:
  br label %merge126
merge126:
  %t487 = getelementptr [36 x i8], [36 x i8]* @.str52, i32 0, i32 0
  %t488 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str52.c, i8* %t487, i64 35)
  %t489 = load %nyx_string*, %nyx_string** %path.ptr
  %t490 = call %nyx_string* @nyx_string_concat(%nyx_string* %t488, %nyx_string* %t489)
  %t491 = getelementptr [37 x i8], [37 x i8]* @.str53, i32 0, i32 0
  %t492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str53.c, i8* %t491, i64 36)
  %t493 = call %nyx_string* @nyx_string_concat(%nyx_string* %t490, %nyx_string* %t492)
  %t494 = load %nyx_string*, %nyx_string** %t453
  %t495 = call %nyx_string* @nyx_string_concat(%nyx_string* %t493, %nyx_string* %t494)
  %t496 = getelementptr [304 x i8], [304 x i8]* @.str54, i32 0, i32 0
  %t497 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str54.c, i8* %t496, i64 303)
  %t498 = call %nyx_string* @nyx_string_concat(%nyx_string* %t495, %nyx_string* %t497)
  %t499 = getelementptr [34 x i8], [34 x i8]* @.str55, i32 0, i32 0
  %t500 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str55.c, i8* %t499, i64 33)
  %t501 = load %nyx_string*, %nyx_string** %path.ptr
  %t502 = call %nyx_string* @nyx_string_concat(%nyx_string* %t500, %nyx_string* %t501)
  %t503 = getelementptr [45 x i8], [45 x i8]* @.str56, i32 0, i32 0
  %t504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str56.c, i8* %t503, i64 44)
  %t505 = call %nyx_string* @nyx_string_concat(%nyx_string* %t502, %nyx_string* %t504)
  %t506 = load %nyx_string*, %nyx_string** %t453
  %t507 = call %nyx_string* @nyx_string_concat(%nyx_string* %t505, %nyx_string* %t506)
  %t508 = getelementptr [289 x i8], [289 x i8]* @.str57, i32 0, i32 0
  %t509 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str57.c, i8* %t508, i64 288)
  %t510 = call %nyx_string* @nyx_string_concat(%nyx_string* %t507, %nyx_string* %t509)
  %t511 = call %nyx_string* @nyx_msg(%nyx_string* %t498, %nyx_string* %t510)
  %t512 = call i8* @nyx_string_to_cstr(%nyx_string* %t511)
  call void @nyx_print_string(i8* %t512)
  ret i64 0
}

define internal i1 @is_module_import(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  %t515 = alloca %nyx_string*
  %t534 = alloca i1
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t513 = load %nyx_string*, %nyx_string** %line.ptr
  %t514 = call %nyx_string* @nyx_string_trim(%nyx_string* %t513)
  store %nyx_string* %t514, %nyx_string** %t515
  %t516 = load %nyx_string*, %nyx_string** %t515
  %t517 = getelementptr [8 x i8], [8 x i8]* @.str58, i32 0, i32 0
  %t518 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str58.c, i8* %t517, i64 7)
  %t519 = call i1 @nyx_string_starts_with(%nyx_string* %t516, %nyx_string* %t518)
  %t520 = xor i1 %t519, true
  br i1 %t520, label %then127, label %else128
then127:
  ret i1 0
else128:
  br label %merge129
merge129:
  %t521 = load %nyx_string*, %nyx_string** %line.ptr
  %t522 = getelementptr [2 x i8], [2 x i8]* @.str59, i32 0, i32 0
  %t523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str59.c, i8* %t522, i64 1)
  %t524 = call i1 @nyx_string_contains(%nyx_string* %t521, %nyx_string* %t523)
  br i1 %t524, label %then130, label %else131
then130:
  ret i1 0
else131:
  br label %merge132
merge132:
  %t525 = load %nyx_string*, %nyx_string** %line.ptr
  %t526 = getelementptr [5 x i8], [5 x i8]* @.str60, i32 0, i32 0
  %t527 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str60.c, i8* %t526, i64 4)
  %t528 = call i1 @nyx_string_contains(%nyx_string* %t525, %nyx_string* %t527)
  br i1 %t528, label %then133, label %else134
then133:
  ret i1 0
else134:
  br label %merge135
merge135:
  %t529 = load %nyx_string*, %nyx_string** %line.ptr
  %t530 = getelementptr [2 x i8], [2 x i8]* @.str61, i32 0, i32 0
  %t531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str61.c, i8* %t530, i64 1)
  %t532 = call i1 @nyx_string_contains(%nyx_string* %t529, %nyx_string* %t531)
  %t533 = xor i1 %t532, true
  br i1 %t533, label %then136, label %else137
then136:
  ret i1 0
else137:
  br label %merge138
merge138:
  store i1 false, i1* %t534
  %t535 = load %nyx_string*, %nyx_string** %line.ptr
  %t536 = getelementptr [10 x i8], [10 x i8]* @.str62, i32 0, i32 0
  %t537 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str62.c, i8* %t536, i64 9)
  %t538 = call i1 @nyx_string_contains(%nyx_string* %t535, %nyx_string* %t537)
  br i1 %t538, label %sc_and_rhs139, label %sc_and_end140
sc_and_rhs139:
  %t539 = getelementptr [20 x i8], [20 x i8]* @.str63, i32 0, i32 0
  %t540 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str63.c, i8* %t539, i64 19)
  %t541 = call i8* @nyx_string_to_cstr(%nyx_string* %t540)
  %t542 = call %nyx_string* @nyx_getenv(i8* %t541)
  %t543 = getelementptr [2 x i8], [2 x i8]* @.str64, i32 0, i32 0
  %t544 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str64.c, i8* %t543, i64 1)
  %t545 = call i1 @nyx_string_equals(%nyx_string* %t542, %nyx_string* %t544)
  %t546 = xor i1 %t545, true
  store i1 %t546, i1* %t534
  br label %sc_and_end140
sc_and_end140:
  %t547 = load i1, i1* %t534
  br i1 %t547, label %then141, label %else142
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
  %t549 = alloca i64
  %t550 = alloca i64
  %t560 = alloca i8
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t548 = sub i64 0, 1
  store i64 %t548, i64* %t549
  store i64 0, i64* %t550
  br label %while_cond144
while_cond144:
  %t551 = load i64, i64* %t550
  %t552 = load %nyx_string*, %nyx_string** %path.ptr
  %t553 = call i64 @nyx_string_byte_length(%nyx_string* %t552)
  %t554 = icmp slt i64 %t551, %t553
  br i1 %t554, label %while_body145, label %while_end146
while_body145:
  %t555 = load %nyx_string*, %nyx_string** %path.ptr
  %t556 = load i64, i64* %t550
  %t557 = call i8 @nyx_string_char_at(%nyx_string* %t555, i64 %t556)
  %t558 = zext i8 %t557 to i64
  %t559 = trunc i64 %t558 to i8
  store i8 %t559, i8* %t560
  %t561 = load i8, i8* %t560
  %t562 = getelementptr [1 x i8], [1 x i8]* @.str65, i32 0, i32 0
  %t563 = load i8, i8* %t562
  %t564 = zext i8 %t563 to i64
  %t565 = zext i8 %t561 to i64
  %t566 = icmp eq i64 %t565, %t564
  br i1 %t566, label %then147, label %else148
then147:
  %t567 = load i64, i64* %t550
  store i64 %t567, i64* %t549
  br label %merge149
else148:
  br label %merge149
merge149:
  %t568 = load i64, i64* %t550
  %t569 = add i64 %t568, 1
  store i64 %t569, i64* %t550
  br label %while_cond144
while_end146:
  %t570 = load i64, i64* %t549
  %t571 = icmp sge i64 %t570, 0
  br i1 %t571, label %then150, label %else151
then150:
  %t572 = load %nyx_string*, %nyx_string** %path.ptr
  %t573 = load i64, i64* %t549
  %t574 = add i64 %t573, 1
  %t575 = load %nyx_string*, %nyx_string** %path.ptr
  %t576 = call i64 @nyx_string_byte_length(%nyx_string* %t575)
  %t577 = call %nyx_string* @nyx_string_substring(%nyx_string* %t572, i64 %t574, i64 %t576)
  ret %nyx_string* %t577
else151:
  br label %merge152
merge152:
  %t578 = load %nyx_string*, %nyx_string** %path.ptr
  ret %nyx_string* %t578
}

define internal %nyx_string* @extract_module_alias(
%nyx_string* %line.param) {
  %line.ptr = alloca %nyx_string*
  %t583 = alloca i64
  %t586 = alloca %nyx_string*
  %t597 = alloca i8
  %t604 = alloca i8
  %t611 = alloca i8
  %t618 = alloca i8
  %t619 = alloca i1
  %t620 = alloca i1
  %t621 = alloca i1
  %t650 = alloca %nyx_string*
  %t653 = alloca i64
  %t663 = alloca i8
  %t664 = alloca i1
  %t695 = alloca %nyx_string*
  store %nyx_string* %line.param, %nyx_string** %line.ptr
  %t579 = load %nyx_string*, %nyx_string** %line.ptr
  %t580 = getelementptr [5 x i8], [5 x i8]* @.str66, i32 0, i32 0
  %t581 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str66.c, i8* %t580, i64 4)
  %t582 = call i1 @nyx_string_contains(%nyx_string* %t579, %nyx_string* %t581)
  br i1 %t582, label %then153, label %else154
then153:
  store i64 0, i64* %t583
  %t584 = getelementptr [1 x i8], [1 x i8]* @.str67, i32 0, i32 0
  %t585 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str67.c, i8* %t584, i64 0)
  store %nyx_string* %t585, %nyx_string** %t586
  br label %while_cond156
while_cond156:
  %t587 = load i64, i64* %t583
  %t588 = load %nyx_string*, %nyx_string** %line.ptr
  %t589 = call i64 @nyx_string_byte_length(%nyx_string* %t588)
  %t590 = sub i64 %t589, 4
  %t591 = icmp slt i64 %t587, %t590
  br i1 %t591, label %while_body157, label %while_end158
while_body157:
  %t592 = load %nyx_string*, %nyx_string** %line.ptr
  %t593 = load i64, i64* %t583
  %t594 = call i8 @nyx_string_char_at(%nyx_string* %t592, i64 %t593)
  %t595 = zext i8 %t594 to i64
  %t596 = trunc i64 %t595 to i8
  store i8 %t596, i8* %t597
  %t598 = load %nyx_string*, %nyx_string** %line.ptr
  %t599 = load i64, i64* %t583
  %t600 = add i64 %t599, 1
  %t601 = call i8 @nyx_string_char_at(%nyx_string* %t598, i64 %t600)
  %t602 = zext i8 %t601 to i64
  %t603 = trunc i64 %t602 to i8
  store i8 %t603, i8* %t604
  %t605 = load %nyx_string*, %nyx_string** %line.ptr
  %t606 = load i64, i64* %t583
  %t607 = add i64 %t606, 2
  %t608 = call i8 @nyx_string_char_at(%nyx_string* %t605, i64 %t607)
  %t609 = zext i8 %t608 to i64
  %t610 = trunc i64 %t609 to i8
  store i8 %t610, i8* %t611
  %t612 = load %nyx_string*, %nyx_string** %line.ptr
  %t613 = load i64, i64* %t583
  %t614 = add i64 %t613, 3
  %t615 = call i8 @nyx_string_char_at(%nyx_string* %t612, i64 %t614)
  %t616 = zext i8 %t615 to i64
  %t617 = trunc i64 %t616 to i8
  store i8 %t617, i8* %t618
  store i1 false, i1* %t619
  store i1 false, i1* %t620
  store i1 false, i1* %t621
  %t622 = load i8, i8* %t597
  %t623 = getelementptr [1 x i8], [1 x i8]* @.str68, i32 0, i32 0
  %t624 = load i8, i8* %t623
  %t625 = zext i8 %t624 to i64
  %t626 = zext i8 %t622 to i64
  %t627 = icmp eq i64 %t626, %t625
  br i1 %t627, label %sc_and_rhs159, label %sc_and_end160
sc_and_rhs159:
  %t628 = load i8, i8* %t604
  %t629 = getelementptr [1 x i8], [1 x i8]* @.str69, i32 0, i32 0
  %t630 = load i8, i8* %t629
  %t631 = zext i8 %t630 to i64
  %t632 = zext i8 %t628 to i64
  %t633 = icmp eq i64 %t632, %t631
  store i1 %t633, i1* %t621
  br label %sc_and_end160
sc_and_end160:
  %t634 = load i1, i1* %t621
  br i1 %t634, label %sc_and_rhs161, label %sc_and_end162
sc_and_rhs161:
  %t635 = load i8, i8* %t611
  %t636 = getelementptr [1 x i8], [1 x i8]* @.str70, i32 0, i32 0
  %t637 = load i8, i8* %t636
  %t638 = zext i8 %t637 to i64
  %t639 = zext i8 %t635 to i64
  %t640 = icmp eq i64 %t639, %t638
  store i1 %t640, i1* %t620
  br label %sc_and_end162
sc_and_end162:
  %t641 = load i1, i1* %t620
  br i1 %t641, label %sc_and_rhs163, label %sc_and_end164
sc_and_rhs163:
  %t642 = load i8, i8* %t618
  %t643 = getelementptr [1 x i8], [1 x i8]* @.str71, i32 0, i32 0
  %t644 = load i8, i8* %t643
  %t645 = zext i8 %t644 to i64
  %t646 = zext i8 %t642 to i64
  %t647 = icmp eq i64 %t646, %t645
  store i1 %t647, i1* %t619
  br label %sc_and_end164
sc_and_end164:
  %t648 = load i1, i1* %t619
  br i1 %t648, label %then165, label %else166
then165:
  %t649 = load %nyx_string*, %nyx_string** %t586
  store %nyx_string* %t649, %nyx_string** %t650
  %t651 = load i64, i64* %t583
  %t652 = add i64 %t651, 4
  store i64 %t652, i64* %t653
  br label %while_cond168
while_cond168:
  %t654 = load i64, i64* %t653
  %t655 = load %nyx_string*, %nyx_string** %line.ptr
  %t656 = call i64 @nyx_string_byte_length(%nyx_string* %t655)
  %t657 = icmp slt i64 %t654, %t656
  br i1 %t657, label %while_body169, label %while_end170
while_body169:
  %t658 = load %nyx_string*, %nyx_string** %line.ptr
  %t659 = load i64, i64* %t653
  %t660 = call i8 @nyx_string_char_at(%nyx_string* %t658, i64 %t659)
  %t661 = zext i8 %t660 to i64
  %t662 = trunc i64 %t661 to i8
  store i8 %t662, i8* %t663
  store i1 true, i1* %t664
  %t665 = load i8, i8* %t663
  %t666 = getelementptr [1 x i8], [1 x i8]* @.str72, i32 0, i32 0
  %t667 = load i8, i8* %t666
  %t668 = zext i8 %t667 to i64
  %t669 = zext i8 %t665 to i64
  %t670 = icmp eq i64 %t669, %t668
  br i1 %t670, label %sc_or_end172, label %sc_or_rhs171
sc_or_rhs171:
  %t671 = load i8, i8* %t663
  %t672 = getelementptr [1 x i8], [1 x i8]* @.str73, i32 0, i32 0
  %t673 = load i8, i8* %t672
  %t674 = zext i8 %t673 to i64
  %t675 = zext i8 %t671 to i64
  %t676 = icmp eq i64 %t675, %t674
  store i1 %t676, i1* %t664
  br label %sc_or_end172
sc_or_end172:
  %t677 = load i1, i1* %t664
  br i1 %t677, label %then173, label %else174
then173:
  %t678 = load %nyx_string*, %nyx_string** %line.ptr
  %t679 = call i64 @nyx_string_byte_length(%nyx_string* %t678)
  store i64 %t679, i64* %t653
  br label %merge175
else174:
  %t680 = load %nyx_string*, %nyx_string** %t650
  %t681 = load i8, i8* %t663
  %t682 = call %nyx_string* @nyx_string_from_char(i8 %t681)
  %t683 = call %nyx_string* @nyx_string_concat(%nyx_string* %t680, %nyx_string* %t682)
  store %nyx_string* %t683, %nyx_string** %t650
  %t684 = load i64, i64* %t653
  %t685 = add i64 %t684, 1
  store i64 %t685, i64* %t653
  br label %merge175
merge175:
  br label %while_cond168
while_end170:
  %t686 = load %nyx_string*, %nyx_string** %t650
  %t687 = load %nyx_string*, %nyx_string** %t586
  %t688 = call i1 @nyx_string_equals(%nyx_string* %t686, %nyx_string* %t687)
  %t689 = xor i1 %t688, true
  br i1 %t689, label %then176, label %else177
then176:
  %t690 = load %nyx_string*, %nyx_string** %t650
  ret %nyx_string* %t690
else177:
  br label %merge178
merge178:
  br label %merge167
else166:
  br label %merge167
merge167:
  %t691 = load i64, i64* %t583
  %t692 = add i64 %t691, 1
  store i64 %t692, i64* %t583
  br label %while_cond156
while_end158:
  br label %merge155
else154:
  br label %merge155
merge155:
  %t693 = load %nyx_string*, %nyx_string** %line.ptr
  %t694 = call %nyx_string* @find_import_path(%nyx_string* %t693)
  store %nyx_string* %t694, %nyx_string** %t695
  %t696 = load %nyx_string*, %nyx_string** %t695
  %t697 = call %nyx_string* @base_name_from_path(%nyx_string* %t696)
  ret %nyx_string* %t697
}

define internal { i64, i8* }* @extract_exports(
%nyx_string* %source.param) {
  %source.ptr = alloca %nyx_string*
  %t699 = alloca { i64, i8* }*
  %t704 = alloca { i64, i8* }*
  %t705 = alloca i64
  %t708 = alloca %nyx_string*
  %t711 = alloca %nyx_string*
  %t714 = alloca %nyx_string*
  %t717 = alloca %nyx_string*
  %t720 = alloca %nyx_string*
  %t723 = alloca %nyx_string*
  %t726 = alloca %nyx_string*
  %t729 = alloca %nyx_string*
  %t732 = alloca %nyx_string*
  %t735 = alloca %nyx_string*
  %t738 = alloca %nyx_string*
  %t747 = alloca %nyx_string*
  %t748 = alloca i1
  %t762 = alloca %nyx_string*
  %t770 = alloca %nyx_string*
  %t772 = alloca %nyx_string*
  %t773 = alloca i64
  %t774 = alloca i1
  %t775 = alloca i1
  %t788 = alloca i8
  %t789 = alloca i1
  %t790 = alloca i1
  %t831 = alloca %nyx_string*
  %t833 = alloca %nyx_string*
  %t834 = alloca i64
  %t835 = alloca i1
  %t836 = alloca i1
  %t849 = alloca i8
  %t850 = alloca i1
  %t851 = alloca i1
  %t892 = alloca %nyx_string*
  %t894 = alloca %nyx_string*
  %t895 = alloca i64
  %t896 = alloca i1
  %t897 = alloca i1
  %t910 = alloca i8
  %t911 = alloca i1
  %t912 = alloca i1
  %t953 = alloca %nyx_string*
  %t955 = alloca %nyx_string*
  %t956 = alloca i64
  %t957 = alloca i1
  %t958 = alloca i1
  %t971 = alloca i8
  %t972 = alloca i1
  %t973 = alloca i1
  %t1014 = alloca %nyx_string*
  %t1016 = alloca %nyx_string*
  %t1017 = alloca i64
  %t1018 = alloca i1
  %t1019 = alloca i1
  %t1032 = alloca i8
  %t1033 = alloca i1
  %t1034 = alloca i1
  %t1035 = alloca i1
  %t1083 = alloca %nyx_string*
  %t1085 = alloca %nyx_string*
  %t1086 = alloca i64
  %t1087 = alloca i1
  %t1088 = alloca i1
  %t1101 = alloca i8
  %t1102 = alloca i1
  %t1103 = alloca i1
  %t1104 = alloca i1
  %t1152 = alloca %nyx_string*
  %t1154 = alloca %nyx_string*
  %t1155 = alloca i64
  %t1156 = alloca i1
  %t1157 = alloca i1
  %t1170 = alloca i8
  %t1171 = alloca i1
  %t1172 = alloca i1
  %t1213 = alloca %nyx_string*
  %t1215 = alloca %nyx_string*
  %t1216 = alloca i64
  %t1217 = alloca i1
  %t1218 = alloca i1
  %t1231 = alloca i8
  %t1232 = alloca i1
  %t1233 = alloca i1
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  %t698 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t698, { i64, i8* }** %t699
  %t700 = load %nyx_string*, %nyx_string** %source.ptr
  %t701 = getelementptr [2 x i8], [2 x i8]* @.str74, i32 0, i32 0
  %t702 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str74.c, i8* %t701, i64 1)
  %t703 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t700, %nyx_string* %t702)
  store { i64, i8* }* %t703, { i64, i8* }** %t704
  store i64 0, i64* %t705
  %t706 = getelementptr [5 x i8], [5 x i8]* @.str75, i32 0, i32 0
  %t707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str75.c, i8* %t706, i64 4)
  store %nyx_string* %t707, %nyx_string** %t708
  %t709 = getelementptr [8 x i8], [8 x i8]* @.str76, i32 0, i32 0
  %t710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str76.c, i8* %t709, i64 7)
  store %nyx_string* %t710, %nyx_string** %t711
  %t712 = getelementptr [8 x i8], [8 x i8]* @.str77, i32 0, i32 0
  %t713 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str77.c, i8* %t712, i64 7)
  store %nyx_string* %t713, %nyx_string** %t714
  %t715 = getelementptr [1 x i8], [1 x i8]* @.str78, i32 0, i32 0
  %t716 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str78.c, i8* %t715, i64 0)
  store %nyx_string* %t716, %nyx_string** %t717
  %t718 = getelementptr [11 x i8], [11 x i8]* @.str79, i32 0, i32 0
  %t719 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str79.c, i8* %t718, i64 10)
  store %nyx_string* %t719, %nyx_string** %t720
  %t721 = getelementptr [14 x i8], [14 x i8]* @.str80, i32 0, i32 0
  %t722 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str80.c, i8* %t721, i64 13)
  store %nyx_string* %t722, %nyx_string** %t723
  %t724 = getelementptr [17 x i8], [17 x i8]* @.str81, i32 0, i32 0
  %t725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str81.c, i8* %t724, i64 16)
  store %nyx_string* %t725, %nyx_string** %t726
  %t727 = getelementptr [12 x i8], [12 x i8]* @.str82, i32 0, i32 0
  %t728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str82.c, i8* %t727, i64 11)
  store %nyx_string* %t728, %nyx_string** %t729
  %t730 = getelementptr [15 x i8], [15 x i8]* @.str83, i32 0, i32 0
  %t731 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str83.c, i8* %t730, i64 14)
  store %nyx_string* %t731, %nyx_string** %t732
  %t733 = getelementptr [10 x i8], [10 x i8]* @.str84, i32 0, i32 0
  %t734 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str84.c, i8* %t733, i64 9)
  store %nyx_string* %t734, %nyx_string** %t735
  %t736 = getelementptr [13 x i8], [13 x i8]* @.str85, i32 0, i32 0
  %t737 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str85.c, i8* %t736, i64 12)
  store %nyx_string* %t737, %nyx_string** %t738
  br label %while_cond179
while_cond179:
  %t739 = load i64, i64* %t705
  %t740 = load { i64, i8* }*, { i64, i8* }** %t704
  %t741 = call i64 @nyx_array_length({ i64, i8* }* %t740)
  %t742 = icmp slt i64 %t739, %t741
  br i1 %t742, label %while_body180, label %while_end181
while_body180:
  %t743 = load { i64, i8* }*, { i64, i8* }** %t704
  %t744 = load i64, i64* %t705
  %t745 = call i64 @nyx_array_get_checked({ i64, i8* }* %t743, i64 %t744, i64 2)
  %t746 = inttoptr i64 %t745 to %nyx_string*
  store %nyx_string* %t746, %nyx_string** %t747
  store i1 false, i1* %t748
  %t749 = load %nyx_string*, %nyx_string** %t747
  %t750 = load %nyx_string*, %nyx_string** %t708
  %t751 = call i1 @nyx_string_contains(%nyx_string* %t749, %nyx_string* %t750)
  %t752 = xor i1 %t751, true
  br i1 %t752, label %sc_and_rhs182, label %sc_and_end183
sc_and_rhs182:
  %t753 = load %nyx_string*, %nyx_string** %t747
  %t754 = load %nyx_string*, %nyx_string** %t711
  %t755 = call i1 @nyx_string_contains(%nyx_string* %t753, %nyx_string* %t754)
  %t756 = xor i1 %t755, true
  store i1 %t756, i1* %t748
  br label %sc_and_end183
sc_and_end183:
  %t757 = load i1, i1* %t748
  br i1 %t757, label %then184, label %else185
then184:
  %t758 = load i64, i64* %t705
  %t759 = add i64 %t758, 1
  store i64 %t759, i64* %t705
  br label %while_cond179
else185:
  br label %merge186
merge186:
  %t760 = load %nyx_string*, %nyx_string** %t747
  %t761 = call %nyx_string* @nyx_string_trim(%nyx_string* %t760)
  store %nyx_string* %t761, %nyx_string** %t762
  %t763 = load %nyx_string*, %nyx_string** %t762
  %t764 = load %nyx_string*, %nyx_string** %t714
  %t765 = call i1 @nyx_string_starts_with(%nyx_string* %t763, %nyx_string* %t764)
  br i1 %t765, label %then187, label %else188
then187:
  %t766 = load %nyx_string*, %nyx_string** %t762
  %t767 = load %nyx_string*, %nyx_string** %t762
  %t768 = call i64 @nyx_string_byte_length(%nyx_string* %t767)
  %t769 = call %nyx_string* @nyx_string_substring(%nyx_string* %t766, i64 7, i64 %t768)
  store %nyx_string* %t769, %nyx_string** %t770
  %t771 = load %nyx_string*, %nyx_string** %t717
  store %nyx_string* %t771, %nyx_string** %t772
  store i64 0, i64* %t773
  store i1 0, i1* %t774
  br label %while_cond190
while_cond190:
  store i1 false, i1* %t775
  %t776 = load i64, i64* %t773
  %t777 = load %nyx_string*, %nyx_string** %t770
  %t778 = call i64 @nyx_string_byte_length(%nyx_string* %t777)
  %t779 = icmp slt i64 %t776, %t778
  br i1 %t779, label %sc_and_rhs193, label %sc_and_end194
sc_and_rhs193:
  %t780 = load i1, i1* %t774
  %t781 = xor i1 %t780, true
  store i1 %t781, i1* %t775
  br label %sc_and_end194
sc_and_end194:
  %t782 = load i1, i1* %t775
  br i1 %t782, label %while_body191, label %while_end192
while_body191:
  %t783 = load %nyx_string*, %nyx_string** %t770
  %t784 = load i64, i64* %t773
  %t785 = call i8 @nyx_string_char_at(%nyx_string* %t783, i64 %t784)
  %t786 = zext i8 %t785 to i64
  %t787 = trunc i64 %t786 to i8
  store i8 %t787, i8* %t788
  store i1 true, i1* %t789
  store i1 true, i1* %t790
  %t791 = load i8, i8* %t788
  %t792 = getelementptr [1 x i8], [1 x i8]* @.str86, i32 0, i32 0
  %t793 = load i8, i8* %t792
  %t794 = zext i8 %t793 to i64
  %t795 = zext i8 %t791 to i64
  %t796 = icmp eq i64 %t795, %t794
  br i1 %t796, label %sc_or_end196, label %sc_or_rhs195
sc_or_rhs195:
  %t797 = load i8, i8* %t788
  %t798 = getelementptr [1 x i8], [1 x i8]* @.str87, i32 0, i32 0
  %t799 = load i8, i8* %t798
  %t800 = zext i8 %t799 to i64
  %t801 = zext i8 %t797 to i64
  %t802 = icmp eq i64 %t801, %t800
  store i1 %t802, i1* %t790
  br label %sc_or_end196
sc_or_end196:
  %t803 = load i1, i1* %t790
  br i1 %t803, label %sc_or_end198, label %sc_or_rhs197
sc_or_rhs197:
  %t804 = load i8, i8* %t788
  %t805 = getelementptr [1 x i8], [1 x i8]* @.str88, i32 0, i32 0
  %t806 = load i8, i8* %t805
  %t807 = zext i8 %t806 to i64
  %t808 = zext i8 %t804 to i64
  %t809 = icmp eq i64 %t808, %t807
  store i1 %t809, i1* %t789
  br label %sc_or_end198
sc_or_end198:
  %t810 = load i1, i1* %t789
  br i1 %t810, label %then199, label %else200
then199:
  store i1 1, i1* %t774
  br label %merge201
else200:
  %t811 = load %nyx_string*, %nyx_string** %t772
  %t812 = load i8, i8* %t788
  %t813 = call %nyx_string* @nyx_string_from_char(i8 %t812)
  %t814 = call %nyx_string* @nyx_string_concat(%nyx_string* %t811, %nyx_string* %t813)
  store %nyx_string* %t814, %nyx_string** %t772
  %t815 = load i64, i64* %t773
  %t816 = add i64 %t815, 1
  store i64 %t816, i64* %t773
  br label %merge201
merge201:
  br label %while_cond190
while_end192:
  %t817 = load %nyx_string*, %nyx_string** %t772
  %t818 = load %nyx_string*, %nyx_string** %t717
  %t819 = call i1 @nyx_string_equals(%nyx_string* %t817, %nyx_string* %t818)
  %t820 = xor i1 %t819, true
  br i1 %t820, label %then202, label %else203
then202:
  %t821 = load { i64, i8* }*, { i64, i8* }** %t699
  %t822 = load %nyx_string*, %nyx_string** %t772
  %t823 = ptrtoint %nyx_string* %t822 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t821, i64 %t823, i64 2)
  br label %merge204
else203:
  br label %merge204
merge204:
  br label %merge189
else188:
  br label %merge189
merge189:
  %t824 = load %nyx_string*, %nyx_string** %t762
  %t825 = load %nyx_string*, %nyx_string** %t720
  %t826 = call i1 @nyx_string_starts_with(%nyx_string* %t824, %nyx_string* %t825)
  br i1 %t826, label %then205, label %else206
then205:
  %t827 = load %nyx_string*, %nyx_string** %t762
  %t828 = load %nyx_string*, %nyx_string** %t762
  %t829 = call i64 @nyx_string_byte_length(%nyx_string* %t828)
  %t830 = call %nyx_string* @nyx_string_substring(%nyx_string* %t827, i64 10, i64 %t829)
  store %nyx_string* %t830, %nyx_string** %t831
  %t832 = load %nyx_string*, %nyx_string** %t717
  store %nyx_string* %t832, %nyx_string** %t833
  store i64 0, i64* %t834
  store i1 0, i1* %t835
  br label %while_cond208
while_cond208:
  store i1 false, i1* %t836
  %t837 = load i64, i64* %t834
  %t838 = load %nyx_string*, %nyx_string** %t831
  %t839 = call i64 @nyx_string_byte_length(%nyx_string* %t838)
  %t840 = icmp slt i64 %t837, %t839
  br i1 %t840, label %sc_and_rhs211, label %sc_and_end212
sc_and_rhs211:
  %t841 = load i1, i1* %t835
  %t842 = xor i1 %t841, true
  store i1 %t842, i1* %t836
  br label %sc_and_end212
sc_and_end212:
  %t843 = load i1, i1* %t836
  br i1 %t843, label %while_body209, label %while_end210
while_body209:
  %t844 = load %nyx_string*, %nyx_string** %t831
  %t845 = load i64, i64* %t834
  %t846 = call i8 @nyx_string_char_at(%nyx_string* %t844, i64 %t845)
  %t847 = zext i8 %t846 to i64
  %t848 = trunc i64 %t847 to i8
  store i8 %t848, i8* %t849
  store i1 true, i1* %t850
  store i1 true, i1* %t851
  %t852 = load i8, i8* %t849
  %t853 = getelementptr [1 x i8], [1 x i8]* @.str89, i32 0, i32 0
  %t854 = load i8, i8* %t853
  %t855 = zext i8 %t854 to i64
  %t856 = zext i8 %t852 to i64
  %t857 = icmp eq i64 %t856, %t855
  br i1 %t857, label %sc_or_end214, label %sc_or_rhs213
sc_or_rhs213:
  %t858 = load i8, i8* %t849
  %t859 = getelementptr [1 x i8], [1 x i8]* @.str90, i32 0, i32 0
  %t860 = load i8, i8* %t859
  %t861 = zext i8 %t860 to i64
  %t862 = zext i8 %t858 to i64
  %t863 = icmp eq i64 %t862, %t861
  store i1 %t863, i1* %t851
  br label %sc_or_end214
sc_or_end214:
  %t864 = load i1, i1* %t851
  br i1 %t864, label %sc_or_end216, label %sc_or_rhs215
sc_or_rhs215:
  %t865 = load i8, i8* %t849
  %t866 = getelementptr [1 x i8], [1 x i8]* @.str91, i32 0, i32 0
  %t867 = load i8, i8* %t866
  %t868 = zext i8 %t867 to i64
  %t869 = zext i8 %t865 to i64
  %t870 = icmp eq i64 %t869, %t868
  store i1 %t870, i1* %t850
  br label %sc_or_end216
sc_or_end216:
  %t871 = load i1, i1* %t850
  br i1 %t871, label %then217, label %else218
then217:
  store i1 1, i1* %t835
  br label %merge219
else218:
  %t872 = load %nyx_string*, %nyx_string** %t833
  %t873 = load i8, i8* %t849
  %t874 = call %nyx_string* @nyx_string_from_char(i8 %t873)
  %t875 = call %nyx_string* @nyx_string_concat(%nyx_string* %t872, %nyx_string* %t874)
  store %nyx_string* %t875, %nyx_string** %t833
  %t876 = load i64, i64* %t834
  %t877 = add i64 %t876, 1
  store i64 %t877, i64* %t834
  br label %merge219
merge219:
  br label %while_cond208
while_end210:
  %t878 = load %nyx_string*, %nyx_string** %t833
  %t879 = load %nyx_string*, %nyx_string** %t717
  %t880 = call i1 @nyx_string_equals(%nyx_string* %t878, %nyx_string* %t879)
  %t881 = xor i1 %t880, true
  br i1 %t881, label %then220, label %else221
then220:
  %t882 = load { i64, i8* }*, { i64, i8* }** %t699
  %t883 = load %nyx_string*, %nyx_string** %t833
  %t884 = ptrtoint %nyx_string* %t883 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t882, i64 %t884, i64 2)
  br label %merge222
else221:
  br label %merge222
merge222:
  br label %merge207
else206:
  br label %merge207
merge207:
  %t885 = load %nyx_string*, %nyx_string** %t762
  %t886 = load %nyx_string*, %nyx_string** %t723
  %t887 = call i1 @nyx_string_starts_with(%nyx_string* %t885, %nyx_string* %t886)
  br i1 %t887, label %then223, label %else224
then223:
  %t888 = load %nyx_string*, %nyx_string** %t762
  %t889 = load %nyx_string*, %nyx_string** %t762
  %t890 = call i64 @nyx_string_byte_length(%nyx_string* %t889)
  %t891 = call %nyx_string* @nyx_string_substring(%nyx_string* %t888, i64 13, i64 %t890)
  store %nyx_string* %t891, %nyx_string** %t892
  %t893 = load %nyx_string*, %nyx_string** %t717
  store %nyx_string* %t893, %nyx_string** %t894
  store i64 0, i64* %t895
  store i1 0, i1* %t896
  br label %while_cond226
while_cond226:
  store i1 false, i1* %t897
  %t898 = load i64, i64* %t895
  %t899 = load %nyx_string*, %nyx_string** %t892
  %t900 = call i64 @nyx_string_byte_length(%nyx_string* %t899)
  %t901 = icmp slt i64 %t898, %t900
  br i1 %t901, label %sc_and_rhs229, label %sc_and_end230
sc_and_rhs229:
  %t902 = load i1, i1* %t896
  %t903 = xor i1 %t902, true
  store i1 %t903, i1* %t897
  br label %sc_and_end230
sc_and_end230:
  %t904 = load i1, i1* %t897
  br i1 %t904, label %while_body227, label %while_end228
while_body227:
  %t905 = load %nyx_string*, %nyx_string** %t892
  %t906 = load i64, i64* %t895
  %t907 = call i8 @nyx_string_char_at(%nyx_string* %t905, i64 %t906)
  %t908 = zext i8 %t907 to i64
  %t909 = trunc i64 %t908 to i8
  store i8 %t909, i8* %t910
  store i1 true, i1* %t911
  store i1 true, i1* %t912
  %t913 = load i8, i8* %t910
  %t914 = getelementptr [1 x i8], [1 x i8]* @.str92, i32 0, i32 0
  %t915 = load i8, i8* %t914
  %t916 = zext i8 %t915 to i64
  %t917 = zext i8 %t913 to i64
  %t918 = icmp eq i64 %t917, %t916
  br i1 %t918, label %sc_or_end232, label %sc_or_rhs231
sc_or_rhs231:
  %t919 = load i8, i8* %t910
  %t920 = getelementptr [1 x i8], [1 x i8]* @.str93, i32 0, i32 0
  %t921 = load i8, i8* %t920
  %t922 = zext i8 %t921 to i64
  %t923 = zext i8 %t919 to i64
  %t924 = icmp eq i64 %t923, %t922
  store i1 %t924, i1* %t912
  br label %sc_or_end232
sc_or_end232:
  %t925 = load i1, i1* %t912
  br i1 %t925, label %sc_or_end234, label %sc_or_rhs233
sc_or_rhs233:
  %t926 = load i8, i8* %t910
  %t927 = getelementptr [1 x i8], [1 x i8]* @.str94, i32 0, i32 0
  %t928 = load i8, i8* %t927
  %t929 = zext i8 %t928 to i64
  %t930 = zext i8 %t926 to i64
  %t931 = icmp eq i64 %t930, %t929
  store i1 %t931, i1* %t911
  br label %sc_or_end234
sc_or_end234:
  %t932 = load i1, i1* %t911
  br i1 %t932, label %then235, label %else236
then235:
  store i1 1, i1* %t896
  br label %merge237
else236:
  %t933 = load %nyx_string*, %nyx_string** %t894
  %t934 = load i8, i8* %t910
  %t935 = call %nyx_string* @nyx_string_from_char(i8 %t934)
  %t936 = call %nyx_string* @nyx_string_concat(%nyx_string* %t933, %nyx_string* %t935)
  store %nyx_string* %t936, %nyx_string** %t894
  %t937 = load i64, i64* %t895
  %t938 = add i64 %t937, 1
  store i64 %t938, i64* %t895
  br label %merge237
merge237:
  br label %while_cond226
while_end228:
  %t939 = load %nyx_string*, %nyx_string** %t894
  %t940 = load %nyx_string*, %nyx_string** %t717
  %t941 = call i1 @nyx_string_equals(%nyx_string* %t939, %nyx_string* %t940)
  %t942 = xor i1 %t941, true
  br i1 %t942, label %then238, label %else239
then238:
  %t943 = load { i64, i8* }*, { i64, i8* }** %t699
  %t944 = load %nyx_string*, %nyx_string** %t894
  %t945 = ptrtoint %nyx_string* %t944 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t943, i64 %t945, i64 2)
  br label %merge240
else239:
  br label %merge240
merge240:
  br label %merge225
else224:
  br label %merge225
merge225:
  %t946 = load %nyx_string*, %nyx_string** %t762
  %t947 = load %nyx_string*, %nyx_string** %t726
  %t948 = call i1 @nyx_string_starts_with(%nyx_string* %t946, %nyx_string* %t947)
  br i1 %t948, label %then241, label %else242
then241:
  %t949 = load %nyx_string*, %nyx_string** %t762
  %t950 = load %nyx_string*, %nyx_string** %t762
  %t951 = call i64 @nyx_string_byte_length(%nyx_string* %t950)
  %t952 = call %nyx_string* @nyx_string_substring(%nyx_string* %t949, i64 16, i64 %t951)
  store %nyx_string* %t952, %nyx_string** %t953
  %t954 = load %nyx_string*, %nyx_string** %t717
  store %nyx_string* %t954, %nyx_string** %t955
  store i64 0, i64* %t956
  store i1 0, i1* %t957
  br label %while_cond244
while_cond244:
  store i1 false, i1* %t958
  %t959 = load i64, i64* %t956
  %t960 = load %nyx_string*, %nyx_string** %t953
  %t961 = call i64 @nyx_string_byte_length(%nyx_string* %t960)
  %t962 = icmp slt i64 %t959, %t961
  br i1 %t962, label %sc_and_rhs247, label %sc_and_end248
sc_and_rhs247:
  %t963 = load i1, i1* %t957
  %t964 = xor i1 %t963, true
  store i1 %t964, i1* %t958
  br label %sc_and_end248
sc_and_end248:
  %t965 = load i1, i1* %t958
  br i1 %t965, label %while_body245, label %while_end246
while_body245:
  %t966 = load %nyx_string*, %nyx_string** %t953
  %t967 = load i64, i64* %t956
  %t968 = call i8 @nyx_string_char_at(%nyx_string* %t966, i64 %t967)
  %t969 = zext i8 %t968 to i64
  %t970 = trunc i64 %t969 to i8
  store i8 %t970, i8* %t971
  store i1 true, i1* %t972
  store i1 true, i1* %t973
  %t974 = load i8, i8* %t971
  %t975 = getelementptr [1 x i8], [1 x i8]* @.str95, i32 0, i32 0
  %t976 = load i8, i8* %t975
  %t977 = zext i8 %t976 to i64
  %t978 = zext i8 %t974 to i64
  %t979 = icmp eq i64 %t978, %t977
  br i1 %t979, label %sc_or_end250, label %sc_or_rhs249
sc_or_rhs249:
  %t980 = load i8, i8* %t971
  %t981 = getelementptr [1 x i8], [1 x i8]* @.str96, i32 0, i32 0
  %t982 = load i8, i8* %t981
  %t983 = zext i8 %t982 to i64
  %t984 = zext i8 %t980 to i64
  %t985 = icmp eq i64 %t984, %t983
  store i1 %t985, i1* %t973
  br label %sc_or_end250
sc_or_end250:
  %t986 = load i1, i1* %t973
  br i1 %t986, label %sc_or_end252, label %sc_or_rhs251
sc_or_rhs251:
  %t987 = load i8, i8* %t971
  %t988 = getelementptr [1 x i8], [1 x i8]* @.str97, i32 0, i32 0
  %t989 = load i8, i8* %t988
  %t990 = zext i8 %t989 to i64
  %t991 = zext i8 %t987 to i64
  %t992 = icmp eq i64 %t991, %t990
  store i1 %t992, i1* %t972
  br label %sc_or_end252
sc_or_end252:
  %t993 = load i1, i1* %t972
  br i1 %t993, label %then253, label %else254
then253:
  store i1 1, i1* %t957
  br label %merge255
else254:
  %t994 = load %nyx_string*, %nyx_string** %t955
  %t995 = load i8, i8* %t971
  %t996 = call %nyx_string* @nyx_string_from_char(i8 %t995)
  %t997 = call %nyx_string* @nyx_string_concat(%nyx_string* %t994, %nyx_string* %t996)
  store %nyx_string* %t997, %nyx_string** %t955
  %t998 = load i64, i64* %t956
  %t999 = add i64 %t998, 1
  store i64 %t999, i64* %t956
  br label %merge255
merge255:
  br label %while_cond244
while_end246:
  %t1000 = load %nyx_string*, %nyx_string** %t955
  %t1001 = load %nyx_string*, %nyx_string** %t717
  %t1002 = call i1 @nyx_string_equals(%nyx_string* %t1000, %nyx_string* %t1001)
  %t1003 = xor i1 %t1002, true
  br i1 %t1003, label %then256, label %else257
then256:
  %t1004 = load { i64, i8* }*, { i64, i8* }** %t699
  %t1005 = load %nyx_string*, %nyx_string** %t955
  %t1006 = ptrtoint %nyx_string* %t1005 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1004, i64 %t1006, i64 2)
  br label %merge258
else257:
  br label %merge258
merge258:
  br label %merge243
else242:
  br label %merge243
merge243:
  %t1007 = load %nyx_string*, %nyx_string** %t762
  %t1008 = load %nyx_string*, %nyx_string** %t729
  %t1009 = call i1 @nyx_string_starts_with(%nyx_string* %t1007, %nyx_string* %t1008)
  br i1 %t1009, label %then259, label %else260
then259:
  %t1010 = load %nyx_string*, %nyx_string** %t762
  %t1011 = load %nyx_string*, %nyx_string** %t762
  %t1012 = call i64 @nyx_string_byte_length(%nyx_string* %t1011)
  %t1013 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1010, i64 11, i64 %t1012)
  store %nyx_string* %t1013, %nyx_string** %t1014
  %t1015 = load %nyx_string*, %nyx_string** %t717
  store %nyx_string* %t1015, %nyx_string** %t1016
  store i64 0, i64* %t1017
  store i1 0, i1* %t1018
  br label %while_cond262
while_cond262:
  store i1 false, i1* %t1019
  %t1020 = load i64, i64* %t1017
  %t1021 = load %nyx_string*, %nyx_string** %t1014
  %t1022 = call i64 @nyx_string_byte_length(%nyx_string* %t1021)
  %t1023 = icmp slt i64 %t1020, %t1022
  br i1 %t1023, label %sc_and_rhs265, label %sc_and_end266
sc_and_rhs265:
  %t1024 = load i1, i1* %t1018
  %t1025 = xor i1 %t1024, true
  store i1 %t1025, i1* %t1019
  br label %sc_and_end266
sc_and_end266:
  %t1026 = load i1, i1* %t1019
  br i1 %t1026, label %while_body263, label %while_end264
while_body263:
  %t1027 = load %nyx_string*, %nyx_string** %t1014
  %t1028 = load i64, i64* %t1017
  %t1029 = call i8 @nyx_string_char_at(%nyx_string* %t1027, i64 %t1028)
  %t1030 = zext i8 %t1029 to i64
  %t1031 = trunc i64 %t1030 to i8
  store i8 %t1031, i8* %t1032
  store i1 true, i1* %t1033
  store i1 true, i1* %t1034
  store i1 true, i1* %t1035
  %t1036 = load i8, i8* %t1032
  %t1037 = getelementptr [1 x i8], [1 x i8]* @.str98, i32 0, i32 0
  %t1038 = load i8, i8* %t1037
  %t1039 = zext i8 %t1038 to i64
  %t1040 = zext i8 %t1036 to i64
  %t1041 = icmp eq i64 %t1040, %t1039
  br i1 %t1041, label %sc_or_end268, label %sc_or_rhs267
sc_or_rhs267:
  %t1042 = load i8, i8* %t1032
  %t1043 = getelementptr [1 x i8], [1 x i8]* @.str99, i32 0, i32 0
  %t1044 = load i8, i8* %t1043
  %t1045 = zext i8 %t1044 to i64
  %t1046 = zext i8 %t1042 to i64
  %t1047 = icmp eq i64 %t1046, %t1045
  store i1 %t1047, i1* %t1035
  br label %sc_or_end268
sc_or_end268:
  %t1048 = load i1, i1* %t1035
  br i1 %t1048, label %sc_or_end270, label %sc_or_rhs269
sc_or_rhs269:
  %t1049 = load i8, i8* %t1032
  %t1050 = getelementptr [1 x i8], [1 x i8]* @.str100, i32 0, i32 0
  %t1051 = load i8, i8* %t1050
  %t1052 = zext i8 %t1051 to i64
  %t1053 = zext i8 %t1049 to i64
  %t1054 = icmp eq i64 %t1053, %t1052
  store i1 %t1054, i1* %t1034
  br label %sc_or_end270
sc_or_end270:
  %t1055 = load i1, i1* %t1034
  br i1 %t1055, label %sc_or_end272, label %sc_or_rhs271
sc_or_rhs271:
  %t1056 = load i8, i8* %t1032
  %t1057 = getelementptr [1 x i8], [1 x i8]* @.str101, i32 0, i32 0
  %t1058 = load i8, i8* %t1057
  %t1059 = zext i8 %t1058 to i64
  %t1060 = zext i8 %t1056 to i64
  %t1061 = icmp eq i64 %t1060, %t1059
  store i1 %t1061, i1* %t1033
  br label %sc_or_end272
sc_or_end272:
  %t1062 = load i1, i1* %t1033
  br i1 %t1062, label %then273, label %else274
then273:
  store i1 1, i1* %t1018
  br label %merge275
else274:
  %t1063 = load %nyx_string*, %nyx_string** %t1016
  %t1064 = load i8, i8* %t1032
  %t1065 = call %nyx_string* @nyx_string_from_char(i8 %t1064)
  %t1066 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1063, %nyx_string* %t1065)
  store %nyx_string* %t1066, %nyx_string** %t1016
  %t1067 = load i64, i64* %t1017
  %t1068 = add i64 %t1067, 1
  store i64 %t1068, i64* %t1017
  br label %merge275
merge275:
  br label %while_cond262
while_end264:
  %t1069 = load %nyx_string*, %nyx_string** %t1016
  %t1070 = load %nyx_string*, %nyx_string** %t717
  %t1071 = call i1 @nyx_string_equals(%nyx_string* %t1069, %nyx_string* %t1070)
  %t1072 = xor i1 %t1071, true
  br i1 %t1072, label %then276, label %else277
then276:
  %t1073 = load { i64, i8* }*, { i64, i8* }** %t699
  %t1074 = load %nyx_string*, %nyx_string** %t1016
  %t1075 = ptrtoint %nyx_string* %t1074 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1073, i64 %t1075, i64 2)
  br label %merge278
else277:
  br label %merge278
merge278:
  br label %merge261
else260:
  br label %merge261
merge261:
  %t1076 = load %nyx_string*, %nyx_string** %t762
  %t1077 = load %nyx_string*, %nyx_string** %t732
  %t1078 = call i1 @nyx_string_starts_with(%nyx_string* %t1076, %nyx_string* %t1077)
  br i1 %t1078, label %then279, label %else280
then279:
  %t1079 = load %nyx_string*, %nyx_string** %t762
  %t1080 = load %nyx_string*, %nyx_string** %t762
  %t1081 = call i64 @nyx_string_byte_length(%nyx_string* %t1080)
  %t1082 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1079, i64 14, i64 %t1081)
  store %nyx_string* %t1082, %nyx_string** %t1083
  %t1084 = load %nyx_string*, %nyx_string** %t717
  store %nyx_string* %t1084, %nyx_string** %t1085
  store i64 0, i64* %t1086
  store i1 0, i1* %t1087
  br label %while_cond282
while_cond282:
  store i1 false, i1* %t1088
  %t1089 = load i64, i64* %t1086
  %t1090 = load %nyx_string*, %nyx_string** %t1083
  %t1091 = call i64 @nyx_string_byte_length(%nyx_string* %t1090)
  %t1092 = icmp slt i64 %t1089, %t1091
  br i1 %t1092, label %sc_and_rhs285, label %sc_and_end286
sc_and_rhs285:
  %t1093 = load i1, i1* %t1087
  %t1094 = xor i1 %t1093, true
  store i1 %t1094, i1* %t1088
  br label %sc_and_end286
sc_and_end286:
  %t1095 = load i1, i1* %t1088
  br i1 %t1095, label %while_body283, label %while_end284
while_body283:
  %t1096 = load %nyx_string*, %nyx_string** %t1083
  %t1097 = load i64, i64* %t1086
  %t1098 = call i8 @nyx_string_char_at(%nyx_string* %t1096, i64 %t1097)
  %t1099 = zext i8 %t1098 to i64
  %t1100 = trunc i64 %t1099 to i8
  store i8 %t1100, i8* %t1101
  store i1 true, i1* %t1102
  store i1 true, i1* %t1103
  store i1 true, i1* %t1104
  %t1105 = load i8, i8* %t1101
  %t1106 = getelementptr [1 x i8], [1 x i8]* @.str102, i32 0, i32 0
  %t1107 = load i8, i8* %t1106
  %t1108 = zext i8 %t1107 to i64
  %t1109 = zext i8 %t1105 to i64
  %t1110 = icmp eq i64 %t1109, %t1108
  br i1 %t1110, label %sc_or_end288, label %sc_or_rhs287
sc_or_rhs287:
  %t1111 = load i8, i8* %t1101
  %t1112 = getelementptr [1 x i8], [1 x i8]* @.str103, i32 0, i32 0
  %t1113 = load i8, i8* %t1112
  %t1114 = zext i8 %t1113 to i64
  %t1115 = zext i8 %t1111 to i64
  %t1116 = icmp eq i64 %t1115, %t1114
  store i1 %t1116, i1* %t1104
  br label %sc_or_end288
sc_or_end288:
  %t1117 = load i1, i1* %t1104
  br i1 %t1117, label %sc_or_end290, label %sc_or_rhs289
sc_or_rhs289:
  %t1118 = load i8, i8* %t1101
  %t1119 = getelementptr [1 x i8], [1 x i8]* @.str104, i32 0, i32 0
  %t1120 = load i8, i8* %t1119
  %t1121 = zext i8 %t1120 to i64
  %t1122 = zext i8 %t1118 to i64
  %t1123 = icmp eq i64 %t1122, %t1121
  store i1 %t1123, i1* %t1103
  br label %sc_or_end290
sc_or_end290:
  %t1124 = load i1, i1* %t1103
  br i1 %t1124, label %sc_or_end292, label %sc_or_rhs291
sc_or_rhs291:
  %t1125 = load i8, i8* %t1101
  %t1126 = getelementptr [1 x i8], [1 x i8]* @.str105, i32 0, i32 0
  %t1127 = load i8, i8* %t1126
  %t1128 = zext i8 %t1127 to i64
  %t1129 = zext i8 %t1125 to i64
  %t1130 = icmp eq i64 %t1129, %t1128
  store i1 %t1130, i1* %t1102
  br label %sc_or_end292
sc_or_end292:
  %t1131 = load i1, i1* %t1102
  br i1 %t1131, label %then293, label %else294
then293:
  store i1 1, i1* %t1087
  br label %merge295
else294:
  %t1132 = load %nyx_string*, %nyx_string** %t1085
  %t1133 = load i8, i8* %t1101
  %t1134 = call %nyx_string* @nyx_string_from_char(i8 %t1133)
  %t1135 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1132, %nyx_string* %t1134)
  store %nyx_string* %t1135, %nyx_string** %t1085
  %t1136 = load i64, i64* %t1086
  %t1137 = add i64 %t1136, 1
  store i64 %t1137, i64* %t1086
  br label %merge295
merge295:
  br label %while_cond282
while_end284:
  %t1138 = load %nyx_string*, %nyx_string** %t1085
  %t1139 = load %nyx_string*, %nyx_string** %t717
  %t1140 = call i1 @nyx_string_equals(%nyx_string* %t1138, %nyx_string* %t1139)
  %t1141 = xor i1 %t1140, true
  br i1 %t1141, label %then296, label %else297
then296:
  %t1142 = load { i64, i8* }*, { i64, i8* }** %t699
  %t1143 = load %nyx_string*, %nyx_string** %t1085
  %t1144 = ptrtoint %nyx_string* %t1143 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1142, i64 %t1144, i64 2)
  br label %merge298
else297:
  br label %merge298
merge298:
  br label %merge281
else280:
  br label %merge281
merge281:
  %t1145 = load %nyx_string*, %nyx_string** %t762
  %t1146 = load %nyx_string*, %nyx_string** %t735
  %t1147 = call i1 @nyx_string_starts_with(%nyx_string* %t1145, %nyx_string* %t1146)
  br i1 %t1147, label %then299, label %else300
then299:
  %t1148 = load %nyx_string*, %nyx_string** %t762
  %t1149 = load %nyx_string*, %nyx_string** %t762
  %t1150 = call i64 @nyx_string_byte_length(%nyx_string* %t1149)
  %t1151 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1148, i64 9, i64 %t1150)
  store %nyx_string* %t1151, %nyx_string** %t1152
  %t1153 = load %nyx_string*, %nyx_string** %t717
  store %nyx_string* %t1153, %nyx_string** %t1154
  store i64 0, i64* %t1155
  store i1 0, i1* %t1156
  br label %while_cond302
while_cond302:
  store i1 false, i1* %t1157
  %t1158 = load i64, i64* %t1155
  %t1159 = load %nyx_string*, %nyx_string** %t1152
  %t1160 = call i64 @nyx_string_byte_length(%nyx_string* %t1159)
  %t1161 = icmp slt i64 %t1158, %t1160
  br i1 %t1161, label %sc_and_rhs305, label %sc_and_end306
sc_and_rhs305:
  %t1162 = load i1, i1* %t1156
  %t1163 = xor i1 %t1162, true
  store i1 %t1163, i1* %t1157
  br label %sc_and_end306
sc_and_end306:
  %t1164 = load i1, i1* %t1157
  br i1 %t1164, label %while_body303, label %while_end304
while_body303:
  %t1165 = load %nyx_string*, %nyx_string** %t1152
  %t1166 = load i64, i64* %t1155
  %t1167 = call i8 @nyx_string_char_at(%nyx_string* %t1165, i64 %t1166)
  %t1168 = zext i8 %t1167 to i64
  %t1169 = trunc i64 %t1168 to i8
  store i8 %t1169, i8* %t1170
  store i1 true, i1* %t1171
  store i1 true, i1* %t1172
  %t1173 = load i8, i8* %t1170
  %t1174 = getelementptr [1 x i8], [1 x i8]* @.str106, i32 0, i32 0
  %t1175 = load i8, i8* %t1174
  %t1176 = zext i8 %t1175 to i64
  %t1177 = zext i8 %t1173 to i64
  %t1178 = icmp eq i64 %t1177, %t1176
  br i1 %t1178, label %sc_or_end308, label %sc_or_rhs307
sc_or_rhs307:
  %t1179 = load i8, i8* %t1170
  %t1180 = getelementptr [1 x i8], [1 x i8]* @.str107, i32 0, i32 0
  %t1181 = load i8, i8* %t1180
  %t1182 = zext i8 %t1181 to i64
  %t1183 = zext i8 %t1179 to i64
  %t1184 = icmp eq i64 %t1183, %t1182
  store i1 %t1184, i1* %t1172
  br label %sc_or_end308
sc_or_end308:
  %t1185 = load i1, i1* %t1172
  br i1 %t1185, label %sc_or_end310, label %sc_or_rhs309
sc_or_rhs309:
  %t1186 = load i8, i8* %t1170
  %t1187 = getelementptr [1 x i8], [1 x i8]* @.str108, i32 0, i32 0
  %t1188 = load i8, i8* %t1187
  %t1189 = zext i8 %t1188 to i64
  %t1190 = zext i8 %t1186 to i64
  %t1191 = icmp eq i64 %t1190, %t1189
  store i1 %t1191, i1* %t1171
  br label %sc_or_end310
sc_or_end310:
  %t1192 = load i1, i1* %t1171
  br i1 %t1192, label %then311, label %else312
then311:
  store i1 1, i1* %t1156
  br label %merge313
else312:
  %t1193 = load %nyx_string*, %nyx_string** %t1154
  %t1194 = load i8, i8* %t1170
  %t1195 = call %nyx_string* @nyx_string_from_char(i8 %t1194)
  %t1196 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1193, %nyx_string* %t1195)
  store %nyx_string* %t1196, %nyx_string** %t1154
  %t1197 = load i64, i64* %t1155
  %t1198 = add i64 %t1197, 1
  store i64 %t1198, i64* %t1155
  br label %merge313
merge313:
  br label %while_cond302
while_end304:
  %t1199 = load %nyx_string*, %nyx_string** %t1154
  %t1200 = load %nyx_string*, %nyx_string** %t717
  %t1201 = call i1 @nyx_string_equals(%nyx_string* %t1199, %nyx_string* %t1200)
  %t1202 = xor i1 %t1201, true
  br i1 %t1202, label %then314, label %else315
then314:
  %t1203 = load { i64, i8* }*, { i64, i8* }** %t699
  %t1204 = load %nyx_string*, %nyx_string** %t1154
  %t1205 = ptrtoint %nyx_string* %t1204 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1203, i64 %t1205, i64 2)
  br label %merge316
else315:
  br label %merge316
merge316:
  br label %merge301
else300:
  br label %merge301
merge301:
  %t1206 = load %nyx_string*, %nyx_string** %t762
  %t1207 = load %nyx_string*, %nyx_string** %t738
  %t1208 = call i1 @nyx_string_starts_with(%nyx_string* %t1206, %nyx_string* %t1207)
  br i1 %t1208, label %then317, label %else318
then317:
  %t1209 = load %nyx_string*, %nyx_string** %t762
  %t1210 = load %nyx_string*, %nyx_string** %t762
  %t1211 = call i64 @nyx_string_byte_length(%nyx_string* %t1210)
  %t1212 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1209, i64 12, i64 %t1211)
  store %nyx_string* %t1212, %nyx_string** %t1213
  %t1214 = load %nyx_string*, %nyx_string** %t717
  store %nyx_string* %t1214, %nyx_string** %t1215
  store i64 0, i64* %t1216
  store i1 0, i1* %t1217
  br label %while_cond320
while_cond320:
  store i1 false, i1* %t1218
  %t1219 = load i64, i64* %t1216
  %t1220 = load %nyx_string*, %nyx_string** %t1213
  %t1221 = call i64 @nyx_string_byte_length(%nyx_string* %t1220)
  %t1222 = icmp slt i64 %t1219, %t1221
  br i1 %t1222, label %sc_and_rhs323, label %sc_and_end324
sc_and_rhs323:
  %t1223 = load i1, i1* %t1217
  %t1224 = xor i1 %t1223, true
  store i1 %t1224, i1* %t1218
  br label %sc_and_end324
sc_and_end324:
  %t1225 = load i1, i1* %t1218
  br i1 %t1225, label %while_body321, label %while_end322
while_body321:
  %t1226 = load %nyx_string*, %nyx_string** %t1213
  %t1227 = load i64, i64* %t1216
  %t1228 = call i8 @nyx_string_char_at(%nyx_string* %t1226, i64 %t1227)
  %t1229 = zext i8 %t1228 to i64
  %t1230 = trunc i64 %t1229 to i8
  store i8 %t1230, i8* %t1231
  store i1 true, i1* %t1232
  store i1 true, i1* %t1233
  %t1234 = load i8, i8* %t1231
  %t1235 = getelementptr [1 x i8], [1 x i8]* @.str109, i32 0, i32 0
  %t1236 = load i8, i8* %t1235
  %t1237 = zext i8 %t1236 to i64
  %t1238 = zext i8 %t1234 to i64
  %t1239 = icmp eq i64 %t1238, %t1237
  br i1 %t1239, label %sc_or_end326, label %sc_or_rhs325
sc_or_rhs325:
  %t1240 = load i8, i8* %t1231
  %t1241 = getelementptr [1 x i8], [1 x i8]* @.str110, i32 0, i32 0
  %t1242 = load i8, i8* %t1241
  %t1243 = zext i8 %t1242 to i64
  %t1244 = zext i8 %t1240 to i64
  %t1245 = icmp eq i64 %t1244, %t1243
  store i1 %t1245, i1* %t1233
  br label %sc_or_end326
sc_or_end326:
  %t1246 = load i1, i1* %t1233
  br i1 %t1246, label %sc_or_end328, label %sc_or_rhs327
sc_or_rhs327:
  %t1247 = load i8, i8* %t1231
  %t1248 = getelementptr [1 x i8], [1 x i8]* @.str111, i32 0, i32 0
  %t1249 = load i8, i8* %t1248
  %t1250 = zext i8 %t1249 to i64
  %t1251 = zext i8 %t1247 to i64
  %t1252 = icmp eq i64 %t1251, %t1250
  store i1 %t1252, i1* %t1232
  br label %sc_or_end328
sc_or_end328:
  %t1253 = load i1, i1* %t1232
  br i1 %t1253, label %then329, label %else330
then329:
  store i1 1, i1* %t1217
  br label %merge331
else330:
  %t1254 = load %nyx_string*, %nyx_string** %t1215
  %t1255 = load i8, i8* %t1231
  %t1256 = call %nyx_string* @nyx_string_from_char(i8 %t1255)
  %t1257 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1254, %nyx_string* %t1256)
  store %nyx_string* %t1257, %nyx_string** %t1215
  %t1258 = load i64, i64* %t1216
  %t1259 = add i64 %t1258, 1
  store i64 %t1259, i64* %t1216
  br label %merge331
merge331:
  br label %while_cond320
while_end322:
  %t1260 = load %nyx_string*, %nyx_string** %t1215
  %t1261 = load %nyx_string*, %nyx_string** %t717
  %t1262 = call i1 @nyx_string_equals(%nyx_string* %t1260, %nyx_string* %t1261)
  %t1263 = xor i1 %t1262, true
  br i1 %t1263, label %then332, label %else333
then332:
  %t1264 = load { i64, i8* }*, { i64, i8* }** %t699
  %t1265 = load %nyx_string*, %nyx_string** %t1215
  %t1266 = ptrtoint %nyx_string* %t1265 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1264, i64 %t1266, i64 2)
  br label %merge334
else333:
  br label %merge334
merge334:
  br label %merge319
else318:
  br label %merge319
merge319:
  %t1267 = load i64, i64* %t705
  %t1268 = add i64 %t1267, 1
  store i64 %t1268, i64* %t705
  br label %while_cond179
while_end181:
  %t1269 = load { i64, i8* }*, { i64, i8* }** %t699
  ret { i64, i8* }* %t1269
}

define internal %nyx_string* @detect_package_name(
%nyx_string* %resolved_path.param) {
  %resolved_path.ptr = alloca %nyx_string*
  %t1272 = alloca %nyx_string*
  %t1275 = alloca i64
  %t1282 = alloca i64
  %t1284 = alloca i64
  %t1311 = alloca i64
  %t1313 = alloca i64
  %t1323 = alloca i8
  %t1347 = alloca i64
  %t1349 = alloca i64
  %t1359 = alloca i8
  store %nyx_string* %resolved_path.param, %nyx_string** %resolved_path.ptr
  %t1270 = getelementptr [10 x i8], [10 x i8]* @.str112, i32 0, i32 0
  %t1271 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str112.c, i8* %t1270, i64 9)
  store %nyx_string* %t1271, %nyx_string** %t1272
  %t1273 = load %nyx_string*, %nyx_string** %t1272
  %t1274 = call i64 @nyx_string_byte_length(%nyx_string* %t1273)
  store i64 %t1274, i64* %t1275
  %t1276 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1277 = load %nyx_string*, %nyx_string** %t1272
  %t1278 = call i1 @nyx_string_contains(%nyx_string* %t1276, %nyx_string* %t1277)
  %t1279 = xor i1 %t1278, true
  br i1 %t1279, label %then335, label %else336
then335:
  %t1280 = getelementptr [1 x i8], [1 x i8]* @.str113, i32 0, i32 0
  %t1281 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str113.c, i8* %t1280, i64 0)
  ret %nyx_string* %t1281
else336:
  br label %merge337
merge337:
  store i64 0, i64* %t1282
  %t1283 = sub i64 0, 1
  store i64 %t1283, i64* %t1284
  br label %while_cond338
while_cond338:
  %t1285 = load i64, i64* %t1282
  %t1286 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1287 = call i64 @nyx_string_byte_length(%nyx_string* %t1286)
  %t1288 = load i64, i64* %t1275
  %t1289 = sub i64 %t1287, %t1288
  %t1290 = icmp sle i64 %t1285, %t1289
  br i1 %t1290, label %while_body339, label %while_end340
while_body339:
  %t1291 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1292 = load i64, i64* %t1282
  %t1293 = load i64, i64* %t1282
  %t1294 = load i64, i64* %t1275
  %t1295 = add i64 %t1293, %t1294
  %t1296 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1291, i64 %t1292, i64 %t1295)
  %t1297 = load %nyx_string*, %nyx_string** %t1272
  %t1298 = call i1 @nyx_string_equals(%nyx_string* %t1296, %nyx_string* %t1297)
  br i1 %t1298, label %then341, label %else342
then341:
  %t1299 = load i64, i64* %t1282
  store i64 %t1299, i64* %t1284
  %t1300 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1301 = call i64 @nyx_string_byte_length(%nyx_string* %t1300)
  store i64 %t1301, i64* %t1282
  br label %merge343
else342:
  %t1302 = load i64, i64* %t1282
  %t1303 = add i64 %t1302, 1
  store i64 %t1303, i64* %t1282
  br label %merge343
merge343:
  br label %while_cond338
while_end340:
  %t1304 = load i64, i64* %t1284
  %t1305 = icmp slt i64 %t1304, 0
  br i1 %t1305, label %then344, label %else345
then344:
  %t1306 = getelementptr [1 x i8], [1 x i8]* @.str114, i32 0, i32 0
  %t1307 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str114.c, i8* %t1306, i64 0)
  ret %nyx_string* %t1307
else345:
  br label %merge346
merge346:
  %t1308 = load i64, i64* %t1284
  %t1309 = load i64, i64* %t1275
  %t1310 = add i64 %t1308, %t1309
  store i64 %t1310, i64* %t1311
  %t1312 = load i64, i64* %t1311
  store i64 %t1312, i64* %t1313
  br label %while_cond347
while_cond347:
  %t1314 = load i64, i64* %t1313
  %t1315 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1316 = call i64 @nyx_string_byte_length(%nyx_string* %t1315)
  %t1317 = icmp slt i64 %t1314, %t1316
  br i1 %t1317, label %while_body348, label %while_end349
while_body348:
  %t1318 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1319 = load i64, i64* %t1313
  %t1320 = call i8 @nyx_string_char_at(%nyx_string* %t1318, i64 %t1319)
  %t1321 = zext i8 %t1320 to i64
  %t1322 = trunc i64 %t1321 to i8
  store i8 %t1322, i8* %t1323
  %t1324 = load i8, i8* %t1323
  %t1325 = getelementptr [1 x i8], [1 x i8]* @.str115, i32 0, i32 0
  %t1326 = load i8, i8* %t1325
  %t1327 = zext i8 %t1326 to i64
  %t1328 = zext i8 %t1324 to i64
  %t1329 = icmp eq i64 %t1328, %t1327
  br i1 %t1329, label %then350, label %else351
then350:
  %t1330 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1331 = call i64 @nyx_string_byte_length(%nyx_string* %t1330)
  %t1332 = add i64 %t1331, 1
  store i64 %t1332, i64* %t1313
  br label %merge352
else351:
  %t1333 = load i64, i64* %t1313
  %t1334 = add i64 %t1333, 1
  store i64 %t1334, i64* %t1313
  br label %merge352
merge352:
  br label %while_cond347
while_end349:
  %t1335 = load i64, i64* %t1313
  %t1336 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1337 = call i64 @nyx_string_byte_length(%nyx_string* %t1336)
  %t1338 = icmp sgt i64 %t1335, %t1337
  br i1 %t1338, label %then353, label %else354
then353:
  %t1339 = load i64, i64* %t1313
  %t1340 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1341 = call i64 @nyx_string_byte_length(%nyx_string* %t1340)
  %t1342 = add i64 %t1341, 1
  %t1343 = sub i64 %t1339, %t1342
  %t1344 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1345 = call i64 @nyx_string_byte_length(%nyx_string* %t1344)
  %t1346 = add i64 %t1343, %t1345
  store i64 %t1346, i64* %t1347
  %t1348 = load i64, i64* %t1311
  store i64 %t1348, i64* %t1349
  br label %while_cond356
while_cond356:
  %t1350 = load i64, i64* %t1349
  %t1351 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1352 = call i64 @nyx_string_byte_length(%nyx_string* %t1351)
  %t1353 = icmp slt i64 %t1350, %t1352
  br i1 %t1353, label %while_body357, label %while_end358
while_body357:
  %t1354 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1355 = load i64, i64* %t1349
  %t1356 = call i8 @nyx_string_char_at(%nyx_string* %t1354, i64 %t1355)
  %t1357 = zext i8 %t1356 to i64
  %t1358 = trunc i64 %t1357 to i8
  store i8 %t1358, i8* %t1359
  %t1360 = load i8, i8* %t1359
  %t1361 = getelementptr [1 x i8], [1 x i8]* @.str116, i32 0, i32 0
  %t1362 = load i8, i8* %t1361
  %t1363 = zext i8 %t1362 to i64
  %t1364 = zext i8 %t1360 to i64
  %t1365 = icmp eq i64 %t1364, %t1363
  br i1 %t1365, label %then359, label %else360
then359:
  %t1366 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1367 = load i64, i64* %t1311
  %t1368 = load i64, i64* %t1349
  %t1369 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1366, i64 %t1367, i64 %t1368)
  ret %nyx_string* %t1369
else360:
  br label %merge361
merge361:
  %t1370 = load i64, i64* %t1349
  %t1371 = add i64 %t1370, 1
  store i64 %t1371, i64* %t1349
  br label %while_cond356
while_end358:
  br label %merge355
else354:
  br label %merge355
merge355:
  %t1372 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1373 = load i64, i64* %t1311
  %t1374 = load %nyx_string*, %nyx_string** %resolved_path.ptr
  %t1375 = call i64 @nyx_string_byte_length(%nyx_string* %t1374)
  %t1376 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1372, i64 %t1373, i64 %t1375)
  ret %nyx_string* %t1376
}

define internal %nyx_string* @rewrite_package_imports(
%nyx_string* %source.param, %nyx_string* %pkg_name.param) {
  %source.ptr = alloca %nyx_string*
  %pkg_name.ptr = alloca %nyx_string*
  %t1379 = alloca %nyx_string*
  %t1382 = alloca i64
  %t1392 = alloca { i64, i8* }*
  %t1395 = alloca %nyx_string*
  %t1396 = alloca i64
  %t1399 = alloca %nyx_string*
  %t1402 = alloca %nyx_string*
  %t1405 = alloca %nyx_string*
  %t1408 = alloca %nyx_string*
  %t1411 = alloca %nyx_string*
  %t1420 = alloca %nyx_string*
  %t1421 = alloca i1
  %t1430 = alloca %nyx_string*
  %t1431 = alloca i64
  %t1432 = alloca i1
  %t1437 = alloca i1
  %t1470 = alloca i8
  %t1482 = alloca i8
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  store %nyx_string* %pkg_name.param, %nyx_string** %pkg_name.ptr
  %t1377 = getelementptr [6 x i8], [6 x i8]* @.str117, i32 0, i32 0
  %t1378 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str117.c, i8* %t1377, i64 5)
  store %nyx_string* %t1378, %nyx_string** %t1379
  %t1380 = load %nyx_string*, %nyx_string** %t1379
  %t1381 = call i64 @nyx_string_byte_length(%nyx_string* %t1380)
  store i64 %t1381, i64* %t1382
  %t1383 = load %nyx_string*, %nyx_string** %source.ptr
  %t1384 = load %nyx_string*, %nyx_string** %t1379
  %t1385 = call i1 @nyx_string_contains(%nyx_string* %t1383, %nyx_string* %t1384)
  %t1386 = xor i1 %t1385, true
  br i1 %t1386, label %then362, label %else363
then362:
  %t1387 = load %nyx_string*, %nyx_string** %source.ptr
  ret %nyx_string* %t1387
else363:
  br label %merge364
merge364:
  %t1388 = load %nyx_string*, %nyx_string** %source.ptr
  %t1389 = getelementptr [2 x i8], [2 x i8]* @.str118, i32 0, i32 0
  %t1390 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str118.c, i8* %t1389, i64 1)
  %t1391 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t1388, %nyx_string* %t1390)
  store { i64, i8* }* %t1391, { i64, i8* }** %t1392
  %t1393 = getelementptr [1 x i8], [1 x i8]* @.str119, i32 0, i32 0
  %t1394 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str119.c, i8* %t1393, i64 0)
  store %nyx_string* %t1394, %nyx_string** %t1395
  store i64 0, i64* %t1396
  %t1397 = getelementptr [7 x i8], [7 x i8]* @.str120, i32 0, i32 0
  %t1398 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str120.c, i8* %t1397, i64 6)
  store %nyx_string* %t1398, %nyx_string** %t1399
  %t1400 = getelementptr [1 x i8], [1 x i8]* @.str121, i32 0, i32 0
  %t1401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str121.c, i8* %t1400, i64 0)
  store %nyx_string* %t1401, %nyx_string** %t1402
  %t1403 = getelementptr [2 x i8], [2 x i8]* @.str122, i32 0, i32 0
  %t1404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str122.c, i8* %t1403, i64 1)
  store %nyx_string* %t1404, %nyx_string** %t1405
  %t1406 = getelementptr [6 x i8], [6 x i8]* @.str123, i32 0, i32 0
  %t1407 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str123.c, i8* %t1406, i64 5)
  store %nyx_string* %t1407, %nyx_string** %t1408
  %t1409 = getelementptr [2 x i8], [2 x i8]* @.str124, i32 0, i32 0
  %t1410 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str124.c, i8* %t1409, i64 1)
  store %nyx_string* %t1410, %nyx_string** %t1411
  br label %while_cond365
while_cond365:
  %t1412 = load i64, i64* %t1396
  %t1413 = load { i64, i8* }*, { i64, i8* }** %t1392
  %t1414 = call i64 @nyx_array_length({ i64, i8* }* %t1413)
  %t1415 = icmp slt i64 %t1412, %t1414
  br i1 %t1415, label %while_body366, label %while_end367
while_body366:
  %t1416 = load { i64, i8* }*, { i64, i8* }** %t1392
  %t1417 = load i64, i64* %t1396
  %t1418 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1416, i64 %t1417, i64 2)
  %t1419 = inttoptr i64 %t1418 to %nyx_string*
  store %nyx_string* %t1419, %nyx_string** %t1420
  store i1 false, i1* %t1421
  %t1422 = load %nyx_string*, %nyx_string** %t1420
  %t1423 = load %nyx_string*, %nyx_string** %t1399
  %t1424 = call i1 @nyx_string_contains(%nyx_string* %t1422, %nyx_string* %t1423)
  br i1 %t1424, label %sc_and_rhs368, label %sc_and_end369
sc_and_rhs368:
  %t1425 = load %nyx_string*, %nyx_string** %t1420
  %t1426 = load %nyx_string*, %nyx_string** %t1379
  %t1427 = call i1 @nyx_string_contains(%nyx_string* %t1425, %nyx_string* %t1426)
  store i1 %t1427, i1* %t1421
  br label %sc_and_end369
sc_and_end369:
  %t1428 = load i1, i1* %t1421
  br i1 %t1428, label %then370, label %else371
then370:
  %t1429 = load %nyx_string*, %nyx_string** %t1402
  store %nyx_string* %t1429, %nyx_string** %t1430
  store i64 0, i64* %t1431
  store i1 0, i1* %t1432
  br label %while_cond373
while_cond373:
  %t1433 = load i64, i64* %t1431
  %t1434 = load %nyx_string*, %nyx_string** %t1420
  %t1435 = call i64 @nyx_string_byte_length(%nyx_string* %t1434)
  %t1436 = icmp slt i64 %t1433, %t1435
  br i1 %t1436, label %while_body374, label %while_end375
while_body374:
  store i1 false, i1* %t1437
  %t1438 = load i1, i1* %t1432
  %t1439 = xor i1 %t1438, true
  br i1 %t1439, label %sc_and_rhs376, label %sc_and_end377
sc_and_rhs376:
  %t1440 = load i64, i64* %t1431
  %t1441 = load i64, i64* %t1382
  %t1442 = add i64 %t1440, %t1441
  %t1443 = load %nyx_string*, %nyx_string** %t1420
  %t1444 = call i64 @nyx_string_byte_length(%nyx_string* %t1443)
  %t1445 = icmp sle i64 %t1442, %t1444
  store i1 %t1445, i1* %t1437
  br label %sc_and_end377
sc_and_end377:
  %t1446 = load i1, i1* %t1437
  br i1 %t1446, label %then378, label %else379
then378:
  %t1447 = load %nyx_string*, %nyx_string** %t1420
  %t1448 = load i64, i64* %t1431
  %t1449 = load i64, i64* %t1431
  %t1450 = load i64, i64* %t1382
  %t1451 = add i64 %t1449, %t1450
  %t1452 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1447, i64 %t1448, i64 %t1451)
  %t1453 = load %nyx_string*, %nyx_string** %t1379
  %t1454 = call i1 @nyx_string_equals(%nyx_string* %t1452, %nyx_string* %t1453)
  br i1 %t1454, label %then381, label %else382
then381:
  %t1455 = load %nyx_string*, %nyx_string** %t1430
  %t1456 = load %nyx_string*, %nyx_string** %t1405
  %t1457 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1455, %nyx_string* %t1456)
  %t1458 = load %nyx_string*, %nyx_string** %pkg_name.ptr
  %t1459 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1457, %nyx_string* %t1458)
  %t1460 = load %nyx_string*, %nyx_string** %t1408
  %t1461 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1459, %nyx_string* %t1460)
  store %nyx_string* %t1461, %nyx_string** %t1430
  %t1462 = load i64, i64* %t1431
  %t1463 = load i64, i64* %t1382
  %t1464 = add i64 %t1462, %t1463
  store i64 %t1464, i64* %t1431
  store i1 1, i1* %t1432
  br label %merge383
else382:
  %t1465 = load %nyx_string*, %nyx_string** %t1420
  %t1466 = load i64, i64* %t1431
  %t1467 = call i8 @nyx_string_char_at(%nyx_string* %t1465, i64 %t1466)
  %t1468 = zext i8 %t1467 to i64
  %t1469 = trunc i64 %t1468 to i8
  store i8 %t1469, i8* %t1470
  %t1471 = load %nyx_string*, %nyx_string** %t1430
  %t1472 = load i8, i8* %t1470
  %t1473 = call %nyx_string* @nyx_string_from_char(i8 %t1472)
  %t1474 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1471, %nyx_string* %t1473)
  store %nyx_string* %t1474, %nyx_string** %t1430
  %t1475 = load i64, i64* %t1431
  %t1476 = add i64 %t1475, 1
  store i64 %t1476, i64* %t1431
  br label %merge383
merge383:
  br label %merge380
else379:
  %t1477 = load %nyx_string*, %nyx_string** %t1420
  %t1478 = load i64, i64* %t1431
  %t1479 = call i8 @nyx_string_char_at(%nyx_string* %t1477, i64 %t1478)
  %t1480 = zext i8 %t1479 to i64
  %t1481 = trunc i64 %t1480 to i8
  store i8 %t1481, i8* %t1482
  %t1483 = load %nyx_string*, %nyx_string** %t1430
  %t1484 = load i8, i8* %t1482
  %t1485 = call %nyx_string* @nyx_string_from_char(i8 %t1484)
  %t1486 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1483, %nyx_string* %t1485)
  store %nyx_string* %t1486, %nyx_string** %t1430
  %t1487 = load i64, i64* %t1431
  %t1488 = add i64 %t1487, 1
  store i64 %t1488, i64* %t1431
  br label %merge380
merge380:
  br label %while_cond373
while_end375:
  %t1489 = load i64, i64* %t1396
  %t1490 = icmp sgt i64 %t1489, 0
  br i1 %t1490, label %then384, label %else385
then384:
  %t1491 = load %nyx_string*, %nyx_string** %t1395
  %t1492 = load %nyx_string*, %nyx_string** %t1411
  %t1493 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1491, %nyx_string* %t1492)
  store %nyx_string* %t1493, %nyx_string** %t1395
  br label %merge386
else385:
  br label %merge386
merge386:
  %t1494 = load %nyx_string*, %nyx_string** %t1395
  %t1495 = load %nyx_string*, %nyx_string** %t1430
  %t1496 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1494, %nyx_string* %t1495)
  store %nyx_string* %t1496, %nyx_string** %t1395
  br label %merge372
else371:
  %t1497 = load i64, i64* %t1396
  %t1498 = icmp sgt i64 %t1497, 0
  br i1 %t1498, label %then387, label %else388
then387:
  %t1499 = load %nyx_string*, %nyx_string** %t1395
  %t1500 = load %nyx_string*, %nyx_string** %t1411
  %t1501 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1499, %nyx_string* %t1500)
  store %nyx_string* %t1501, %nyx_string** %t1395
  br label %merge389
else388:
  br label %merge389
merge389:
  %t1502 = load %nyx_string*, %nyx_string** %t1395
  %t1503 = load %nyx_string*, %nyx_string** %t1420
  %t1504 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1502, %nyx_string* %t1503)
  store %nyx_string* %t1504, %nyx_string** %t1395
  br label %merge372
merge372:
  %t1505 = load i64, i64* %t1396
  %t1506 = add i64 %t1505, 1
  store i64 %t1506, i64* %t1396
  br label %while_cond365
while_end367:
  %t1507 = load %nyx_string*, %nyx_string** %t1395
  ret %nyx_string* %t1507
}

define internal %nyx_string* @strip_duplicate_structs(
%nyx_string* %source.param, i8* %declared.param) {
  %source.ptr = alloca %nyx_string*
  %declared.ptr = alloca i8*
  %t1512 = alloca { i64, i8* }*
  %t1515 = alloca %nyx_string*
  %t1516 = alloca i64
  %t1517 = alloca i64
  %t1520 = alloca %nyx_string*
  %t1523 = alloca %nyx_string*
  %t1526 = alloca %nyx_string*
  %t1529 = alloca %nyx_string*
  %t1532 = alloca %nyx_string*
  %t1541 = alloca %nyx_string*
  %t1544 = alloca i64
  %t1554 = alloca i8
  %t1575 = alloca %nyx_string*
  %t1577 = alloca %nyx_string*
  %t1578 = alloca i1
  %t1593 = alloca i1
  %t1600 = alloca %nyx_string*
  %t1601 = alloca i64
  %t1602 = alloca i1
  %t1603 = alloca i1
  %t1616 = alloca i8
  %t1617 = alloca i1
  %t1618 = alloca i1
  %t1649 = alloca i64
  %t1650 = alloca i64
  %t1660 = alloca i8
  store %nyx_string* %source.param, %nyx_string** %source.ptr
  store i8* %declared.param, i8** %declared.ptr
  %t1508 = load %nyx_string*, %nyx_string** %source.ptr
  %t1509 = getelementptr [2 x i8], [2 x i8]* @.str125, i32 0, i32 0
  %t1510 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str125.c, i8* %t1509, i64 1)
  %t1511 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t1508, %nyx_string* %t1510)
  store { i64, i8* }* %t1511, { i64, i8* }** %t1512
  %t1513 = getelementptr [1 x i8], [1 x i8]* @.str126, i32 0, i32 0
  %t1514 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str126.c, i8* %t1513, i64 0)
  store %nyx_string* %t1514, %nyx_string** %t1515
  store i64 0, i64* %t1516
  store i64 0, i64* %t1517
  %t1518 = getelementptr [15 x i8], [15 x i8]* @.str127, i32 0, i32 0
  %t1519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str127.c, i8* %t1518, i64 14)
  store %nyx_string* %t1519, %nyx_string** %t1520
  %t1521 = getelementptr [8 x i8], [8 x i8]* @.str128, i32 0, i32 0
  %t1522 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str128.c, i8* %t1521, i64 7)
  store %nyx_string* %t1522, %nyx_string** %t1523
  %t1524 = getelementptr [2 x i8], [2 x i8]* @.str129, i32 0, i32 0
  %t1525 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str129.c, i8* %t1524, i64 1)
  store %nyx_string* %t1525, %nyx_string** %t1526
  %t1527 = getelementptr [1 x i8], [1 x i8]* @.str130, i32 0, i32 0
  %t1528 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str130.c, i8* %t1527, i64 0)
  store %nyx_string* %t1528, %nyx_string** %t1529
  %t1530 = getelementptr [2 x i8], [2 x i8]* @.str131, i32 0, i32 0
  %t1531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str131.c, i8* %t1530, i64 1)
  store %nyx_string* %t1531, %nyx_string** %t1532
  br label %while_cond390
while_cond390:
  %t1533 = load i64, i64* %t1516
  %t1534 = load { i64, i8* }*, { i64, i8* }** %t1512
  %t1535 = call i64 @nyx_array_length({ i64, i8* }* %t1534)
  %t1536 = icmp slt i64 %t1533, %t1535
  br i1 %t1536, label %while_body391, label %while_end392
while_body391:
  %t1537 = load { i64, i8* }*, { i64, i8* }** %t1512
  %t1538 = load i64, i64* %t1516
  %t1539 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1537, i64 %t1538, i64 2)
  %t1540 = inttoptr i64 %t1539 to %nyx_string*
  store %nyx_string* %t1540, %nyx_string** %t1541
  %t1542 = load i64, i64* %t1517
  %t1543 = icmp sgt i64 %t1542, 0
  br i1 %t1543, label %then393, label %else394
then393:
  store i64 0, i64* %t1544
  br label %while_cond396
while_cond396:
  %t1545 = load i64, i64* %t1544
  %t1546 = load %nyx_string*, %nyx_string** %t1541
  %t1547 = call i64 @nyx_string_byte_length(%nyx_string* %t1546)
  %t1548 = icmp slt i64 %t1545, %t1547
  br i1 %t1548, label %while_body397, label %while_end398
while_body397:
  %t1549 = load %nyx_string*, %nyx_string** %t1541
  %t1550 = load i64, i64* %t1544
  %t1551 = call i8 @nyx_string_char_at(%nyx_string* %t1549, i64 %t1550)
  %t1552 = zext i8 %t1551 to i64
  %t1553 = trunc i64 %t1552 to i8
  store i8 %t1553, i8* %t1554
  %t1555 = load i8, i8* %t1554
  %t1556 = getelementptr [1 x i8], [1 x i8]* @.str132, i32 0, i32 0
  %t1557 = load i8, i8* %t1556
  %t1558 = zext i8 %t1557 to i64
  %t1559 = zext i8 %t1555 to i64
  %t1560 = icmp eq i64 %t1559, %t1558
  br i1 %t1560, label %then399, label %else400
then399:
  %t1561 = load i64, i64* %t1517
  %t1562 = add i64 %t1561, 1
  store i64 %t1562, i64* %t1517
  br label %merge401
else400:
  br label %merge401
merge401:
  %t1563 = load i8, i8* %t1554
  %t1564 = getelementptr [1 x i8], [1 x i8]* @.str133, i32 0, i32 0
  %t1565 = load i8, i8* %t1564
  %t1566 = zext i8 %t1565 to i64
  %t1567 = zext i8 %t1563 to i64
  %t1568 = icmp eq i64 %t1567, %t1566
  br i1 %t1568, label %then402, label %else403
then402:
  %t1569 = load i64, i64* %t1517
  %t1570 = sub i64 %t1569, 1
  store i64 %t1570, i64* %t1517
  br label %merge404
else403:
  br label %merge404
merge404:
  %t1571 = load i64, i64* %t1544
  %t1572 = add i64 %t1571, 1
  store i64 %t1572, i64* %t1544
  br label %while_cond396
while_end398:
  br label %merge395
else394:
  %t1573 = load %nyx_string*, %nyx_string** %t1541
  %t1574 = call %nyx_string* @nyx_string_trim(%nyx_string* %t1573)
  store %nyx_string* %t1574, %nyx_string** %t1575
  %t1576 = load %nyx_string*, %nyx_string** %t1575
  store %nyx_string* %t1576, %nyx_string** %t1577
  store i1 0, i1* %t1578
  %t1579 = load %nyx_string*, %nyx_string** %t1577
  %t1580 = load %nyx_string*, %nyx_string** %t1520
  %t1581 = call i1 @nyx_string_starts_with(%nyx_string* %t1579, %nyx_string* %t1580)
  br i1 %t1581, label %then405, label %else406
then405:
  %t1582 = load %nyx_string*, %nyx_string** %t1577
  %t1583 = load %nyx_string*, %nyx_string** %t1577
  %t1584 = call i64 @nyx_string_byte_length(%nyx_string* %t1583)
  %t1585 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1582, i64 14, i64 %t1584)
  store %nyx_string* %t1585, %nyx_string** %t1577
  store i1 1, i1* %t1578
  br label %merge407
else406:
  %t1586 = load %nyx_string*, %nyx_string** %t1577
  %t1587 = load %nyx_string*, %nyx_string** %t1523
  %t1588 = call i1 @nyx_string_starts_with(%nyx_string* %t1586, %nyx_string* %t1587)
  br i1 %t1588, label %then408, label %else409
then408:
  %t1589 = load %nyx_string*, %nyx_string** %t1577
  %t1590 = load %nyx_string*, %nyx_string** %t1577
  %t1591 = call i64 @nyx_string_byte_length(%nyx_string* %t1590)
  %t1592 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1589, i64 7, i64 %t1591)
  store %nyx_string* %t1592, %nyx_string** %t1577
  store i1 1, i1* %t1578
  br label %merge410
else409:
  br label %merge410
merge410:
  br label %merge407
merge407:
  store i1 false, i1* %t1593
  %t1594 = load i1, i1* %t1578
  br i1 %t1594, label %sc_and_rhs411, label %sc_and_end412
sc_and_rhs411:
  %t1595 = load %nyx_string*, %nyx_string** %t1575
  %t1596 = load %nyx_string*, %nyx_string** %t1526
  %t1597 = call i1 @nyx_string_contains(%nyx_string* %t1595, %nyx_string* %t1596)
  store i1 %t1597, i1* %t1593
  br label %sc_and_end412
sc_and_end412:
  %t1598 = load i1, i1* %t1593
  br i1 %t1598, label %then413, label %else414
then413:
  %t1599 = load %nyx_string*, %nyx_string** %t1529
  store %nyx_string* %t1599, %nyx_string** %t1600
  store i64 0, i64* %t1601
  store i1 0, i1* %t1602
  br label %while_cond416
while_cond416:
  store i1 false, i1* %t1603
  %t1604 = load i64, i64* %t1601
  %t1605 = load %nyx_string*, %nyx_string** %t1577
  %t1606 = call i64 @nyx_string_byte_length(%nyx_string* %t1605)
  %t1607 = icmp slt i64 %t1604, %t1606
  br i1 %t1607, label %sc_and_rhs419, label %sc_and_end420
sc_and_rhs419:
  %t1608 = load i1, i1* %t1602
  %t1609 = xor i1 %t1608, true
  store i1 %t1609, i1* %t1603
  br label %sc_and_end420
sc_and_end420:
  %t1610 = load i1, i1* %t1603
  br i1 %t1610, label %while_body417, label %while_end418
while_body417:
  %t1611 = load %nyx_string*, %nyx_string** %t1577
  %t1612 = load i64, i64* %t1601
  %t1613 = call i8 @nyx_string_char_at(%nyx_string* %t1611, i64 %t1612)
  %t1614 = zext i8 %t1613 to i64
  %t1615 = trunc i64 %t1614 to i8
  store i8 %t1615, i8* %t1616
  store i1 true, i1* %t1617
  store i1 true, i1* %t1618
  %t1619 = load i8, i8* %t1616
  %t1620 = getelementptr [1 x i8], [1 x i8]* @.str134, i32 0, i32 0
  %t1621 = load i8, i8* %t1620
  %t1622 = zext i8 %t1621 to i64
  %t1623 = zext i8 %t1619 to i64
  %t1624 = icmp eq i64 %t1623, %t1622
  br i1 %t1624, label %sc_or_end422, label %sc_or_rhs421
sc_or_rhs421:
  %t1625 = load i8, i8* %t1616
  %t1626 = getelementptr [1 x i8], [1 x i8]* @.str135, i32 0, i32 0
  %t1627 = load i8, i8* %t1626
  %t1628 = zext i8 %t1627 to i64
  %t1629 = zext i8 %t1625 to i64
  %t1630 = icmp eq i64 %t1629, %t1628
  store i1 %t1630, i1* %t1618
  br label %sc_or_end422
sc_or_end422:
  %t1631 = load i1, i1* %t1618
  br i1 %t1631, label %sc_or_end424, label %sc_or_rhs423
sc_or_rhs423:
  %t1632 = load i8, i8* %t1616
  %t1633 = getelementptr [1 x i8], [1 x i8]* @.str136, i32 0, i32 0
  %t1634 = load i8, i8* %t1633
  %t1635 = zext i8 %t1634 to i64
  %t1636 = zext i8 %t1632 to i64
  %t1637 = icmp eq i64 %t1636, %t1635
  store i1 %t1637, i1* %t1617
  br label %sc_or_end424
sc_or_end424:
  %t1638 = load i1, i1* %t1617
  br i1 %t1638, label %then425, label %else426
then425:
  store i1 1, i1* %t1602
  br label %merge427
else426:
  %t1639 = load %nyx_string*, %nyx_string** %t1600
  %t1640 = load i8, i8* %t1616
  %t1641 = call %nyx_string* @nyx_string_from_char(i8 %t1640)
  %t1642 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1639, %nyx_string* %t1641)
  store %nyx_string* %t1642, %nyx_string** %t1600
  %t1643 = load i64, i64* %t1601
  %t1644 = add i64 %t1643, 1
  store i64 %t1644, i64* %t1601
  br label %merge427
merge427:
  br label %while_cond416
while_end418:
  %t1645 = load i8*, i8** %declared.ptr
  %t1646 = load %nyx_string*, %nyx_string** %t1600
  %t1647 = call i8* @nyx_string_to_cstr(%nyx_string* %t1646)
  %t1648 = call i1 @nyx_map_contains_str(i8* %t1645, i8* %t1647)
  br i1 %t1648, label %then428, label %else429
then428:
  store i64 0, i64* %t1649
  store i64 0, i64* %t1650
  br label %while_cond431
while_cond431:
  %t1651 = load i64, i64* %t1650
  %t1652 = load %nyx_string*, %nyx_string** %t1541
  %t1653 = call i64 @nyx_string_byte_length(%nyx_string* %t1652)
  %t1654 = icmp slt i64 %t1651, %t1653
  br i1 %t1654, label %while_body432, label %while_end433
while_body432:
  %t1655 = load %nyx_string*, %nyx_string** %t1541
  %t1656 = load i64, i64* %t1650
  %t1657 = call i8 @nyx_string_char_at(%nyx_string* %t1655, i64 %t1656)
  %t1658 = zext i8 %t1657 to i64
  %t1659 = trunc i64 %t1658 to i8
  store i8 %t1659, i8* %t1660
  %t1661 = load i8, i8* %t1660
  %t1662 = getelementptr [1 x i8], [1 x i8]* @.str137, i32 0, i32 0
  %t1663 = load i8, i8* %t1662
  %t1664 = zext i8 %t1663 to i64
  %t1665 = zext i8 %t1661 to i64
  %t1666 = icmp eq i64 %t1665, %t1664
  br i1 %t1666, label %then434, label %else435
then434:
  %t1667 = load i64, i64* %t1649
  %t1668 = add i64 %t1667, 1
  store i64 %t1668, i64* %t1649
  br label %merge436
else435:
  br label %merge436
merge436:
  %t1669 = load i8, i8* %t1660
  %t1670 = getelementptr [1 x i8], [1 x i8]* @.str138, i32 0, i32 0
  %t1671 = load i8, i8* %t1670
  %t1672 = zext i8 %t1671 to i64
  %t1673 = zext i8 %t1669 to i64
  %t1674 = icmp eq i64 %t1673, %t1672
  br i1 %t1674, label %then437, label %else438
then437:
  %t1675 = load i64, i64* %t1649
  %t1676 = sub i64 %t1675, 1
  store i64 %t1676, i64* %t1649
  br label %merge439
else438:
  br label %merge439
merge439:
  %t1677 = load i64, i64* %t1650
  %t1678 = add i64 %t1677, 1
  store i64 %t1678, i64* %t1650
  br label %while_cond431
while_end433:
  %t1679 = load i64, i64* %t1649
  %t1680 = icmp sgt i64 %t1679, 0
  br i1 %t1680, label %then440, label %else441
then440:
  %t1681 = load i64, i64* %t1649
  store i64 %t1681, i64* %t1517
  br label %merge442
else441:
  br label %merge442
merge442:
  br label %merge430
else429:
  %t1682 = load i8*, i8** %declared.ptr
  %t1683 = load %nyx_string*, %nyx_string** %t1600
  %t1684 = call i8* @nyx_string_to_cstr(%nyx_string* %t1683)
  call void @nyx_map_insert_int(i8* %t1682, i8* %t1684, i64 1)
  %t1685 = load %nyx_string*, %nyx_string** %t1515
  %t1686 = load %nyx_string*, %nyx_string** %t1541
  %t1687 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1685, %nyx_string* %t1686)
  %t1688 = load %nyx_string*, %nyx_string** %t1532
  %t1689 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1687, %nyx_string* %t1688)
  store %nyx_string* %t1689, %nyx_string** %t1515
  br label %merge430
merge430:
  br label %merge415
else414:
  %t1690 = load %nyx_string*, %nyx_string** %t1515
  %t1691 = load %nyx_string*, %nyx_string** %t1541
  %t1692 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1690, %nyx_string* %t1691)
  %t1693 = load %nyx_string*, %nyx_string** %t1532
  %t1694 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1692, %nyx_string* %t1693)
  store %nyx_string* %t1694, %nyx_string** %t1515
  br label %merge415
merge415:
  br label %merge395
merge395:
  %t1695 = load i64, i64* %t1516
  %t1696 = add i64 %t1695, 1
  store i64 %t1696, i64* %t1516
  br label %while_cond390
while_end392:
  %t1697 = load %nyx_string*, %nyx_string** %t1515
  ret %nyx_string* %t1697
}

define %nyx_string* @resolve_module_path(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  %t1702 = alloca %nyx_string*
  %t1717 = alloca %nyx_string*
  %t1723 = alloca i64
  %t1724 = alloca i64
  %t1734 = alloca i8
  %t1751 = alloca %nyx_string*
  %t1752 = alloca i1
  %t1753 = alloca i1
  %t1785 = alloca %nyx_string*
  %t1797 = alloca %nyx_string*
  %t1806 = alloca %nyx_string*
  %t1818 = alloca %nyx_string*
  %t1827 = alloca %nyx_string*
  %t1842 = alloca %nyx_string*
  %t1856 = alloca %nyx_string*
  %t1862 = alloca %nyx_string*
  %t1877 = alloca %nyx_string*
  %t1891 = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t1698 = getelementptr [16 x i8], [16 x i8]* @.str139, i32 0, i32 0
  %t1699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str139.c, i8* %t1698, i64 15)
  %t1700 = call i8* @nyx_string_to_cstr(%nyx_string* %t1699)
  %t1701 = call %nyx_string* @nyx_getenv(i8* %t1700)
  store %nyx_string* %t1701, %nyx_string** %t1702
  %t1703 = load %nyx_string*, %nyx_string** %t1702
  %t1704 = getelementptr [1 x i8], [1 x i8]* @.str140, i32 0, i32 0
  %t1705 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str140.c, i8* %t1704, i64 0)
  %t1706 = call i1 @nyx_string_equals(%nyx_string* %t1703, %nyx_string* %t1705)
  %t1707 = xor i1 %t1706, true
  br i1 %t1707, label %then443, label %else444
then443:
  %t1708 = load %nyx_string*, %nyx_string** %t1702
  %t1709 = getelementptr [2 x i8], [2 x i8]* @.str141, i32 0, i32 0
  %t1710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str141.c, i8* %t1709, i64 1)
  %t1711 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1708, %nyx_string* %t1710)
  %t1712 = load %nyx_string*, %nyx_string** %path.ptr
  %t1713 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1711, %nyx_string* %t1712)
  %t1714 = getelementptr [4 x i8], [4 x i8]* @.str142, i32 0, i32 0
  %t1715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str142.c, i8* %t1714, i64 3)
  %t1716 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1713, %nyx_string* %t1715)
  store %nyx_string* %t1716, %nyx_string** %t1717
  %t1718 = load %nyx_string*, %nyx_string** %t1717
  %t1719 = call i8* @nyx_string_to_cstr(%nyx_string* %t1718)
  %t1720 = call i1 @nyx_file_exists(i8* %t1719)
  br i1 %t1720, label %then446, label %else447
then446:
  %t1721 = load %nyx_string*, %nyx_string** %t1717
  ret %nyx_string* %t1721
else447:
  br label %merge448
merge448:
  br label %merge445
else444:
  br label %merge445
merge445:
  %t1722 = sub i64 0, 1
  store i64 %t1722, i64* %t1723
  store i64 0, i64* %t1724
  br label %while_cond449
while_cond449:
  %t1725 = load i64, i64* %t1724
  %t1726 = load %nyx_string*, %nyx_string** %path.ptr
  %t1727 = call i64 @nyx_string_byte_length(%nyx_string* %t1726)
  %t1728 = icmp slt i64 %t1725, %t1727
  br i1 %t1728, label %while_body450, label %while_end451
while_body450:
  %t1729 = load %nyx_string*, %nyx_string** %path.ptr
  %t1730 = load i64, i64* %t1724
  %t1731 = call i8 @nyx_string_char_at(%nyx_string* %t1729, i64 %t1730)
  %t1732 = zext i8 %t1731 to i64
  %t1733 = trunc i64 %t1732 to i8
  store i8 %t1733, i8* %t1734
  %t1735 = load i8, i8* %t1734
  %t1736 = getelementptr [1 x i8], [1 x i8]* @.str143, i32 0, i32 0
  %t1737 = load i8, i8* %t1736
  %t1738 = zext i8 %t1737 to i64
  %t1739 = zext i8 %t1735 to i64
  %t1740 = icmp eq i64 %t1739, %t1738
  br i1 %t1740, label %then452, label %else453
then452:
  %t1741 = load i64, i64* %t1724
  store i64 %t1741, i64* %t1723
  %t1742 = load %nyx_string*, %nyx_string** %path.ptr
  %t1743 = call i64 @nyx_string_byte_length(%nyx_string* %t1742)
  store i64 %t1743, i64* %t1724
  br label %merge454
else453:
  %t1744 = load i64, i64* %t1724
  %t1745 = add i64 %t1744, 1
  store i64 %t1745, i64* %t1724
  br label %merge454
merge454:
  br label %while_cond449
while_end451:
  %t1746 = load i64, i64* %t1723
  %t1747 = icmp sgt i64 %t1746, 0
  br i1 %t1747, label %then455, label %else456
then455:
  %t1748 = load %nyx_string*, %nyx_string** %path.ptr
  %t1749 = load i64, i64* %t1723
  %t1750 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1748, i64 0, i64 %t1749)
  store %nyx_string* %t1750, %nyx_string** %t1751
  store i1 false, i1* %t1752
  store i1 false, i1* %t1753
  %t1754 = load %nyx_string*, %nyx_string** %t1751
  %t1755 = getelementptr [4 x i8], [4 x i8]* @.str144, i32 0, i32 0
  %t1756 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str144.c, i8* %t1755, i64 3)
  %t1757 = call i1 @nyx_string_equals(%nyx_string* %t1754, %nyx_string* %t1756)
  %t1758 = xor i1 %t1757, true
  br i1 %t1758, label %sc_and_rhs458, label %sc_and_end459
sc_and_rhs458:
  %t1759 = load %nyx_string*, %nyx_string** %t1751
  %t1760 = getelementptr [4 x i8], [4 x i8]* @.str145, i32 0, i32 0
  %t1761 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str145.c, i8* %t1760, i64 3)
  %t1762 = call i1 @nyx_string_equals(%nyx_string* %t1759, %nyx_string* %t1761)
  %t1763 = xor i1 %t1762, true
  store i1 %t1763, i1* %t1753
  br label %sc_and_end459
sc_and_end459:
  %t1764 = load i1, i1* %t1753
  br i1 %t1764, label %sc_and_rhs460, label %sc_and_end461
sc_and_rhs460:
  %t1765 = load %nyx_string*, %nyx_string** %t1751
  %t1766 = getelementptr [9 x i8], [9 x i8]* @.str146, i32 0, i32 0
  %t1767 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str146.c, i8* %t1766, i64 8)
  %t1768 = call i1 @nyx_string_equals(%nyx_string* %t1765, %nyx_string* %t1767)
  %t1769 = xor i1 %t1768, true
  store i1 %t1769, i1* %t1752
  br label %sc_and_end461
sc_and_end461:
  %t1770 = load i1, i1* %t1752
  br i1 %t1770, label %then462, label %else463
then462:
  %t1771 = load %nyx_string*, %nyx_string** %t1702
  %t1772 = getelementptr [1 x i8], [1 x i8]* @.str147, i32 0, i32 0
  %t1773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str147.c, i8* %t1772, i64 0)
  %t1774 = call i1 @nyx_string_equals(%nyx_string* %t1771, %nyx_string* %t1773)
  %t1775 = xor i1 %t1774, true
  br i1 %t1775, label %then465, label %else466
then465:
  %t1776 = load %nyx_string*, %nyx_string** %t1702
  %t1777 = getelementptr [11 x i8], [11 x i8]* @.str148, i32 0, i32 0
  %t1778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str148.c, i8* %t1777, i64 10)
  %t1779 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1776, %nyx_string* %t1778)
  %t1780 = load %nyx_string*, %nyx_string** %path.ptr
  %t1781 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1779, %nyx_string* %t1780)
  %t1782 = getelementptr [4 x i8], [4 x i8]* @.str149, i32 0, i32 0
  %t1783 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str149.c, i8* %t1782, i64 3)
  %t1784 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1781, %nyx_string* %t1783)
  store %nyx_string* %t1784, %nyx_string** %t1785
  %t1786 = load %nyx_string*, %nyx_string** %t1785
  %t1787 = call i8* @nyx_string_to_cstr(%nyx_string* %t1786)
  %t1788 = call i1 @nyx_file_exists(i8* %t1787)
  br i1 %t1788, label %then468, label %else469
then468:
  %t1789 = load %nyx_string*, %nyx_string** %t1785
  ret %nyx_string* %t1789
else469:
  br label %merge470
merge470:
  br label %merge467
else466:
  br label %merge467
merge467:
  %t1790 = getelementptr [10 x i8], [10 x i8]* @.str150, i32 0, i32 0
  %t1791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str150.c, i8* %t1790, i64 9)
  %t1792 = load %nyx_string*, %nyx_string** %path.ptr
  %t1793 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1791, %nyx_string* %t1792)
  %t1794 = getelementptr [4 x i8], [4 x i8]* @.str151, i32 0, i32 0
  %t1795 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str151.c, i8* %t1794, i64 3)
  %t1796 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1793, %nyx_string* %t1795)
  store %nyx_string* %t1796, %nyx_string** %t1797
  %t1798 = load %nyx_string*, %nyx_string** %t1797
  %t1799 = call i8* @nyx_string_to_cstr(%nyx_string* %t1798)
  %t1800 = call i1 @nyx_file_exists(i8* %t1799)
  br i1 %t1800, label %then471, label %else472
then471:
  %t1801 = load %nyx_string*, %nyx_string** %t1797
  ret %nyx_string* %t1801
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
  %t1802 = load %nyx_string*, %nyx_string** %path.ptr
  %t1803 = getelementptr [4 x i8], [4 x i8]* @.str152, i32 0, i32 0
  %t1804 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str152.c, i8* %t1803, i64 3)
  %t1805 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1802, %nyx_string* %t1804)
  store %nyx_string* %t1805, %nyx_string** %t1806
  %t1807 = load %nyx_string*, %nyx_string** %t1806
  %t1808 = call i8* @nyx_string_to_cstr(%nyx_string* %t1807)
  %t1809 = call i1 @nyx_file_exists(i8* %t1808)
  br i1 %t1809, label %then474, label %else475
then474:
  %t1810 = load %nyx_string*, %nyx_string** %t1806
  ret %nyx_string* %t1810
else475:
  br label %merge476
merge476:
  %t1811 = getelementptr [5 x i8], [5 x i8]* @.str153, i32 0, i32 0
  %t1812 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str153.c, i8* %t1811, i64 4)
  %t1813 = load %nyx_string*, %nyx_string** %path.ptr
  %t1814 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1812, %nyx_string* %t1813)
  %t1815 = getelementptr [4 x i8], [4 x i8]* @.str154, i32 0, i32 0
  %t1816 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str154.c, i8* %t1815, i64 3)
  %t1817 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1814, %nyx_string* %t1816)
  store %nyx_string* %t1817, %nyx_string** %t1818
  %t1819 = load %nyx_string*, %nyx_string** %t1818
  %t1820 = call i8* @nyx_string_to_cstr(%nyx_string* %t1819)
  %t1821 = call i1 @nyx_file_exists(i8* %t1820)
  br i1 %t1821, label %then477, label %else478
then477:
  %t1822 = load %nyx_string*, %nyx_string** %t1818
  ret %nyx_string* %t1822
else478:
  br label %merge479
merge479:
  %t1823 = getelementptr [9 x i8], [9 x i8]* @.str155, i32 0, i32 0
  %t1824 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str155.c, i8* %t1823, i64 8)
  %t1825 = call i8* @nyx_string_to_cstr(%nyx_string* %t1824)
  %t1826 = call %nyx_string* @nyx_getenv(i8* %t1825)
  store %nyx_string* %t1826, %nyx_string** %t1827
  %t1828 = load %nyx_string*, %nyx_string** %t1827
  %t1829 = getelementptr [1 x i8], [1 x i8]* @.str156, i32 0, i32 0
  %t1830 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str156.c, i8* %t1829, i64 0)
  %t1831 = call i1 @nyx_string_equals(%nyx_string* %t1828, %nyx_string* %t1830)
  %t1832 = xor i1 %t1831, true
  br i1 %t1832, label %then480, label %else481
then480:
  %t1833 = load %nyx_string*, %nyx_string** %t1827
  %t1834 = getelementptr [6 x i8], [6 x i8]* @.str157, i32 0, i32 0
  %t1835 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str157.c, i8* %t1834, i64 5)
  %t1836 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1833, %nyx_string* %t1835)
  %t1837 = load %nyx_string*, %nyx_string** %path.ptr
  %t1838 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1836, %nyx_string* %t1837)
  %t1839 = getelementptr [4 x i8], [4 x i8]* @.str158, i32 0, i32 0
  %t1840 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str158.c, i8* %t1839, i64 3)
  %t1841 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1838, %nyx_string* %t1840)
  store %nyx_string* %t1841, %nyx_string** %t1842
  %t1843 = load %nyx_string*, %nyx_string** %t1842
  %t1844 = call i8* @nyx_string_to_cstr(%nyx_string* %t1843)
  %t1845 = call i1 @nyx_file_exists(i8* %t1844)
  br i1 %t1845, label %then483, label %else484
then483:
  %t1846 = load %nyx_string*, %nyx_string** %t1842
  ret %nyx_string* %t1846
else484:
  br label %merge485
merge485:
  %t1847 = load %nyx_string*, %nyx_string** %t1827
  %t1848 = getelementptr [2 x i8], [2 x i8]* @.str159, i32 0, i32 0
  %t1849 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str159.c, i8* %t1848, i64 1)
  %t1850 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1847, %nyx_string* %t1849)
  %t1851 = load %nyx_string*, %nyx_string** %path.ptr
  %t1852 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1850, %nyx_string* %t1851)
  %t1853 = getelementptr [4 x i8], [4 x i8]* @.str160, i32 0, i32 0
  %t1854 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str160.c, i8* %t1853, i64 3)
  %t1855 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1852, %nyx_string* %t1854)
  store %nyx_string* %t1855, %nyx_string** %t1856
  %t1857 = load %nyx_string*, %nyx_string** %t1856
  %t1858 = call i8* @nyx_string_to_cstr(%nyx_string* %t1857)
  %t1859 = call i1 @nyx_file_exists(i8* %t1858)
  br i1 %t1859, label %then486, label %else487
then486:
  %t1860 = load %nyx_string*, %nyx_string** %t1856
  ret %nyx_string* %t1860
else487:
  br label %merge488
merge488:
  br label %merge482
else481:
  br label %merge482
merge482:
  %t1861 = call %nyx_string* @dir_usuario_res()
  store %nyx_string* %t1861, %nyx_string** %t1862
  %t1863 = load %nyx_string*, %nyx_string** %t1862
  %t1864 = getelementptr [1 x i8], [1 x i8]* @.str161, i32 0, i32 0
  %t1865 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str161.c, i8* %t1864, i64 0)
  %t1866 = call i1 @nyx_string_equals(%nyx_string* %t1863, %nyx_string* %t1865)
  %t1867 = xor i1 %t1866, true
  br i1 %t1867, label %then489, label %else490
then489:
  %t1868 = load %nyx_string*, %nyx_string** %t1862
  %t1869 = getelementptr [11 x i8], [11 x i8]* @.str162, i32 0, i32 0
  %t1870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str162.c, i8* %t1869, i64 10)
  %t1871 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1868, %nyx_string* %t1870)
  %t1872 = load %nyx_string*, %nyx_string** %path.ptr
  %t1873 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1871, %nyx_string* %t1872)
  %t1874 = getelementptr [4 x i8], [4 x i8]* @.str163, i32 0, i32 0
  %t1875 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str163.c, i8* %t1874, i64 3)
  %t1876 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1873, %nyx_string* %t1875)
  store %nyx_string* %t1876, %nyx_string** %t1877
  %t1878 = load %nyx_string*, %nyx_string** %t1877
  %t1879 = call i8* @nyx_string_to_cstr(%nyx_string* %t1878)
  %t1880 = call i1 @nyx_file_exists(i8* %t1879)
  br i1 %t1880, label %then492, label %else493
then492:
  %t1881 = load %nyx_string*, %nyx_string** %t1877
  ret %nyx_string* %t1881
else493:
  br label %merge494
merge494:
  %t1882 = load %nyx_string*, %nyx_string** %t1862
  %t1883 = getelementptr [7 x i8], [7 x i8]* @.str164, i32 0, i32 0
  %t1884 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str164.c, i8* %t1883, i64 6)
  %t1885 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1882, %nyx_string* %t1884)
  %t1886 = load %nyx_string*, %nyx_string** %path.ptr
  %t1887 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1885, %nyx_string* %t1886)
  %t1888 = getelementptr [4 x i8], [4 x i8]* @.str165, i32 0, i32 0
  %t1889 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str165.c, i8* %t1888, i64 3)
  %t1890 = call %nyx_string* @nyx_string_concat(%nyx_string* %t1887, %nyx_string* %t1889)
  store %nyx_string* %t1890, %nyx_string** %t1891
  %t1892 = load %nyx_string*, %nyx_string** %t1891
  %t1893 = call i8* @nyx_string_to_cstr(%nyx_string* %t1892)
  %t1894 = call i1 @nyx_file_exists(i8* %t1893)
  br i1 %t1894, label %then495, label %else496
then495:
  %t1895 = load %nyx_string*, %nyx_string** %t1891
  ret %nyx_string* %t1895
else496:
  br label %merge497
merge497:
  br label %merge491
else490:
  br label %merge491
merge491:
  %t1896 = getelementptr [1 x i8], [1 x i8]* @.str166, i32 0, i32 0
  %t1897 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str166.c, i8* %t1896, i64 0)
  ret %nyx_string* %t1897
}

define internal { i64, i8* }* @prelude_module_list(
%nyx_string* %prelude.param) {
  %prelude.ptr = alloca %nyx_string*
  %t1900 = alloca %nyx_string*
  %t1904 = alloca i64
  %t1931 = alloca %nyx_string*
  %t1936 = alloca i64
  %t1938 = alloca %nyx_string*
  %t1945 = alloca { i64, i8* }*
  %t1950 = alloca { i64, i8* }*
  %t1951 = alloca i64
  %t1954 = alloca %nyx_string*
  %t1963 = alloca %nyx_string*
  %t1966 = alloca %nyx_string*
  store %nyx_string* %prelude.param, %nyx_string** %prelude.ptr
  %t1898 = getelementptr [20 x i8], [20 x i8]* @.str167, i32 0, i32 0
  %t1899 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str167.c, i8* %t1898, i64 19)
  store %nyx_string* %t1899, %nyx_string** %t1900
  %t1901 = load %nyx_string*, %nyx_string** %prelude.ptr
  %t1902 = load %nyx_string*, %nyx_string** %t1900
  %t1903 = call i64 @nyx_string_index_of(%nyx_string* %t1901, %nyx_string* %t1902)
  store i64 %t1903, i64* %t1904
  %t1905 = load i64, i64* %t1904
  %t1906 = icmp slt i64 %t1905, 0
  br i1 %t1906, label %then498, label %else499
then498:
  %t1907 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1908 = getelementptr [3 x i8], [3 x i8]* @.str168, i32 0, i32 0
  %t1909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str168.c, i8* %t1908, i64 2)
  %t1910 = ptrtoint %nyx_string* %t1909 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1907, i64 %t1910, i64 2)
  %t1911 = getelementptr [5 x i8], [5 x i8]* @.str169, i32 0, i32 0
  %t1912 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str169.c, i8* %t1911, i64 4)
  %t1913 = ptrtoint %nyx_string* %t1912 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1907, i64 %t1913, i64 2)
  %t1914 = getelementptr [6 x i8], [6 x i8]* @.str170, i32 0, i32 0
  %t1915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str170.c, i8* %t1914, i64 5)
  %t1916 = ptrtoint %nyx_string* %t1915 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1907, i64 %t1916, i64 2)
  %t1917 = getelementptr [5 x i8], [5 x i8]* @.str171, i32 0, i32 0
  %t1918 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str171.c, i8* %t1917, i64 4)
  %t1919 = ptrtoint %nyx_string* %t1918 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1907, i64 %t1919, i64 2)
  %t1920 = getelementptr [4 x i8], [4 x i8]* @.str172, i32 0, i32 0
  %t1921 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str172.c, i8* %t1920, i64 3)
  %t1922 = ptrtoint %nyx_string* %t1921 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1907, i64 %t1922, i64 2)
  ret { i64, i8* }* %t1907
else499:
  br label %merge500
merge500:
  %t1923 = load %nyx_string*, %nyx_string** %prelude.ptr
  %t1924 = load i64, i64* %t1904
  %t1925 = load %nyx_string*, %nyx_string** %t1900
  %t1926 = call i64 @nyx_string_byte_length(%nyx_string* %t1925)
  %t1927 = add i64 %t1924, %t1926
  %t1928 = load %nyx_string*, %nyx_string** %prelude.ptr
  %t1929 = call i64 @nyx_string_byte_length(%nyx_string* %t1928)
  %t1930 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1923, i64 %t1927, i64 %t1929)
  store %nyx_string* %t1930, %nyx_string** %t1931
  %t1932 = load %nyx_string*, %nyx_string** %t1931
  %t1933 = getelementptr [2 x i8], [2 x i8]* @.str173, i32 0, i32 0
  %t1934 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str173.c, i8* %t1933, i64 1)
  %t1935 = call i64 @nyx_string_index_of(%nyx_string* %t1932, %nyx_string* %t1934)
  store i64 %t1935, i64* %t1936
  %t1937 = load %nyx_string*, %nyx_string** %t1931
  store %nyx_string* %t1937, %nyx_string** %t1938
  %t1939 = load i64, i64* %t1936
  %t1940 = icmp sge i64 %t1939, 0
  br i1 %t1940, label %then501, label %else502
then501:
  %t1941 = load %nyx_string*, %nyx_string** %t1931
  %t1942 = load i64, i64* %t1936
  %t1943 = call %nyx_string* @nyx_string_substring(%nyx_string* %t1941, i64 0, i64 %t1942)
  store %nyx_string* %t1943, %nyx_string** %t1938
  br label %merge503
else502:
  br label %merge503
merge503:
  %t1944 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t1944, { i64, i8* }** %t1945
  %t1946 = load %nyx_string*, %nyx_string** %t1938
  %t1947 = getelementptr [2 x i8], [2 x i8]* @.str174, i32 0, i32 0
  %t1948 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str174.c, i8* %t1947, i64 1)
  %t1949 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t1946, %nyx_string* %t1948)
  store { i64, i8* }* %t1949, { i64, i8* }** %t1950
  store i64 0, i64* %t1951
  %t1952 = getelementptr [1 x i8], [1 x i8]* @.str175, i32 0, i32 0
  %t1953 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str175.c, i8* %t1952, i64 0)
  store %nyx_string* %t1953, %nyx_string** %t1954
  br label %while_cond504
while_cond504:
  %t1955 = load i64, i64* %t1951
  %t1956 = load { i64, i8* }*, { i64, i8* }** %t1950
  %t1957 = call i64 @nyx_array_length({ i64, i8* }* %t1956)
  %t1958 = icmp slt i64 %t1955, %t1957
  br i1 %t1958, label %while_body505, label %while_end506
while_body505:
  %t1959 = load { i64, i8* }*, { i64, i8* }** %t1950
  %t1960 = load i64, i64* %t1951
  %t1961 = call i64 @nyx_array_get_checked({ i64, i8* }* %t1959, i64 %t1960, i64 2)
  %t1962 = inttoptr i64 %t1961 to %nyx_string*
  store %nyx_string* %t1962, %nyx_string** %t1963
  %t1964 = load %nyx_string*, %nyx_string** %t1963
  %t1965 = call %nyx_string* @nyx_string_trim(%nyx_string* %t1964)
  store %nyx_string* %t1965, %nyx_string** %t1966
  %t1967 = load %nyx_string*, %nyx_string** %t1966
  %t1968 = load %nyx_string*, %nyx_string** %t1954
  %t1969 = call i1 @nyx_string_equals(%nyx_string* %t1967, %nyx_string* %t1968)
  %t1970 = xor i1 %t1969, true
  br i1 %t1970, label %then507, label %else508
then507:
  %t1971 = load { i64, i8* }*, { i64, i8* }** %t1945
  %t1972 = load %nyx_string*, %nyx_string** %t1966
  %t1973 = ptrtoint %nyx_string* %t1972 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1971, i64 %t1973, i64 2)
  br label %merge509
else508:
  br label %merge509
merge509:
  %t1974 = load i64, i64* %t1951
  %t1975 = add i64 %t1974, 1
  store i64 %t1975, i64* %t1951
  br label %while_cond504
while_end506:
  %t1976 = load { i64, i8* }*, { i64, i8* }** %t1945
  %t1977 = call i64 @nyx_array_length({ i64, i8* }* %t1976)
  %t1978 = icmp eq i64 %t1977, 0
  br i1 %t1978, label %then510, label %else511
then510:
  %t1979 = call { i64, i8* }* @nyx_array_new_ptr()
  %t1980 = getelementptr [3 x i8], [3 x i8]* @.str176, i32 0, i32 0
  %t1981 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str176.c, i8* %t1980, i64 2)
  %t1982 = ptrtoint %nyx_string* %t1981 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1979, i64 %t1982, i64 2)
  %t1983 = getelementptr [5 x i8], [5 x i8]* @.str177, i32 0, i32 0
  %t1984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str177.c, i8* %t1983, i64 4)
  %t1985 = ptrtoint %nyx_string* %t1984 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1979, i64 %t1985, i64 2)
  %t1986 = getelementptr [6 x i8], [6 x i8]* @.str178, i32 0, i32 0
  %t1987 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str178.c, i8* %t1986, i64 5)
  %t1988 = ptrtoint %nyx_string* %t1987 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1979, i64 %t1988, i64 2)
  %t1989 = getelementptr [5 x i8], [5 x i8]* @.str179, i32 0, i32 0
  %t1990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str179.c, i8* %t1989, i64 4)
  %t1991 = ptrtoint %nyx_string* %t1990 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1979, i64 %t1991, i64 2)
  %t1992 = getelementptr [4 x i8], [4 x i8]* @.str180, i32 0, i32 0
  %t1993 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str180.c, i8* %t1992, i64 3)
  %t1994 = ptrtoint %nyx_string* %t1993 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t1979, i64 %t1994, i64 2)
  ret { i64, i8* }* %t1979
else511:
  br label %merge512
merge512:
  %t1995 = load { i64, i8* }*, { i64, i8* }** %t1945
  ret { i64, i8* }* %t1995
}

define internal i1 @es_modulo_del_compilador(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  %t1996 = alloca i1
  %t2012 = alloca { i64, i8* }*
  %t2013 = alloca i64
  %t2016 = alloca %nyx_string*
  %t2019 = alloca %nyx_string*
  %t2022 = alloca %nyx_string*
  %t2031 = alloca %nyx_string*
  %t2034 = alloca %nyx_string*
  %t2038 = alloca i1
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  store i1 false, i1* %t1996
  %t1997 = load %nyx_string*, %nyx_string** %raw.ptr
  %t1998 = getelementptr [10 x i8], [10 x i8]* @.str181, i32 0, i32 0
  %t1999 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str181.c, i8* %t1998, i64 9)
  %t2000 = call i1 @nyx_string_contains(%nyx_string* %t1997, %nyx_string* %t1999)
  %t2001 = xor i1 %t2000, true
  br i1 %t2001, label %sc_and_rhs513, label %sc_and_end514
sc_and_rhs513:
  %t2002 = load %nyx_string*, %nyx_string** %raw.ptr
  %t2003 = getelementptr [16 x i8], [16 x i8]* @.str182, i32 0, i32 0
  %t2004 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str182.c, i8* %t2003, i64 15)
  %t2005 = call i1 @nyx_string_contains(%nyx_string* %t2002, %nyx_string* %t2004)
  %t2006 = xor i1 %t2005, true
  store i1 %t2006, i1* %t1996
  br label %sc_and_end514
sc_and_end514:
  %t2007 = load i1, i1* %t1996
  br i1 %t2007, label %then515, label %else516
then515:
  ret i1 0
else516:
  br label %merge517
merge517:
  %t2008 = load %nyx_string*, %nyx_string** %raw.ptr
  %t2009 = getelementptr [2 x i8], [2 x i8]* @.str183, i32 0, i32 0
  %t2010 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str183.c, i8* %t2009, i64 1)
  %t2011 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2008, %nyx_string* %t2010)
  store { i64, i8* }* %t2011, { i64, i8* }** %t2012
  store i64 0, i64* %t2013
  %t2014 = getelementptr [19 x i8], [19 x i8]* @.str184, i32 0, i32 0
  %t2015 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str184.c, i8* %t2014, i64 18)
  store %nyx_string* %t2015, %nyx_string** %t2016
  %t2017 = getelementptr [8 x i8], [8 x i8]* @.str185, i32 0, i32 0
  %t2018 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str185.c, i8* %t2017, i64 7)
  store %nyx_string* %t2018, %nyx_string** %t2019
  %t2020 = getelementptr [11 x i8], [11 x i8]* @.str186, i32 0, i32 0
  %t2021 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str186.c, i8* %t2020, i64 10)
  store %nyx_string* %t2021, %nyx_string** %t2022
  br label %while_cond518
while_cond518:
  %t2023 = load i64, i64* %t2013
  %t2024 = load { i64, i8* }*, { i64, i8* }** %t2012
  %t2025 = call i64 @nyx_array_length({ i64, i8* }* %t2024)
  %t2026 = icmp slt i64 %t2023, %t2025
  br i1 %t2026, label %while_body519, label %while_end520
while_body519:
  %t2027 = load { i64, i8* }*, { i64, i8* }** %t2012
  %t2028 = load i64, i64* %t2013
  %t2029 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2027, i64 %t2028, i64 2)
  %t2030 = inttoptr i64 %t2029 to %nyx_string*
  store %nyx_string* %t2030, %nyx_string** %t2031
  %t2032 = load %nyx_string*, %nyx_string** %t2031
  %t2033 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2032)
  store %nyx_string* %t2033, %nyx_string** %t2034
  %t2035 = load %nyx_string*, %nyx_string** %t2034
  %t2036 = load %nyx_string*, %nyx_string** %t2016
  %t2037 = call i1 @nyx_string_starts_with(%nyx_string* %t2035, %nyx_string* %t2036)
  br i1 %t2037, label %then521, label %else522
then521:
  ret i1 1
else522:
  br label %merge523
merge523:
  store i1 false, i1* %t2038
  %t2039 = load %nyx_string*, %nyx_string** %t2034
  %t2040 = load %nyx_string*, %nyx_string** %t2019
  %t2041 = call i1 @nyx_string_starts_with(%nyx_string* %t2039, %nyx_string* %t2040)
  br i1 %t2041, label %sc_and_rhs524, label %sc_and_end525
sc_and_rhs524:
  %t2042 = load %nyx_string*, %nyx_string** %t2034
  %t2043 = load %nyx_string*, %nyx_string** %t2022
  %t2044 = call i1 @nyx_string_contains(%nyx_string* %t2042, %nyx_string* %t2043)
  store i1 %t2044, i1* %t2038
  br label %sc_and_end525
sc_and_end525:
  %t2045 = load i1, i1* %t2038
  br i1 %t2045, label %then526, label %else527
then526:
  ret i1 1
else527:
  br label %merge528
merge528:
  %t2046 = load i64, i64* %t2013
  %t2047 = add i64 %t2046, 1
  store i64 %t2047, i64* %t2013
  br label %while_cond518
while_end520:
  ret i1 0
}

define internal %nyx_string* @marca_cierre(
%nyx_string* %padre.param) {
  %padre.ptr = alloca %nyx_string*
  %t2052 = alloca %nyx_string*
  %t2053 = alloca i1
  store %nyx_string* %padre.param, %nyx_string** %padre.ptr
  %t2048 = getelementptr [13 x i8], [13 x i8]* @.str187, i32 0, i32 0
  %t2049 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str187.c, i8* %t2048, i64 12)
  %t2050 = call i8* @nyx_string_to_cstr(%nyx_string* %t2049)
  %t2051 = call %nyx_string* @nyx_getenv(i8* %t2050)
  store %nyx_string* %t2051, %nyx_string** %t2052
  store i1 true, i1* %t2053
  %t2054 = load %nyx_string*, %nyx_string** %padre.ptr
  %t2055 = getelementptr [1 x i8], [1 x i8]* @.str188, i32 0, i32 0
  %t2056 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str188.c, i8* %t2055, i64 0)
  %t2057 = call i1 @nyx_string_equals(%nyx_string* %t2054, %nyx_string* %t2056)
  br i1 %t2057, label %sc_or_end530, label %sc_or_rhs529
sc_or_rhs529:
  %t2058 = load %nyx_string*, %nyx_string** %padre.ptr
  %t2059 = load %nyx_string*, %nyx_string** %t2052
  %t2060 = call i1 @nyx_string_equals(%nyx_string* %t2058, %nyx_string* %t2059)
  store i1 %t2060, i1* %t2053
  br label %sc_or_end530
sc_or_end530:
  %t2061 = load i1, i1* %t2053
  br i1 %t2061, label %then531, label %else532
then531:
  %t2062 = load %nyx_string*, %nyx_string** %t2052
  %t2063 = getelementptr [1 x i8], [1 x i8]* @.str189, i32 0, i32 0
  %t2064 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str189.c, i8* %t2063, i64 0)
  %t2065 = call i1 @nyx_string_equals(%nyx_string* %t2062, %nyx_string* %t2064)
  %t2066 = xor i1 %t2065, true
  br i1 %t2066, label %then534, label %else535
then534:
  %t2067 = getelementptr [11 x i8], [11 x i8]* @.str190, i32 0, i32 0
  %t2068 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str190.c, i8* %t2067, i64 10)
  %t2069 = load %nyx_string*, %nyx_string** %t2052
  %t2070 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2068, %nyx_string* %t2069)
  %t2071 = getelementptr [2 x i8], [2 x i8]* @.str191, i32 0, i32 0
  %t2072 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str191.c, i8* %t2071, i64 1)
  %t2073 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2070, %nyx_string* %t2072)
  ret %nyx_string* %t2073
else535:
  br label %merge536
merge536:
  %t2074 = getelementptr [11 x i8], [11 x i8]* @.str192, i32 0, i32 0
  %t2075 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str192.c, i8* %t2074, i64 10)
  ret %nyx_string* %t2075
else532:
  br label %merge533
merge533:
  %t2076 = getelementptr [11 x i8], [11 x i8]* @.str193, i32 0, i32 0
  %t2077 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str193.c, i8* %t2076, i64 10)
  %t2078 = load %nyx_string*, %nyx_string** %padre.ptr
  %t2079 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2077, %nyx_string* %t2078)
  %t2080 = getelementptr [2 x i8], [2 x i8]* @.str194, i32 0, i32 0
  %t2081 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str194.c, i8* %t2080, i64 1)
  %t2082 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2079, %nyx_string* %t2081)
  ret %nyx_string* %t2082
}

define internal %nyx_string* @path_de_marca(
%nyx_string* %t.param) {
  %t.ptr = alloca %nyx_string*
  %t2087 = alloca %nyx_string*
  store %nyx_string* %t.param, %nyx_string** %t.ptr
  %t2083 = load %nyx_string*, %nyx_string** %t.ptr
  %t2084 = load %nyx_string*, %nyx_string** %t.ptr
  %t2085 = call i64 @nyx_string_byte_length(%nyx_string* %t2084)
  %t2086 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2083, i64 9, i64 %t2085)
  store %nyx_string* %t2086, %nyx_string** %t2087
  %t2088 = load %nyx_string*, %nyx_string** %t2087
  %t2089 = getelementptr [8 x i8], [8 x i8]* @.str195, i32 0, i32 0
  %t2090 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str195.c, i8* %t2089, i64 7)
  %t2091 = call i1 @nyx_string_starts_with(%nyx_string* %t2088, %nyx_string* %t2090)
  br i1 %t2091, label %then537, label %else538
then537:
  %t2092 = load %nyx_string*, %nyx_string** %t2087
  %t2093 = load %nyx_string*, %nyx_string** %t2087
  %t2094 = call i64 @nyx_string_byte_length(%nyx_string* %t2093)
  %t2095 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2092, i64 7, i64 %t2094)
  %t2096 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2095)
  ret %nyx_string* %t2096
else538:
  br label %merge539
merge539:
  %t2097 = load %nyx_string*, %nyx_string** %t2087
  %t2098 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2097)
  ret %nyx_string* %t2098
}

define internal %nyx_string* @import_ya_inlineado(
) {
  %t2099 = getelementptr [2 x i8], [2 x i8]* @.str196, i32 0, i32 0
  %t2100 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str196.c, i8* %t2099, i64 1)
  ret %nyx_string* %t2100
}

define internal %nyx_string* @ruta_import_del_principal(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  %t2105 = alloca %nyx_string*
  %t2130 = alloca %nyx_string*
  %t2131 = alloca i1
  %t2159 = alloca i1
  %t2173 = alloca %nyx_string*
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  %t2101 = getelementptr [16 x i8], [16 x i8]* @.str197, i32 0, i32 0
  %t2102 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str197.c, i8* %t2101, i64 15)
  %t2103 = call i8* @nyx_string_to_cstr(%nyx_string* %t2102)
  %t2104 = call %nyx_string* @nyx_getenv(i8* %t2103)
  store %nyx_string* %t2104, %nyx_string** %t2105
  %t2106 = load %nyx_string*, %nyx_string** %t2105
  %t2107 = getelementptr [1 x i8], [1 x i8]* @.str198, i32 0, i32 0
  %t2108 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str198.c, i8* %t2107, i64 0)
  %t2109 = call i1 @nyx_string_equals(%nyx_string* %t2106, %nyx_string* %t2108)
  br i1 %t2109, label %then540, label %else541
then540:
  %t2110 = getelementptr [8 x i8], [8 x i8]* @.str199, i32 0, i32 0
  %t2111 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str199.c, i8* %t2110, i64 7)
  %t2112 = call i8* @nyx_string_to_cstr(%nyx_string* %t2111)
  %t2113 = call %nyx_string* @nyx_getenv(i8* %t2112)
  store %nyx_string* %t2113, %nyx_string** %t2105
  br label %merge542
else541:
  br label %merge542
merge542:
  %t2114 = load %nyx_string*, %nyx_string** %t2105
  %t2115 = getelementptr [4 x i8], [4 x i8]* @.str200, i32 0, i32 0
  %t2116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str200.c, i8* %t2115, i64 3)
  %t2117 = call i1 @nyx_string_ends_with(%nyx_string* %t2114, %nyx_string* %t2116)
  %t2118 = xor i1 %t2117, true
  br i1 %t2118, label %then543, label %else544
then543:
  %t2119 = getelementptr [1 x i8], [1 x i8]* @.str201, i32 0, i32 0
  %t2120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str201.c, i8* %t2119, i64 0)
  ret %nyx_string* %t2120
else544:
  br label %merge545
merge545:
  %t2121 = load %nyx_string*, %nyx_string** %t2105
  %t2122 = load %nyx_string*, %nyx_string** %t2105
  %t2123 = call i64 @nyx_string_byte_length(%nyx_string* %t2122)
  %t2124 = sub i64 %t2123, 3
  %t2125 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2121, i64 0, i64 %t2124)
  store %nyx_string* %t2125, %nyx_string** %t2105
  %t2126 = getelementptr [16 x i8], [16 x i8]* @.str202, i32 0, i32 0
  %t2127 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str202.c, i8* %t2126, i64 15)
  %t2128 = call i8* @nyx_string_to_cstr(%nyx_string* %t2127)
  %t2129 = call %nyx_string* @nyx_getenv(i8* %t2128)
  store %nyx_string* %t2129, %nyx_string** %t2130
  store i1 false, i1* %t2131
  %t2132 = load %nyx_string*, %nyx_string** %t2130
  %t2133 = getelementptr [1 x i8], [1 x i8]* @.str203, i32 0, i32 0
  %t2134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str203.c, i8* %t2133, i64 0)
  %t2135 = call i1 @nyx_string_equals(%nyx_string* %t2132, %nyx_string* %t2134)
  %t2136 = xor i1 %t2135, true
  br i1 %t2136, label %sc_and_rhs546, label %sc_and_end547
sc_and_rhs546:
  %t2137 = load %nyx_string*, %nyx_string** %t2105
  %t2138 = load %nyx_string*, %nyx_string** %t2130
  %t2139 = getelementptr [2 x i8], [2 x i8]* @.str204, i32 0, i32 0
  %t2140 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str204.c, i8* %t2139, i64 1)
  %t2141 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2138, %nyx_string* %t2140)
  %t2142 = call i1 @nyx_string_starts_with(%nyx_string* %t2137, %nyx_string* %t2141)
  store i1 %t2142, i1* %t2131
  br label %sc_and_end547
sc_and_end547:
  %t2143 = load i1, i1* %t2131
  br i1 %t2143, label %then548, label %else549
then548:
  %t2144 = load %nyx_string*, %nyx_string** %t2105
  %t2145 = load %nyx_string*, %nyx_string** %t2130
  %t2146 = call i64 @nyx_string_byte_length(%nyx_string* %t2145)
  %t2147 = add i64 %t2146, 1
  %t2148 = load %nyx_string*, %nyx_string** %t2105
  %t2149 = call i64 @nyx_string_byte_length(%nyx_string* %t2148)
  %t2150 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2144, i64 %t2147, i64 %t2149)
  store %nyx_string* %t2150, %nyx_string** %t2105
  br label %merge550
else549:
  br label %merge550
merge550:
  %t2151 = load %nyx_string*, %nyx_string** %t2105
  %t2152 = getelementptr [3 x i8], [3 x i8]* @.str205, i32 0, i32 0
  %t2153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str205.c, i8* %t2152, i64 2)
  %t2154 = call i1 @nyx_string_starts_with(%nyx_string* %t2151, %nyx_string* %t2153)
  br i1 %t2154, label %then551, label %else552
then551:
  %t2155 = load %nyx_string*, %nyx_string** %t2105
  %t2156 = load %nyx_string*, %nyx_string** %t2105
  %t2157 = call i64 @nyx_string_byte_length(%nyx_string* %t2156)
  %t2158 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2155, i64 2, i64 %t2157)
  store %nyx_string* %t2158, %nyx_string** %t2105
  br label %merge553
else552:
  br label %merge553
merge553:
  store i1 true, i1* %t2159
  %t2160 = load %nyx_string*, %nyx_string** %t2105
  %t2161 = getelementptr [1 x i8], [1 x i8]* @.str206, i32 0, i32 0
  %t2162 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str206.c, i8* %t2161, i64 0)
  %t2163 = call i1 @nyx_string_equals(%nyx_string* %t2160, %nyx_string* %t2162)
  br i1 %t2163, label %sc_or_end555, label %sc_or_rhs554
sc_or_rhs554:
  %t2164 = load %nyx_string*, %nyx_string** %t2105
  %t2165 = getelementptr [2 x i8], [2 x i8]* @.str207, i32 0, i32 0
  %t2166 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str207.c, i8* %t2165, i64 1)
  %t2167 = call i1 @nyx_string_starts_with(%nyx_string* %t2164, %nyx_string* %t2166)
  store i1 %t2167, i1* %t2159
  br label %sc_or_end555
sc_or_end555:
  %t2168 = load i1, i1* %t2159
  br i1 %t2168, label %then556, label %else557
then556:
  %t2169 = getelementptr [1 x i8], [1 x i8]* @.str208, i32 0, i32 0
  %t2170 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str208.c, i8* %t2169, i64 0)
  ret %nyx_string* %t2170
else557:
  br label %merge558
merge558:
  %t2171 = load %nyx_string*, %nyx_string** %t2105
  %t2172 = call %nyx_string* @resolve_module_path(%nyx_string* %t2171)
  store %nyx_string* %t2172, %nyx_string** %t2173
  %t2174 = load %nyx_string*, %nyx_string** %t2173
  %t2175 = getelementptr [1 x i8], [1 x i8]* @.str209, i32 0, i32 0
  %t2176 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str209.c, i8* %t2175, i64 0)
  %t2177 = call i1 @nyx_string_equals(%nyx_string* %t2174, %nyx_string* %t2176)
  br i1 %t2177, label %then559, label %else560
then559:
  %t2178 = getelementptr [1 x i8], [1 x i8]* @.str210, i32 0, i32 0
  %t2179 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str210.c, i8* %t2178, i64 0)
  ret %nyx_string* %t2179
else560:
  br label %merge561
merge561:
  %t2180 = load %nyx_string*, %nyx_string** %t2173
  %t2181 = call i8* @nyx_string_to_cstr(%nyx_string* %t2180)
  %t2182 = call %nyx_string* @nyx_read_file(i8* %t2181)
  %t2183 = load %nyx_string*, %nyx_string** %raw.ptr
  %t2184 = call i1 @nyx_string_equals(%nyx_string* %t2182, %nyx_string* %t2183)
  %t2185 = xor i1 %t2184, true
  br i1 %t2185, label %then562, label %else563
then562:
  %t2186 = getelementptr [1 x i8], [1 x i8]* @.str211, i32 0, i32 0
  %t2187 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str211.c, i8* %t2186, i64 0)
  ret %nyx_string* %t2187
else563:
  br label %merge564
merge564:
  %t2188 = load %nyx_string*, %nyx_string** %t2105
  ret %nyx_string* %t2188
}

define %nyx_string* @resolve_source(
%nyx_string* %raw.param) {
  %raw.ptr = alloca %nyx_string*
  %t2189 = alloca i1
  %t2201 = alloca i1
  %t2211 = alloca %nyx_string*
  %t2234 = alloca i8*
  %t2236 = alloca i8*
  %t2239 = alloca %nyx_string*
  %t2245 = alloca %nyx_string*
  %t2254 = alloca %nyx_string*
  %t2261 = alloca { i64, i8* }*
  %t2262 = alloca i64
  %t2271 = alloca %nyx_string*
  %t2288 = alloca %nyx_string*
  %t2299 = alloca %nyx_string*
  %t2300 = alloca i1
  %t2316 = alloca i8*
  %t2321 = alloca { i64, i8* }*
  %t2323 = alloca i8*
  %t2324 = alloca i64
  %t2333 = alloca %nyx_string*
  %t2338 = alloca %nyx_string*
  %t2346 = alloca %nyx_string*
  %t2351 = alloca i1
  %t2366 = alloca %nyx_string*
  %t2375 = alloca %nyx_string*
  %t2378 = alloca %nyx_string*
  %t2396 = alloca { i64, i8* }*
  %t2466 = alloca %nyx_string*
  %t2489 = alloca %nyx_string*
  %t2498 = alloca %nyx_string*
  %t2501 = alloca %nyx_string*
  %t2565 = alloca %nyx_string*
  %t2566 = alloca i1
  %t2572 = alloca { i64, i8* }*
  %t2574 = alloca i8*
  %t2575 = alloca i64
  %t2576 = alloca i64
  %t2579 = alloca %nyx_string*
  %t2588 = alloca %nyx_string*
  %t2591 = alloca %nyx_string*
  %t2608 = alloca i64
  %t2623 = alloca %nyx_string*
  %t2624 = alloca i1
  %t2648 = alloca %nyx_string*
  %t2657 = alloca %nyx_string*
  %t2660 = alloca %nyx_string*
  %t2678 = alloca { i64, i8* }*
  %t2739 = alloca %nyx_string*
  %t2740 = alloca i1
  %t2754 = alloca %nyx_string*
  %t2763 = alloca %nyx_string*
  %t2766 = alloca { i64, i8* }*
  %t2797 = alloca %nyx_string*
  %t2798 = alloca i1
  %t2822 = alloca %nyx_string*
  %t2831 = alloca %nyx_string*
  %t2834 = alloca %nyx_string*
  %t2906 = alloca %nyx_string*
  %t2916 = alloca %nyx_string*
  %t2919 = alloca { i64, i8* }*
  %t2920 = alloca i64
  %t2929 = alloca %nyx_string*
  %t2958 = alloca %nyx_string*
  store %nyx_string* %raw.param, %nyx_string** %raw.ptr
  store i1 false, i1* %t2189
  %t2190 = load %nyx_string*, %nyx_string** %raw.ptr
  %t2191 = call i1 @es_modulo_del_compilador(%nyx_string* %t2190)
  br i1 %t2191, label %sc_and_rhs565, label %sc_and_end566
sc_and_rhs565:
  %t2192 = getelementptr [20 x i8], [20 x i8]* @.str212, i32 0, i32 0
  %t2193 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str212.c, i8* %t2192, i64 19)
  %t2194 = call i8* @nyx_string_to_cstr(%nyx_string* %t2193)
  %t2195 = call %nyx_string* @nyx_getenv(i8* %t2194)
  %t2196 = getelementptr [2 x i8], [2 x i8]* @.str213, i32 0, i32 0
  %t2197 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str213.c, i8* %t2196, i64 1)
  %t2198 = call i1 @nyx_string_equals(%nyx_string* %t2195, %nyx_string* %t2197)
  %t2199 = xor i1 %t2198, true
  store i1 %t2199, i1* %t2189
  br label %sc_and_end566
sc_and_end566:
  %t2200 = load i1, i1* %t2189
  store i1 %t2200, i1* %t2201
  %t2202 = getelementptr [13 x i8], [13 x i8]* @.str214, i32 0, i32 0
  %t2203 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str214.c, i8* %t2202, i64 12)
  %t2204 = call i8* @nyx_string_to_cstr(%nyx_string* %t2203)
  %t2205 = call %nyx_string* @nyx_getenv(i8* %t2204)
  %t2206 = getelementptr [2 x i8], [2 x i8]* @.str215, i32 0, i32 0
  %t2207 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str215.c, i8* %t2206, i64 1)
  %t2208 = call i1 @nyx_string_equals(%nyx_string* %t2205, %nyx_string* %t2207)
  br i1 %t2208, label %then567, label %else568
then567:
  %t2209 = load %nyx_string*, %nyx_string** %raw.ptr
  %t2210 = call %nyx_string* @razon_no_separable(%nyx_string* %t2209)
  store %nyx_string* %t2210, %nyx_string** %t2211
  %t2212 = load %nyx_string*, %nyx_string** %t2211
  %t2213 = getelementptr [1 x i8], [1 x i8]* @.str216, i32 0, i32 0
  %t2214 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str216.c, i8* %t2213, i64 0)
  %t2215 = call i1 @nyx_string_equals(%nyx_string* %t2212, %nyx_string* %t2214)
  %t2216 = xor i1 %t2215, true
  br i1 %t2216, label %then570, label %else571
then570:
  %t2217 = getelementptr [43 x i8], [43 x i8]* @.str217, i32 0, i32 0
  %t2218 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str217.c, i8* %t2217, i64 42)
  %t2219 = load %nyx_string*, %nyx_string** %t2211
  %t2220 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2218, %nyx_string* %t2219)
  %t2221 = getelementptr [52 x i8], [52 x i8]* @.str218, i32 0, i32 0
  %t2222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str218.c, i8* %t2221, i64 51)
  %t2223 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2220, %nyx_string* %t2222)
  %t2224 = getelementptr [42 x i8], [42 x i8]* @.str219, i32 0, i32 0
  %t2225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str219.c, i8* %t2224, i64 41)
  %t2226 = load %nyx_string*, %nyx_string** %t2211
  %t2227 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2225, %nyx_string* %t2226)
  %t2228 = getelementptr [65 x i8], [65 x i8]* @.str220, i32 0, i32 0
  %t2229 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str220.c, i8* %t2228, i64 64)
  %t2230 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2227, %nyx_string* %t2229)
  %t2231 = call %nyx_string* @nyx_msg(%nyx_string* %t2223, %nyx_string* %t2230)
  %t2232 = call i8* @nyx_string_to_cstr(%nyx_string* %t2231)
  call void @nyx_print_string(i8* %t2232)
  call void @nyx_exit(i64 3)
  br label %merge572
else571:
  br label %merge572
merge572:
  br label %merge569
else568:
  br label %merge569
merge569:
  %t2233 = call i8* @nyx_map_new(i32 0)
  store i8* %t2233, i8** %t2234
  %t2235 = call i8* @nyx_map_new(i32 0)
  store i8* %t2235, i8** %t2236
  %t2237 = getelementptr [1 x i8], [1 x i8]* @.str221, i32 0, i32 0
  %t2238 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str221.c, i8* %t2237, i64 0)
  store %nyx_string* %t2238, %nyx_string** %t2239
  %t2240 = load i1, i1* %t2201
  %t2241 = xor i1 %t2240, true
  br i1 %t2241, label %then573, label %else574
then573:
  %t2242 = getelementptr [12 x i8], [12 x i8]* @.str222, i32 0, i32 0
  %t2243 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str222.c, i8* %t2242, i64 11)
  %t2244 = call %nyx_string* @resolve_module_path(%nyx_string* %t2243)
  store %nyx_string* %t2244, %nyx_string** %t2245
  %t2246 = load %nyx_string*, %nyx_string** %t2245
  %t2247 = getelementptr [1 x i8], [1 x i8]* @.str223, i32 0, i32 0
  %t2248 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str223.c, i8* %t2247, i64 0)
  %t2249 = call i1 @nyx_string_equals(%nyx_string* %t2246, %nyx_string* %t2248)
  %t2250 = xor i1 %t2249, true
  br i1 %t2250, label %then576, label %else577
then576:
  %t2251 = load %nyx_string*, %nyx_string** %t2245
  %t2252 = call i8* @nyx_string_to_cstr(%nyx_string* %t2251)
  %t2253 = call %nyx_string* @nyx_read_file(i8* %t2252)
  store %nyx_string* %t2253, %nyx_string** %t2254
  %t2255 = load %nyx_string*, %nyx_string** %t2254
  %t2256 = getelementptr [2 x i8], [2 x i8]* @.str224, i32 0, i32 0
  %t2257 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str224.c, i8* %t2256, i64 1)
  %t2258 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2255, %nyx_string* %t2257)
  store %nyx_string* %t2258, %nyx_string** %t2239
  %t2259 = load %nyx_string*, %nyx_string** %t2254
  %t2260 = call { i64, i8* }* @prelude_module_list(%nyx_string* %t2259)
  store { i64, i8* }* %t2260, { i64, i8* }** %t2261
  store i64 0, i64* %t2262
  br label %while_cond579
while_cond579:
  %t2263 = load i64, i64* %t2262
  %t2264 = load { i64, i8* }*, { i64, i8* }** %t2261
  %t2265 = call i64 @nyx_array_length({ i64, i8* }* %t2264)
  %t2266 = icmp slt i64 %t2263, %t2265
  br i1 %t2266, label %while_body580, label %while_end581
while_body580:
  %t2267 = load { i64, i8* }*, { i64, i8* }** %t2261
  %t2268 = load i64, i64* %t2262
  %t2269 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2267, i64 %t2268, i64 2)
  %t2270 = inttoptr i64 %t2269 to %nyx_string*
  store %nyx_string* %t2270, %nyx_string** %t2271
  %t2272 = load i8*, i8** %t2234
  %t2273 = getelementptr [5 x i8], [5 x i8]* @.str225, i32 0, i32 0
  %t2274 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str225.c, i8* %t2273, i64 4)
  %t2275 = load %nyx_string*, %nyx_string** %t2271
  %t2276 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2274, %nyx_string* %t2275)
  %t2277 = call i8* @nyx_string_to_cstr(%nyx_string* %t2276)
  call void @nyx_map_insert_int(i8* %t2272, i8* %t2277, i64 1)
  %t2278 = load i64, i64* %t2262
  %t2279 = add i64 %t2278, 1
  store i64 %t2279, i64* %t2262
  br label %while_cond579
while_end581:
  %t2280 = load i8*, i8** %t2234
  %t2281 = getelementptr [12 x i8], [12 x i8]* @.str226, i32 0, i32 0
  %t2282 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str226.c, i8* %t2281, i64 11)
  %t2283 = call i8* @nyx_string_to_cstr(%nyx_string* %t2282)
  call void @nyx_map_insert_int(i8* %t2280, i8* %t2283, i64 1)
  br label %merge578
else577:
  br label %merge578
merge578:
  br label %merge575
else574:
  br label %merge575
merge575:
  %t2284 = getelementptr [13 x i8], [13 x i8]* @.str227, i32 0, i32 0
  %t2285 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str227.c, i8* %t2284, i64 12)
  %t2286 = call i8* @nyx_string_to_cstr(%nyx_string* %t2285)
  %t2287 = call %nyx_string* @nyx_getenv(i8* %t2286)
  store %nyx_string* %t2287, %nyx_string** %t2288
  %t2289 = load %nyx_string*, %nyx_string** %t2288
  %t2290 = getelementptr [1 x i8], [1 x i8]* @.str228, i32 0, i32 0
  %t2291 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str228.c, i8* %t2290, i64 0)
  %t2292 = call i1 @nyx_string_equals(%nyx_string* %t2289, %nyx_string* %t2291)
  %t2293 = xor i1 %t2292, true
  br i1 %t2293, label %then582, label %else583
then582:
  %t2294 = load i8*, i8** %t2234
  %t2295 = load %nyx_string*, %nyx_string** %t2288
  %t2296 = call i8* @nyx_string_to_cstr(%nyx_string* %t2295)
  call void @nyx_map_insert_int(i8* %t2294, i8* %t2296, i64 1)
  br label %merge584
else583:
  br label %merge584
merge584:
  %t2297 = load %nyx_string*, %nyx_string** %raw.ptr
  %t2298 = call %nyx_string* @ruta_import_del_principal(%nyx_string* %t2297)
  store %nyx_string* %t2298, %nyx_string** %t2299
  store i1 false, i1* %t2300
  %t2301 = load %nyx_string*, %nyx_string** %t2299
  %t2302 = getelementptr [1 x i8], [1 x i8]* @.str229, i32 0, i32 0
  %t2303 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str229.c, i8* %t2302, i64 0)
  %t2304 = call i1 @nyx_string_equals(%nyx_string* %t2301, %nyx_string* %t2303)
  %t2305 = xor i1 %t2304, true
  br i1 %t2305, label %sc_and_rhs585, label %sc_and_end586
sc_and_rhs585:
  %t2306 = load i8*, i8** %t2234
  %t2307 = load %nyx_string*, %nyx_string** %t2299
  %t2308 = call i8* @nyx_string_to_cstr(%nyx_string* %t2307)
  %t2309 = call i1 @nyx_map_contains_str(i8* %t2306, i8* %t2308)
  %t2310 = xor i1 %t2309, true
  store i1 %t2310, i1* %t2300
  br label %sc_and_end586
sc_and_end586:
  %t2311 = load i1, i1* %t2300
  br i1 %t2311, label %then587, label %else588
then587:
  %t2312 = load i8*, i8** %t2234
  %t2313 = load %nyx_string*, %nyx_string** %t2299
  %t2314 = call i8* @nyx_string_to_cstr(%nyx_string* %t2313)
  call void @nyx_map_insert_int(i8* %t2312, i8* %t2314, i64 1)
  br label %merge589
else588:
  br label %merge589
merge589:
  %t2315 = call i8* @nyx_sb_new(i64 1024)
  store i8* %t2315, i8** %t2316
  %t2317 = load %nyx_string*, %nyx_string** %raw.ptr
  %t2318 = getelementptr [2 x i8], [2 x i8]* @.str230, i32 0, i32 0
  %t2319 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str230.c, i8* %t2318, i64 1)
  %t2320 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2317, %nyx_string* %t2319)
  store { i64, i8* }* %t2320, { i64, i8* }** %t2321
  %t2322 = call i8* @nyx_sb_new(i64 1024)
  store i8* %t2322, i8** %t2323
  store i64 0, i64* %t2324
  br label %while_cond590
while_cond590:
  %t2325 = load i64, i64* %t2324
  %t2326 = load { i64, i8* }*, { i64, i8* }** %t2321
  %t2327 = call i64 @nyx_array_length({ i64, i8* }* %t2326)
  %t2328 = icmp slt i64 %t2325, %t2327
  br i1 %t2328, label %while_body591, label %while_end592
while_body591:
  %t2329 = load { i64, i8* }*, { i64, i8* }** %t2321
  %t2330 = load i64, i64* %t2324
  %t2331 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2329, i64 %t2330, i64 2)
  %t2332 = inttoptr i64 %t2331 to %nyx_string*
  store %nyx_string* %t2332, %nyx_string** %t2333
  %t2334 = load %nyx_string*, %nyx_string** %t2333
  %t2335 = call i1 @is_module_import(%nyx_string* %t2334)
  br i1 %t2335, label %then593, label %else594
then593:
  %t2336 = load %nyx_string*, %nyx_string** %t2333
  %t2337 = call %nyx_string* @find_import_path(%nyx_string* %t2336)
  store %nyx_string* %t2337, %nyx_string** %t2338
  %t2339 = load %nyx_string*, %nyx_string** %t2338
  %t2340 = getelementptr [1 x i8], [1 x i8]* @.str231, i32 0, i32 0
  %t2341 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str231.c, i8* %t2340, i64 0)
  %t2342 = call i1 @nyx_string_equals(%nyx_string* %t2339, %nyx_string* %t2341)
  %t2343 = xor i1 %t2342, true
  br i1 %t2343, label %then596, label %else597
then596:
  %t2344 = load %nyx_string*, %nyx_string** %t2333
  %t2345 = call %nyx_string* @extract_module_alias(%nyx_string* %t2344)
  store %nyx_string* %t2345, %nyx_string** %t2346
  %t2347 = load i8*, i8** %t2234
  %t2348 = load %nyx_string*, %nyx_string** %t2338
  %t2349 = call i8* @nyx_string_to_cstr(%nyx_string* %t2348)
  %t2350 = call i1 @nyx_map_contains_str(i8* %t2347, i8* %t2349)
  store i1 %t2350, i1* %t2351
  %t2352 = load i1, i1* %t2351
  %t2353 = xor i1 %t2352, true
  br i1 %t2353, label %then599, label %else600
then599:
  %t2354 = load i8*, i8** %t2234
  %t2355 = load %nyx_string*, %nyx_string** %t2338
  %t2356 = call i8* @nyx_string_to_cstr(%nyx_string* %t2355)
  call void @nyx_map_insert_int(i8* %t2354, i8* %t2356, i64 1)
  %t2357 = load %nyx_string*, %nyx_string** %t2333
  %t2358 = load %nyx_string*, %nyx_string** %t2338
  %t2359 = call i64 @aviso_no_separable(%nyx_string* %t2357, %nyx_string* %t2358)
  %t2360 = load %nyx_string*, %nyx_string** %t2333
  %t2361 = load %nyx_string*, %nyx_string** %t2338
  %t2362 = load i8*, i8** %t2234
  %t2363 = call i64 @lib_decl_registrar(%nyx_string* %t2360, %nyx_string* %t2361, i8* %t2362)
  br label %merge601
else600:
  br label %merge601
merge601:
  %t2364 = load %nyx_string*, %nyx_string** %t2338
  %t2365 = call %nyx_string* @resolve_module_path(%nyx_string* %t2364)
  store %nyx_string* %t2365, %nyx_string** %t2366
  %t2367 = load %nyx_string*, %nyx_string** %t2366
  %t2368 = getelementptr [1 x i8], [1 x i8]* @.str232, i32 0, i32 0
  %t2369 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str232.c, i8* %t2368, i64 0)
  %t2370 = call i1 @nyx_string_equals(%nyx_string* %t2367, %nyx_string* %t2369)
  %t2371 = xor i1 %t2370, true
  br i1 %t2371, label %then602, label %else603
then602:
  %t2372 = load %nyx_string*, %nyx_string** %t2366
  %t2373 = call i8* @nyx_string_to_cstr(%nyx_string* %t2372)
  %t2374 = call %nyx_string* @nyx_read_file(i8* %t2373)
  store %nyx_string* %t2374, %nyx_string** %t2375
  %t2376 = load %nyx_string*, %nyx_string** %t2366
  %t2377 = call %nyx_string* @detect_package_name(%nyx_string* %t2376)
  store %nyx_string* %t2377, %nyx_string** %t2378
  %t2379 = load %nyx_string*, %nyx_string** %t2378
  %t2380 = getelementptr [1 x i8], [1 x i8]* @.str233, i32 0, i32 0
  %t2381 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str233.c, i8* %t2380, i64 0)
  %t2382 = call i1 @nyx_string_equals(%nyx_string* %t2379, %nyx_string* %t2381)
  %t2383 = xor i1 %t2382, true
  br i1 %t2383, label %then605, label %else606
then605:
  %t2384 = load %nyx_string*, %nyx_string** %t2375
  %t2385 = load %nyx_string*, %nyx_string** %t2378
  %t2386 = call %nyx_string* @rewrite_package_imports(%nyx_string* %t2384, %nyx_string* %t2385)
  store %nyx_string* %t2386, %nyx_string** %t2375
  br label %merge607
else606:
  br label %merge607
merge607:
  %t2387 = load %nyx_string*, %nyx_string** %t2338
  %t2388 = getelementptr [10 x i8], [10 x i8]* @.str234, i32 0, i32 0
  %t2389 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str234.c, i8* %t2388, i64 9)
  %t2390 = call i1 @nyx_string_contains(%nyx_string* %t2387, %nyx_string* %t2389)
  br i1 %t2390, label %then608, label %else609
then608:
  %t2391 = load %nyx_string*, %nyx_string** %t2375
  %t2392 = load i8*, i8** %t2236
  %t2393 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %t2391, i8* %t2392)
  store %nyx_string* %t2393, %nyx_string** %t2375
  br label %merge610
else609:
  br label %merge610
merge610:
  %t2394 = load %nyx_string*, %nyx_string** %t2375
  %t2395 = call { i64, i8* }* @extract_exports(%nyx_string* %t2394)
  store { i64, i8* }* %t2395, { i64, i8* }** %t2396
  %t2397 = load i8*, i8** %t2316
  %t2398 = getelementptr [8 x i8], [8 x i8]* @.str235, i32 0, i32 0
  %t2399 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str235.c, i8* %t2398, i64 7)
  %t2400 = load %nyx_string*, %nyx_string** %t2346
  %t2401 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2399, %nyx_string* %t2400)
  %t2402 = getelementptr [5 x i8], [5 x i8]* @.str236, i32 0, i32 0
  %t2403 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str236.c, i8* %t2402, i64 4)
  %t2404 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2401, %nyx_string* %t2403)
  %t2405 = load %nyx_string*, %nyx_string** %t2338
  %t2406 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2404, %nyx_string* %t2405)
  %t2407 = getelementptr [4 x i8], [4 x i8]* @.str237, i32 0, i32 0
  %t2408 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str237.c, i8* %t2407, i64 3)
  %t2409 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2406, %nyx_string* %t2408)
  %t2410 = load { i64, i8* }*, { i64, i8* }** %t2396
  %t2411 = getelementptr [3 x i8], [3 x i8]* @.str238, i32 0, i32 0
  %t2412 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str238.c, i8* %t2411, i64 2)
  %t2413 = call %nyx_string* @nyx_string_join({ i64, i8* }* %t2410, %nyx_string* %t2412)
  %t2414 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2409, %nyx_string* %t2413)
  %t2415 = getelementptr [3 x i8], [3 x i8]* @.str239, i32 0, i32 0
  %t2416 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str239.c, i8* %t2415, i64 2)
  %t2417 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2414, %nyx_string* %t2416)
  call void @nyx_sb_append(i8* %t2397, %nyx_string* %t2417)
  %t2418 = load i1, i1* %t2351
  %t2419 = xor i1 %t2418, true
  br i1 %t2419, label %then611, label %else612
then611:
  %t2420 = load i8*, i8** %t2323
  %t2421 = getelementptr [11 x i8], [11 x i8]* @.str240, i32 0, i32 0
  %t2422 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str240.c, i8* %t2421, i64 10)
  %t2423 = load %nyx_string*, %nyx_string** %t2338
  %t2424 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2422, %nyx_string* %t2423)
  %t2425 = getelementptr [2 x i8], [2 x i8]* @.str241, i32 0, i32 0
  %t2426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str241.c, i8* %t2425, i64 1)
  %t2427 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2424, %nyx_string* %t2426)
  %t2428 = getelementptr [11 x i8], [11 x i8]* @.str242, i32 0, i32 0
  %t2429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str242.c, i8* %t2428, i64 10)
  %t2430 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2427, %nyx_string* %t2429)
  %t2431 = load %nyx_string*, %nyx_string** %t2375
  %t2432 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2430, %nyx_string* %t2431)
  %t2433 = getelementptr [2 x i8], [2 x i8]* @.str243, i32 0, i32 0
  %t2434 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str243.c, i8* %t2433, i64 1)
  %t2435 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2432, %nyx_string* %t2434)
  %t2436 = getelementptr [1 x i8], [1 x i8]* @.str244, i32 0, i32 0
  %t2437 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str244.c, i8* %t2436, i64 0)
  %t2438 = call %nyx_string* @marca_cierre(%nyx_string* %t2437)
  %t2439 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2435, %nyx_string* %t2438)
  call void @nyx_sb_append(i8* %t2420, %nyx_string* %t2439)
  br label %merge613
else612:
  br label %merge613
merge613:
  br label %merge604
else603:
  %t2440 = load %nyx_string*, %nyx_string** %t2338
  %t2441 = call i64 @import_not_found(%nyx_string* %t2440)
  br label %merge604
merge604:
  %t2442 = load i8*, i8** %t2323
  %t2443 = load %nyx_string*, %nyx_string** %t2333
  %t2444 = getelementptr [2 x i8], [2 x i8]* @.str245, i32 0, i32 0
  %t2445 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str245.c, i8* %t2444, i64 1)
  %t2446 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2443, %nyx_string* %t2445)
  %t2447 = getelementptr [9 x i8], [9 x i8]* @.str246, i32 0, i32 0
  %t2448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str246.c, i8* %t2447, i64 8)
  %t2449 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2446, %nyx_string* %t2448)
  %t2450 = load i64, i64* %t2324
  %t2451 = add i64 %t2450, 2
  %t2452 = call %nyx_string* @nyx_string_from_int(i64 %t2451)
  %t2453 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2449, %nyx_string* %t2452)
  %t2454 = getelementptr [2 x i8], [2 x i8]* @.str247, i32 0, i32 0
  %t2455 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str247.c, i8* %t2454, i64 1)
  %t2456 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2453, %nyx_string* %t2455)
  call void @nyx_sb_append(i8* %t2442, %nyx_string* %t2456)
  br label %merge598
else597:
  %t2457 = load i8*, i8** %t2323
  %t2458 = load %nyx_string*, %nyx_string** %t2333
  %t2459 = getelementptr [2 x i8], [2 x i8]* @.str248, i32 0, i32 0
  %t2460 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str248.c, i8* %t2459, i64 1)
  %t2461 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2458, %nyx_string* %t2460)
  call void @nyx_sb_append(i8* %t2457, %nyx_string* %t2461)
  br label %merge598
merge598:
  br label %merge595
else594:
  %t2462 = load %nyx_string*, %nyx_string** %t2333
  %t2463 = call i1 @is_user_import(%nyx_string* %t2462)
  br i1 %t2463, label %then614, label %else615
then614:
  %t2464 = load %nyx_string*, %nyx_string** %t2333
  %t2465 = call %nyx_string* @find_import_path(%nyx_string* %t2464)
  store %nyx_string* %t2465, %nyx_string** %t2466
  %t2467 = load %nyx_string*, %nyx_string** %t2466
  %t2468 = getelementptr [1 x i8], [1 x i8]* @.str249, i32 0, i32 0
  %t2469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str249.c, i8* %t2468, i64 0)
  %t2470 = call i1 @nyx_string_equals(%nyx_string* %t2467, %nyx_string* %t2469)
  %t2471 = xor i1 %t2470, true
  br i1 %t2471, label %then617, label %else618
then617:
  %t2472 = load i8*, i8** %t2234
  %t2473 = load %nyx_string*, %nyx_string** %t2466
  %t2474 = call i8* @nyx_string_to_cstr(%nyx_string* %t2473)
  %t2475 = call i1 @nyx_map_contains_str(i8* %t2472, i8* %t2474)
  %t2476 = xor i1 %t2475, true
  br i1 %t2476, label %then620, label %else621
then620:
  %t2477 = load i8*, i8** %t2234
  %t2478 = load %nyx_string*, %nyx_string** %t2466
  %t2479 = call i8* @nyx_string_to_cstr(%nyx_string* %t2478)
  call void @nyx_map_insert_int(i8* %t2477, i8* %t2479, i64 1)
  %t2480 = load %nyx_string*, %nyx_string** %t2333
  %t2481 = load %nyx_string*, %nyx_string** %t2466
  %t2482 = call i64 @aviso_no_separable(%nyx_string* %t2480, %nyx_string* %t2481)
  %t2483 = load %nyx_string*, %nyx_string** %t2333
  %t2484 = load %nyx_string*, %nyx_string** %t2466
  %t2485 = load i8*, i8** %t2234
  %t2486 = call i64 @lib_decl_registrar(%nyx_string* %t2483, %nyx_string* %t2484, i8* %t2485)
  %t2487 = load %nyx_string*, %nyx_string** %t2466
  %t2488 = call %nyx_string* @resolve_module_path(%nyx_string* %t2487)
  store %nyx_string* %t2488, %nyx_string** %t2489
  %t2490 = load %nyx_string*, %nyx_string** %t2489
  %t2491 = getelementptr [1 x i8], [1 x i8]* @.str250, i32 0, i32 0
  %t2492 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str250.c, i8* %t2491, i64 0)
  %t2493 = call i1 @nyx_string_equals(%nyx_string* %t2490, %nyx_string* %t2492)
  %t2494 = xor i1 %t2493, true
  br i1 %t2494, label %then623, label %else624
then623:
  %t2495 = load %nyx_string*, %nyx_string** %t2489
  %t2496 = call i8* @nyx_string_to_cstr(%nyx_string* %t2495)
  %t2497 = call %nyx_string* @nyx_read_file(i8* %t2496)
  store %nyx_string* %t2497, %nyx_string** %t2498
  %t2499 = load %nyx_string*, %nyx_string** %t2489
  %t2500 = call %nyx_string* @detect_package_name(%nyx_string* %t2499)
  store %nyx_string* %t2500, %nyx_string** %t2501
  %t2502 = load %nyx_string*, %nyx_string** %t2501
  %t2503 = getelementptr [1 x i8], [1 x i8]* @.str251, i32 0, i32 0
  %t2504 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str251.c, i8* %t2503, i64 0)
  %t2505 = call i1 @nyx_string_equals(%nyx_string* %t2502, %nyx_string* %t2504)
  %t2506 = xor i1 %t2505, true
  br i1 %t2506, label %then626, label %else627
then626:
  %t2507 = load %nyx_string*, %nyx_string** %t2498
  %t2508 = load %nyx_string*, %nyx_string** %t2501
  %t2509 = call %nyx_string* @rewrite_package_imports(%nyx_string* %t2507, %nyx_string* %t2508)
  store %nyx_string* %t2509, %nyx_string** %t2498
  br label %merge628
else627:
  br label %merge628
merge628:
  %t2510 = load %nyx_string*, %nyx_string** %t2466
  %t2511 = getelementptr [10 x i8], [10 x i8]* @.str252, i32 0, i32 0
  %t2512 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str252.c, i8* %t2511, i64 9)
  %t2513 = call i1 @nyx_string_contains(%nyx_string* %t2510, %nyx_string* %t2512)
  br i1 %t2513, label %then629, label %else630
then629:
  %t2514 = load %nyx_string*, %nyx_string** %t2498
  %t2515 = load i8*, i8** %t2236
  %t2516 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %t2514, i8* %t2515)
  store %nyx_string* %t2516, %nyx_string** %t2498
  br label %merge631
else630:
  br label %merge631
merge631:
  %t2517 = load i8*, i8** %t2323
  %t2518 = getelementptr [11 x i8], [11 x i8]* @.str253, i32 0, i32 0
  %t2519 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str253.c, i8* %t2518, i64 10)
  %t2520 = load %nyx_string*, %nyx_string** %t2466
  %t2521 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2519, %nyx_string* %t2520)
  %t2522 = getelementptr [2 x i8], [2 x i8]* @.str254, i32 0, i32 0
  %t2523 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str254.c, i8* %t2522, i64 1)
  %t2524 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2521, %nyx_string* %t2523)
  %t2525 = getelementptr [11 x i8], [11 x i8]* @.str255, i32 0, i32 0
  %t2526 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str255.c, i8* %t2525, i64 10)
  %t2527 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2524, %nyx_string* %t2526)
  %t2528 = load %nyx_string*, %nyx_string** %t2498
  %t2529 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2527, %nyx_string* %t2528)
  %t2530 = getelementptr [2 x i8], [2 x i8]* @.str256, i32 0, i32 0
  %t2531 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str256.c, i8* %t2530, i64 1)
  %t2532 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2529, %nyx_string* %t2531)
  %t2533 = getelementptr [1 x i8], [1 x i8]* @.str257, i32 0, i32 0
  %t2534 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str257.c, i8* %t2533, i64 0)
  %t2535 = call %nyx_string* @marca_cierre(%nyx_string* %t2534)
  %t2536 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2532, %nyx_string* %t2535)
  %t2537 = getelementptr [9 x i8], [9 x i8]* @.str258, i32 0, i32 0
  %t2538 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str258.c, i8* %t2537, i64 8)
  %t2539 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2536, %nyx_string* %t2538)
  %t2540 = load i64, i64* %t2324
  %t2541 = add i64 %t2540, 2
  %t2542 = call %nyx_string* @nyx_string_from_int(i64 %t2541)
  %t2543 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2539, %nyx_string* %t2542)
  %t2544 = getelementptr [2 x i8], [2 x i8]* @.str259, i32 0, i32 0
  %t2545 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str259.c, i8* %t2544, i64 1)
  %t2546 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2543, %nyx_string* %t2545)
  call void @nyx_sb_append(i8* %t2517, %nyx_string* %t2546)
  br label %merge625
else624:
  %t2547 = load %nyx_string*, %nyx_string** %t2466
  %t2548 = call i64 @import_not_found(%nyx_string* %t2547)
  br label %merge625
merge625:
  br label %merge622
else621:
  %t2549 = load i8*, i8** %t2323
  %t2550 = call %nyx_string* @import_ya_inlineado()
  call void @nyx_sb_append(i8* %t2549, %nyx_string* %t2550)
  br label %merge622
merge622:
  br label %merge619
else618:
  %t2551 = load i8*, i8** %t2323
  %t2552 = load %nyx_string*, %nyx_string** %t2333
  %t2553 = getelementptr [2 x i8], [2 x i8]* @.str260, i32 0, i32 0
  %t2554 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str260.c, i8* %t2553, i64 1)
  %t2555 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2552, %nyx_string* %t2554)
  call void @nyx_sb_append(i8* %t2551, %nyx_string* %t2555)
  br label %merge619
merge619:
  br label %merge616
else615:
  %t2556 = load i8*, i8** %t2323
  %t2557 = load %nyx_string*, %nyx_string** %t2333
  %t2558 = getelementptr [2 x i8], [2 x i8]* @.str261, i32 0, i32 0
  %t2559 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str261.c, i8* %t2558, i64 1)
  %t2560 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2557, %nyx_string* %t2559)
  call void @nyx_sb_append(i8* %t2556, %nyx_string* %t2560)
  br label %merge616
merge616:
  br label %merge595
merge595:
  %t2561 = load i64, i64* %t2324
  %t2562 = add i64 %t2561, 1
  store i64 %t2562, i64* %t2324
  br label %while_cond590
while_end592:
  %t2563 = load i8*, i8** %t2323
  %t2564 = call %nyx_string* @nyx_sb_to_string(i8* %t2563)
  store %nyx_string* %t2564, %nyx_string** %t2565
  store i1 1, i1* %t2566
  br label %while_cond632
while_cond632:
  %t2567 = load i1, i1* %t2566
  br i1 %t2567, label %while_body633, label %while_end634
while_body633:
  store i1 0, i1* %t2566
  %t2568 = load %nyx_string*, %nyx_string** %t2565
  %t2569 = getelementptr [2 x i8], [2 x i8]* @.str262, i32 0, i32 0
  %t2570 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str262.c, i8* %t2569, i64 1)
  %t2571 = call { i64, i8* }* @nyx_string_split(%nyx_string* %t2568, %nyx_string* %t2570)
  store { i64, i8* }* %t2571, { i64, i8* }** %t2572
  %t2573 = call i8* @nyx_sb_new(i64 1024)
  store i8* %t2573, i8** %t2574
  store i64 0, i64* %t2575
  store i64 1, i64* %t2576
  %t2577 = getelementptr [1 x i8], [1 x i8]* @.str263, i32 0, i32 0
  %t2578 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str263.c, i8* %t2577, i64 0)
  store %nyx_string* %t2578, %nyx_string** %t2579
  br label %while_cond635
while_cond635:
  %t2580 = load i64, i64* %t2575
  %t2581 = load { i64, i8* }*, { i64, i8* }** %t2572
  %t2582 = call i64 @nyx_array_length({ i64, i8* }* %t2581)
  %t2583 = icmp slt i64 %t2580, %t2582
  br i1 %t2583, label %while_body636, label %while_end637
while_body636:
  %t2584 = load { i64, i8* }*, { i64, i8* }** %t2572
  %t2585 = load i64, i64* %t2575
  %t2586 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2584, i64 %t2585, i64 2)
  %t2587 = inttoptr i64 %t2586 to %nyx_string*
  store %nyx_string* %t2587, %nyx_string** %t2588
  %t2589 = load %nyx_string*, %nyx_string** %t2588
  %t2590 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2589)
  store %nyx_string* %t2590, %nyx_string** %t2591
  %t2592 = load %nyx_string*, %nyx_string** %t2591
  %t2593 = getelementptr [10 x i8], [10 x i8]* @.str264, i32 0, i32 0
  %t2594 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str264.c, i8* %t2593, i64 9)
  %t2595 = call i1 @nyx_string_starts_with(%nyx_string* %t2592, %nyx_string* %t2594)
  br i1 %t2595, label %then638, label %else639
then638:
  %t2596 = load %nyx_string*, %nyx_string** %t2591
  %t2597 = call %nyx_string* @path_de_marca(%nyx_string* %t2596)
  store %nyx_string* %t2597, %nyx_string** %t2579
  br label %merge640
else639:
  br label %merge640
merge640:
  %t2598 = load %nyx_string*, %nyx_string** %t2591
  %t2599 = getelementptr [9 x i8], [9 x i8]* @.str265, i32 0, i32 0
  %t2600 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str265.c, i8* %t2599, i64 8)
  %t2601 = call i1 @nyx_string_starts_with(%nyx_string* %t2598, %nyx_string* %t2600)
  br i1 %t2601, label %then641, label %else642
then641:
  %t2602 = load %nyx_string*, %nyx_string** %t2591
  %t2603 = load %nyx_string*, %nyx_string** %t2591
  %t2604 = call i64 @nyx_string_byte_length(%nyx_string* %t2603)
  %t2605 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2602, i64 8, i64 %t2604)
  %t2606 = call %nyx_string* @nyx_string_trim(%nyx_string* %t2605)
  %t2607 = call i64 @nyx_string_to_int(%nyx_string* %t2606)
  store i64 %t2607, i64* %t2608
  %t2609 = load i64, i64* %t2608
  %t2610 = icmp sgt i64 %t2609, 0
  br i1 %t2610, label %then644, label %else645
then644:
  %t2611 = load i64, i64* %t2608
  store i64 %t2611, i64* %t2576
  br label %merge646
else645:
  br label %merge646
merge646:
  %t2612 = load i8*, i8** %t2574
  %t2613 = load %nyx_string*, %nyx_string** %t2588
  %t2614 = getelementptr [2 x i8], [2 x i8]* @.str266, i32 0, i32 0
  %t2615 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str266.c, i8* %t2614, i64 1)
  %t2616 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2613, %nyx_string* %t2615)
  call void @nyx_sb_append(i8* %t2612, %nyx_string* %t2616)
  %t2617 = load i64, i64* %t2575
  %t2618 = add i64 %t2617, 1
  store i64 %t2618, i64* %t2575
  br label %merge643
else642:
  %t2619 = load %nyx_string*, %nyx_string** %t2588
  %t2620 = call i1 @is_module_import(%nyx_string* %t2619)
  br i1 %t2620, label %then647, label %else648
then647:
  %t2621 = load %nyx_string*, %nyx_string** %t2588
  %t2622 = call %nyx_string* @find_import_path(%nyx_string* %t2621)
  store %nyx_string* %t2622, %nyx_string** %t2623
  store i1 false, i1* %t2624
  %t2625 = load %nyx_string*, %nyx_string** %t2623
  %t2626 = getelementptr [1 x i8], [1 x i8]* @.str267, i32 0, i32 0
  %t2627 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str267.c, i8* %t2626, i64 0)
  %t2628 = call i1 @nyx_string_equals(%nyx_string* %t2625, %nyx_string* %t2627)
  %t2629 = xor i1 %t2628, true
  br i1 %t2629, label %sc_and_rhs650, label %sc_and_end651
sc_and_rhs650:
  %t2630 = load i8*, i8** %t2234
  %t2631 = load %nyx_string*, %nyx_string** %t2623
  %t2632 = call i8* @nyx_string_to_cstr(%nyx_string* %t2631)
  %t2633 = call i1 @nyx_map_contains_str(i8* %t2630, i8* %t2632)
  %t2634 = xor i1 %t2633, true
  store i1 %t2634, i1* %t2624
  br label %sc_and_end651
sc_and_end651:
  %t2635 = load i1, i1* %t2624
  br i1 %t2635, label %then652, label %else653
then652:
  %t2636 = load i8*, i8** %t2234
  %t2637 = load %nyx_string*, %nyx_string** %t2623
  %t2638 = call i8* @nyx_string_to_cstr(%nyx_string* %t2637)
  call void @nyx_map_insert_int(i8* %t2636, i8* %t2638, i64 1)
  %t2639 = load %nyx_string*, %nyx_string** %t2588
  %t2640 = load %nyx_string*, %nyx_string** %t2623
  %t2641 = call i64 @aviso_no_separable(%nyx_string* %t2639, %nyx_string* %t2640)
  %t2642 = load %nyx_string*, %nyx_string** %t2588
  %t2643 = load %nyx_string*, %nyx_string** %t2623
  %t2644 = load i8*, i8** %t2234
  %t2645 = call i64 @lib_decl_registrar(%nyx_string* %t2642, %nyx_string* %t2643, i8* %t2644)
  store i1 1, i1* %t2566
  %t2646 = load %nyx_string*, %nyx_string** %t2623
  %t2647 = call %nyx_string* @resolve_module_path(%nyx_string* %t2646)
  store %nyx_string* %t2647, %nyx_string** %t2648
  %t2649 = load %nyx_string*, %nyx_string** %t2648
  %t2650 = getelementptr [1 x i8], [1 x i8]* @.str268, i32 0, i32 0
  %t2651 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str268.c, i8* %t2650, i64 0)
  %t2652 = call i1 @nyx_string_equals(%nyx_string* %t2649, %nyx_string* %t2651)
  %t2653 = xor i1 %t2652, true
  br i1 %t2653, label %then655, label %else656
then655:
  %t2654 = load %nyx_string*, %nyx_string** %t2648
  %t2655 = call i8* @nyx_string_to_cstr(%nyx_string* %t2654)
  %t2656 = call %nyx_string* @nyx_read_file(i8* %t2655)
  store %nyx_string* %t2656, %nyx_string** %t2657
  %t2658 = load %nyx_string*, %nyx_string** %t2648
  %t2659 = call %nyx_string* @detect_package_name(%nyx_string* %t2658)
  store %nyx_string* %t2659, %nyx_string** %t2660
  %t2661 = load %nyx_string*, %nyx_string** %t2660
  %t2662 = getelementptr [1 x i8], [1 x i8]* @.str269, i32 0, i32 0
  %t2663 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str269.c, i8* %t2662, i64 0)
  %t2664 = call i1 @nyx_string_equals(%nyx_string* %t2661, %nyx_string* %t2663)
  %t2665 = xor i1 %t2664, true
  br i1 %t2665, label %then658, label %else659
then658:
  %t2666 = load %nyx_string*, %nyx_string** %t2657
  %t2667 = load %nyx_string*, %nyx_string** %t2660
  %t2668 = call %nyx_string* @rewrite_package_imports(%nyx_string* %t2666, %nyx_string* %t2667)
  store %nyx_string* %t2668, %nyx_string** %t2657
  br label %merge660
else659:
  br label %merge660
merge660:
  %t2669 = load %nyx_string*, %nyx_string** %t2623
  %t2670 = getelementptr [10 x i8], [10 x i8]* @.str270, i32 0, i32 0
  %t2671 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str270.c, i8* %t2670, i64 9)
  %t2672 = call i1 @nyx_string_contains(%nyx_string* %t2669, %nyx_string* %t2671)
  br i1 %t2672, label %then661, label %else662
then661:
  %t2673 = load %nyx_string*, %nyx_string** %t2657
  %t2674 = load i8*, i8** %t2236
  %t2675 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %t2673, i8* %t2674)
  store %nyx_string* %t2675, %nyx_string** %t2657
  br label %merge663
else662:
  br label %merge663
merge663:
  %t2676 = load %nyx_string*, %nyx_string** %t2657
  %t2677 = call { i64, i8* }* @extract_exports(%nyx_string* %t2676)
  store { i64, i8* }* %t2677, { i64, i8* }** %t2678
  %t2679 = load i8*, i8** %t2316
  %t2680 = getelementptr [8 x i8], [8 x i8]* @.str271, i32 0, i32 0
  %t2681 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str271.c, i8* %t2680, i64 7)
  %t2682 = load %nyx_string*, %nyx_string** %t2588
  %t2683 = call %nyx_string* @extract_module_alias(%nyx_string* %t2682)
  %t2684 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2681, %nyx_string* %t2683)
  %t2685 = getelementptr [5 x i8], [5 x i8]* @.str272, i32 0, i32 0
  %t2686 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str272.c, i8* %t2685, i64 4)
  %t2687 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2684, %nyx_string* %t2686)
  %t2688 = load %nyx_string*, %nyx_string** %t2623
  %t2689 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2687, %nyx_string* %t2688)
  %t2690 = getelementptr [4 x i8], [4 x i8]* @.str273, i32 0, i32 0
  %t2691 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str273.c, i8* %t2690, i64 3)
  %t2692 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2689, %nyx_string* %t2691)
  %t2693 = load { i64, i8* }*, { i64, i8* }** %t2678
  %t2694 = getelementptr [3 x i8], [3 x i8]* @.str274, i32 0, i32 0
  %t2695 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str274.c, i8* %t2694, i64 2)
  %t2696 = call %nyx_string* @nyx_string_join({ i64, i8* }* %t2693, %nyx_string* %t2695)
  %t2697 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2692, %nyx_string* %t2696)
  %t2698 = getelementptr [3 x i8], [3 x i8]* @.str275, i32 0, i32 0
  %t2699 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str275.c, i8* %t2698, i64 2)
  %t2700 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2697, %nyx_string* %t2699)
  call void @nyx_sb_append(i8* %t2679, %nyx_string* %t2700)
  %t2701 = load i8*, i8** %t2574
  %t2702 = getelementptr [11 x i8], [11 x i8]* @.str276, i32 0, i32 0
  %t2703 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str276.c, i8* %t2702, i64 10)
  %t2704 = load %nyx_string*, %nyx_string** %t2623
  %t2705 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2703, %nyx_string* %t2704)
  %t2706 = getelementptr [2 x i8], [2 x i8]* @.str277, i32 0, i32 0
  %t2707 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str277.c, i8* %t2706, i64 1)
  %t2708 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2705, %nyx_string* %t2707)
  %t2709 = getelementptr [11 x i8], [11 x i8]* @.str278, i32 0, i32 0
  %t2710 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str278.c, i8* %t2709, i64 10)
  %t2711 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2708, %nyx_string* %t2710)
  %t2712 = load %nyx_string*, %nyx_string** %t2657
  %t2713 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2711, %nyx_string* %t2712)
  %t2714 = getelementptr [2 x i8], [2 x i8]* @.str279, i32 0, i32 0
  %t2715 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str279.c, i8* %t2714, i64 1)
  %t2716 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2713, %nyx_string* %t2715)
  %t2717 = load %nyx_string*, %nyx_string** %t2579
  %t2718 = call %nyx_string* @marca_cierre(%nyx_string* %t2717)
  %t2719 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2716, %nyx_string* %t2718)
  call void @nyx_sb_append(i8* %t2701, %nyx_string* %t2719)
  br label %merge657
else656:
  %t2720 = load %nyx_string*, %nyx_string** %t2623
  %t2721 = call i64 @import_not_found(%nyx_string* %t2720)
  br label %merge657
merge657:
  %t2722 = load i8*, i8** %t2574
  %t2723 = load %nyx_string*, %nyx_string** %t2588
  %t2724 = getelementptr [2 x i8], [2 x i8]* @.str280, i32 0, i32 0
  %t2725 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str280.c, i8* %t2724, i64 1)
  %t2726 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2723, %nyx_string* %t2725)
  %t2727 = getelementptr [9 x i8], [9 x i8]* @.str281, i32 0, i32 0
  %t2728 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str281.c, i8* %t2727, i64 8)
  %t2729 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2726, %nyx_string* %t2728)
  %t2730 = load i64, i64* %t2576
  %t2731 = add i64 %t2730, 1
  %t2732 = call %nyx_string* @nyx_string_from_int(i64 %t2731)
  %t2733 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2729, %nyx_string* %t2732)
  %t2734 = getelementptr [2 x i8], [2 x i8]* @.str282, i32 0, i32 0
  %t2735 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str282.c, i8* %t2734, i64 1)
  %t2736 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2733, %nyx_string* %t2735)
  call void @nyx_sb_append(i8* %t2722, %nyx_string* %t2736)
  br label %merge654
else653:
  %t2737 = load %nyx_string*, %nyx_string** %t2588
  %t2738 = call %nyx_string* @extract_module_alias(%nyx_string* %t2737)
  store %nyx_string* %t2738, %nyx_string** %t2739
  store i1 false, i1* %t2740
  %t2741 = load %nyx_string*, %nyx_string** %t2623
  %t2742 = getelementptr [1 x i8], [1 x i8]* @.str283, i32 0, i32 0
  %t2743 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str283.c, i8* %t2742, i64 0)
  %t2744 = call i1 @nyx_string_equals(%nyx_string* %t2741, %nyx_string* %t2743)
  %t2745 = xor i1 %t2744, true
  br i1 %t2745, label %sc_and_rhs664, label %sc_and_end665
sc_and_rhs664:
  %t2746 = load %nyx_string*, %nyx_string** %t2739
  %t2747 = getelementptr [1 x i8], [1 x i8]* @.str284, i32 0, i32 0
  %t2748 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str284.c, i8* %t2747, i64 0)
  %t2749 = call i1 @nyx_string_equals(%nyx_string* %t2746, %nyx_string* %t2748)
  %t2750 = xor i1 %t2749, true
  store i1 %t2750, i1* %t2740
  br label %sc_and_end665
sc_and_end665:
  %t2751 = load i1, i1* %t2740
  br i1 %t2751, label %then666, label %else667
then666:
  %t2752 = load %nyx_string*, %nyx_string** %t2623
  %t2753 = call %nyx_string* @resolve_module_path(%nyx_string* %t2752)
  store %nyx_string* %t2753, %nyx_string** %t2754
  %t2755 = load %nyx_string*, %nyx_string** %t2754
  %t2756 = getelementptr [1 x i8], [1 x i8]* @.str285, i32 0, i32 0
  %t2757 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str285.c, i8* %t2756, i64 0)
  %t2758 = call i1 @nyx_string_equals(%nyx_string* %t2755, %nyx_string* %t2757)
  %t2759 = xor i1 %t2758, true
  br i1 %t2759, label %then669, label %else670
then669:
  %t2760 = load %nyx_string*, %nyx_string** %t2754
  %t2761 = call i8* @nyx_string_to_cstr(%nyx_string* %t2760)
  %t2762 = call %nyx_string* @nyx_read_file(i8* %t2761)
  store %nyx_string* %t2762, %nyx_string** %t2763
  %t2764 = load %nyx_string*, %nyx_string** %t2763
  %t2765 = call { i64, i8* }* @extract_exports(%nyx_string* %t2764)
  store { i64, i8* }* %t2765, { i64, i8* }** %t2766
  %t2767 = load i8*, i8** %t2316
  %t2768 = getelementptr [8 x i8], [8 x i8]* @.str286, i32 0, i32 0
  %t2769 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str286.c, i8* %t2768, i64 7)
  %t2770 = load %nyx_string*, %nyx_string** %t2739
  %t2771 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2769, %nyx_string* %t2770)
  %t2772 = getelementptr [5 x i8], [5 x i8]* @.str287, i32 0, i32 0
  %t2773 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str287.c, i8* %t2772, i64 4)
  %t2774 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2771, %nyx_string* %t2773)
  %t2775 = load %nyx_string*, %nyx_string** %t2623
  %t2776 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2774, %nyx_string* %t2775)
  %t2777 = getelementptr [4 x i8], [4 x i8]* @.str288, i32 0, i32 0
  %t2778 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str288.c, i8* %t2777, i64 3)
  %t2779 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2776, %nyx_string* %t2778)
  %t2780 = load { i64, i8* }*, { i64, i8* }** %t2766
  %t2781 = getelementptr [3 x i8], [3 x i8]* @.str289, i32 0, i32 0
  %t2782 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str289.c, i8* %t2781, i64 2)
  %t2783 = call %nyx_string* @nyx_string_join({ i64, i8* }* %t2780, %nyx_string* %t2782)
  %t2784 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2779, %nyx_string* %t2783)
  %t2785 = getelementptr [3 x i8], [3 x i8]* @.str290, i32 0, i32 0
  %t2786 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str290.c, i8* %t2785, i64 2)
  %t2787 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2784, %nyx_string* %t2786)
  call void @nyx_sb_append(i8* %t2767, %nyx_string* %t2787)
  br label %merge671
else670:
  br label %merge671
merge671:
  br label %merge668
else667:
  br label %merge668
merge668:
  %t2788 = load i8*, i8** %t2574
  %t2789 = load %nyx_string*, %nyx_string** %t2588
  %t2790 = getelementptr [2 x i8], [2 x i8]* @.str291, i32 0, i32 0
  %t2791 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str291.c, i8* %t2790, i64 1)
  %t2792 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2789, %nyx_string* %t2791)
  call void @nyx_sb_append(i8* %t2788, %nyx_string* %t2792)
  br label %merge654
merge654:
  br label %merge649
else648:
  %t2793 = load %nyx_string*, %nyx_string** %t2588
  %t2794 = call i1 @is_user_import(%nyx_string* %t2793)
  br i1 %t2794, label %then672, label %else673
then672:
  %t2795 = load %nyx_string*, %nyx_string** %t2588
  %t2796 = call %nyx_string* @find_import_path(%nyx_string* %t2795)
  store %nyx_string* %t2796, %nyx_string** %t2797
  store i1 false, i1* %t2798
  %t2799 = load %nyx_string*, %nyx_string** %t2797
  %t2800 = getelementptr [1 x i8], [1 x i8]* @.str292, i32 0, i32 0
  %t2801 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str292.c, i8* %t2800, i64 0)
  %t2802 = call i1 @nyx_string_equals(%nyx_string* %t2799, %nyx_string* %t2801)
  %t2803 = xor i1 %t2802, true
  br i1 %t2803, label %sc_and_rhs675, label %sc_and_end676
sc_and_rhs675:
  %t2804 = load i8*, i8** %t2234
  %t2805 = load %nyx_string*, %nyx_string** %t2797
  %t2806 = call i8* @nyx_string_to_cstr(%nyx_string* %t2805)
  %t2807 = call i1 @nyx_map_contains_str(i8* %t2804, i8* %t2806)
  %t2808 = xor i1 %t2807, true
  store i1 %t2808, i1* %t2798
  br label %sc_and_end676
sc_and_end676:
  %t2809 = load i1, i1* %t2798
  br i1 %t2809, label %then677, label %else678
then677:
  %t2810 = load i8*, i8** %t2234
  %t2811 = load %nyx_string*, %nyx_string** %t2797
  %t2812 = call i8* @nyx_string_to_cstr(%nyx_string* %t2811)
  call void @nyx_map_insert_int(i8* %t2810, i8* %t2812, i64 1)
  %t2813 = load %nyx_string*, %nyx_string** %t2588
  %t2814 = load %nyx_string*, %nyx_string** %t2797
  %t2815 = call i64 @aviso_no_separable(%nyx_string* %t2813, %nyx_string* %t2814)
  %t2816 = load %nyx_string*, %nyx_string** %t2588
  %t2817 = load %nyx_string*, %nyx_string** %t2797
  %t2818 = load i8*, i8** %t2234
  %t2819 = call i64 @lib_decl_registrar(%nyx_string* %t2816, %nyx_string* %t2817, i8* %t2818)
  store i1 1, i1* %t2566
  %t2820 = load %nyx_string*, %nyx_string** %t2797
  %t2821 = call %nyx_string* @resolve_module_path(%nyx_string* %t2820)
  store %nyx_string* %t2821, %nyx_string** %t2822
  %t2823 = load %nyx_string*, %nyx_string** %t2822
  %t2824 = getelementptr [1 x i8], [1 x i8]* @.str293, i32 0, i32 0
  %t2825 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str293.c, i8* %t2824, i64 0)
  %t2826 = call i1 @nyx_string_equals(%nyx_string* %t2823, %nyx_string* %t2825)
  %t2827 = xor i1 %t2826, true
  br i1 %t2827, label %then680, label %else681
then680:
  %t2828 = load %nyx_string*, %nyx_string** %t2822
  %t2829 = call i8* @nyx_string_to_cstr(%nyx_string* %t2828)
  %t2830 = call %nyx_string* @nyx_read_file(i8* %t2829)
  store %nyx_string* %t2830, %nyx_string** %t2831
  %t2832 = load %nyx_string*, %nyx_string** %t2822
  %t2833 = call %nyx_string* @detect_package_name(%nyx_string* %t2832)
  store %nyx_string* %t2833, %nyx_string** %t2834
  %t2835 = load %nyx_string*, %nyx_string** %t2834
  %t2836 = getelementptr [1 x i8], [1 x i8]* @.str294, i32 0, i32 0
  %t2837 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str294.c, i8* %t2836, i64 0)
  %t2838 = call i1 @nyx_string_equals(%nyx_string* %t2835, %nyx_string* %t2837)
  %t2839 = xor i1 %t2838, true
  br i1 %t2839, label %then683, label %else684
then683:
  %t2840 = load %nyx_string*, %nyx_string** %t2831
  %t2841 = load %nyx_string*, %nyx_string** %t2834
  %t2842 = call %nyx_string* @rewrite_package_imports(%nyx_string* %t2840, %nyx_string* %t2841)
  store %nyx_string* %t2842, %nyx_string** %t2831
  br label %merge685
else684:
  br label %merge685
merge685:
  %t2843 = load %nyx_string*, %nyx_string** %t2797
  %t2844 = getelementptr [10 x i8], [10 x i8]* @.str295, i32 0, i32 0
  %t2845 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str295.c, i8* %t2844, i64 9)
  %t2846 = call i1 @nyx_string_contains(%nyx_string* %t2843, %nyx_string* %t2845)
  br i1 %t2846, label %then686, label %else687
then686:
  %t2847 = load %nyx_string*, %nyx_string** %t2831
  %t2848 = load i8*, i8** %t2236
  %t2849 = call %nyx_string* @strip_duplicate_structs(%nyx_string* %t2847, i8* %t2848)
  store %nyx_string* %t2849, %nyx_string** %t2831
  br label %merge688
else687:
  br label %merge688
merge688:
  %t2850 = load i8*, i8** %t2574
  %t2851 = getelementptr [11 x i8], [11 x i8]* @.str296, i32 0, i32 0
  %t2852 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str296.c, i8* %t2851, i64 10)
  %t2853 = load %nyx_string*, %nyx_string** %t2797
  %t2854 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2852, %nyx_string* %t2853)
  %t2855 = getelementptr [2 x i8], [2 x i8]* @.str297, i32 0, i32 0
  %t2856 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str297.c, i8* %t2855, i64 1)
  %t2857 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2854, %nyx_string* %t2856)
  %t2858 = getelementptr [11 x i8], [11 x i8]* @.str298, i32 0, i32 0
  %t2859 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str298.c, i8* %t2858, i64 10)
  %t2860 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2857, %nyx_string* %t2859)
  %t2861 = load %nyx_string*, %nyx_string** %t2831
  %t2862 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2860, %nyx_string* %t2861)
  %t2863 = getelementptr [2 x i8], [2 x i8]* @.str299, i32 0, i32 0
  %t2864 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str299.c, i8* %t2863, i64 1)
  %t2865 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2862, %nyx_string* %t2864)
  %t2866 = load %nyx_string*, %nyx_string** %t2579
  %t2867 = call %nyx_string* @marca_cierre(%nyx_string* %t2866)
  %t2868 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2865, %nyx_string* %t2867)
  %t2869 = getelementptr [9 x i8], [9 x i8]* @.str300, i32 0, i32 0
  %t2870 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str300.c, i8* %t2869, i64 8)
  %t2871 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2868, %nyx_string* %t2870)
  %t2872 = load i64, i64* %t2576
  %t2873 = add i64 %t2872, 1
  %t2874 = call %nyx_string* @nyx_string_from_int(i64 %t2873)
  %t2875 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2871, %nyx_string* %t2874)
  %t2876 = getelementptr [2 x i8], [2 x i8]* @.str301, i32 0, i32 0
  %t2877 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str301.c, i8* %t2876, i64 1)
  %t2878 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2875, %nyx_string* %t2877)
  call void @nyx_sb_append(i8* %t2850, %nyx_string* %t2878)
  br label %merge682
else681:
  %t2879 = load %nyx_string*, %nyx_string** %t2797
  %t2880 = call i64 @import_not_found(%nyx_string* %t2879)
  br label %merge682
merge682:
  br label %merge679
else678:
  %t2881 = load %nyx_string*, %nyx_string** %t2797
  %t2882 = getelementptr [1 x i8], [1 x i8]* @.str302, i32 0, i32 0
  %t2883 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str302.c, i8* %t2882, i64 0)
  %t2884 = call i1 @nyx_string_equals(%nyx_string* %t2881, %nyx_string* %t2883)
  %t2885 = xor i1 %t2884, true
  br i1 %t2885, label %then689, label %else690
then689:
  %t2886 = load i8*, i8** %t2574
  %t2887 = call %nyx_string* @import_ya_inlineado()
  call void @nyx_sb_append(i8* %t2886, %nyx_string* %t2887)
  br label %merge691
else690:
  %t2888 = load i8*, i8** %t2574
  %t2889 = load %nyx_string*, %nyx_string** %t2588
  %t2890 = getelementptr [2 x i8], [2 x i8]* @.str303, i32 0, i32 0
  %t2891 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str303.c, i8* %t2890, i64 1)
  %t2892 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2889, %nyx_string* %t2891)
  call void @nyx_sb_append(i8* %t2888, %nyx_string* %t2892)
  br label %merge691
merge691:
  br label %merge679
merge679:
  br label %merge674
else673:
  %t2893 = load i8*, i8** %t2574
  %t2894 = load %nyx_string*, %nyx_string** %t2588
  %t2895 = getelementptr [2 x i8], [2 x i8]* @.str304, i32 0, i32 0
  %t2896 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str304.c, i8* %t2895, i64 1)
  %t2897 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2894, %nyx_string* %t2896)
  call void @nyx_sb_append(i8* %t2893, %nyx_string* %t2897)
  br label %merge674
merge674:
  br label %merge649
merge649:
  %t2898 = load i64, i64* %t2576
  %t2899 = add i64 %t2898, 1
  store i64 %t2899, i64* %t2576
  %t2900 = load i64, i64* %t2575
  %t2901 = add i64 %t2900, 1
  store i64 %t2901, i64* %t2575
  br label %merge643
merge643:
  br label %while_cond635
while_end637:
  %t2902 = load i8*, i8** %t2574
  %t2903 = call %nyx_string* @nyx_sb_to_string(i8* %t2902)
  store %nyx_string* %t2903, %nyx_string** %t2565
  br label %while_cond632
while_end634:
  %t2904 = getelementptr [1 x i8], [1 x i8]* @.str305, i32 0, i32 0
  %t2905 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str305.c, i8* %t2904, i64 0)
  store %nyx_string* %t2905, %nyx_string** %t2906
  %t2907 = load %nyx_string*, %nyx_string** %t2239
  %t2908 = getelementptr [1 x i8], [1 x i8]* @.str306, i32 0, i32 0
  %t2909 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str306.c, i8* %t2908, i64 0)
  %t2910 = call i1 @nyx_string_equals(%nyx_string* %t2907, %nyx_string* %t2909)
  %t2911 = xor i1 %t2910, true
  br i1 %t2911, label %then692, label %else693
then692:
  %t2912 = getelementptr [17 x i8], [17 x i8]* @.str307, i32 0, i32 0
  %t2913 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str307.c, i8* %t2912, i64 16)
  store %nyx_string* %t2913, %nyx_string** %t2906
  br label %merge694
else693:
  br label %merge694
merge694:
  %t2914 = getelementptr [1 x i8], [1 x i8]* @.str308, i32 0, i32 0
  %t2915 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str308.c, i8* %t2914, i64 0)
  store %nyx_string* %t2915, %nyx_string** %t2916
  %t2917 = load i8*, i8** %t2234
  %t2918 = call { i64, i8* }* @nyx_map_keys_array(i8* %t2917)
  store { i64, i8* }* %t2918, { i64, i8* }** %t2919
  store i64 0, i64* %t2920
  br label %while_cond695
while_cond695:
  %t2921 = load i64, i64* %t2920
  %t2922 = load { i64, i8* }*, { i64, i8* }** %t2919
  %t2923 = call i64 @nyx_array_length({ i64, i8* }* %t2922)
  %t2924 = icmp slt i64 %t2921, %t2923
  br i1 %t2924, label %while_body696, label %while_end697
while_body696:
  %t2925 = load { i64, i8* }*, { i64, i8* }** %t2919
  %t2926 = load i64, i64* %t2920
  %t2927 = call i64 @nyx_array_get_checked({ i64, i8* }* %t2925, i64 %t2926, i64 2)
  %t2928 = inttoptr i64 %t2927 to %nyx_string*
  store %nyx_string* %t2928, %nyx_string** %t2929
  %t2930 = load %nyx_string*, %nyx_string** %t2929
  %t2931 = getelementptr [9 x i8], [9 x i8]* @.str309, i32 0, i32 0
  %t2932 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str309.c, i8* %t2931, i64 8)
  %t2933 = call i1 @nyx_string_starts_with(%nyx_string* %t2930, %nyx_string* %t2932)
  br i1 %t2933, label %then698, label %else699
then698:
  %t2934 = load %nyx_string*, %nyx_string** %t2916
  %t2935 = getelementptr [1 x i8], [1 x i8]* @.str310, i32 0, i32 0
  %t2936 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str310.c, i8* %t2935, i64 0)
  %t2937 = call i1 @nyx_string_equals(%nyx_string* %t2934, %nyx_string* %t2936)
  %t2938 = xor i1 %t2937, true
  br i1 %t2938, label %then701, label %else702
then701:
  %t2939 = load %nyx_string*, %nyx_string** %t2916
  %t2940 = getelementptr [2 x i8], [2 x i8]* @.str311, i32 0, i32 0
  %t2941 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str311.c, i8* %t2940, i64 1)
  %t2942 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2939, %nyx_string* %t2941)
  store %nyx_string* %t2942, %nyx_string** %t2916
  br label %merge703
else702:
  br label %merge703
merge703:
  %t2943 = load %nyx_string*, %nyx_string** %t2916
  %t2944 = load %nyx_string*, %nyx_string** %t2929
  %t2945 = load %nyx_string*, %nyx_string** %t2929
  %t2946 = call i64 @nyx_string_byte_length(%nyx_string* %t2945)
  %t2947 = call %nyx_string* @nyx_string_substring(%nyx_string* %t2944, i64 8, i64 %t2946)
  %t2948 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2943, %nyx_string* %t2947)
  store %nyx_string* %t2948, %nyx_string** %t2916
  br label %merge700
else699:
  br label %merge700
merge700:
  %t2949 = load i64, i64* %t2920
  %t2950 = add i64 %t2949, 1
  store i64 %t2950, i64* %t2920
  br label %while_cond695
while_end697:
  %t2951 = getelementptr [13 x i8], [13 x i8]* @.str312, i32 0, i32 0
  %t2952 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str312.c, i8* %t2951, i64 12)
  %t2953 = load %nyx_string*, %nyx_string** %t2916
  %t2954 = call i8* @nyx_string_to_cstr(%nyx_string* %t2952)
  %t2955 = call i8* @nyx_string_to_cstr(%nyx_string* %t2953)
  call void @nyx_setenv(i8* %t2954, i8* %t2955)
  %t2956 = getelementptr [1 x i8], [1 x i8]* @.str313, i32 0, i32 0
  %t2957 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str313.c, i8* %t2956, i64 0)
  store %nyx_string* %t2957, %nyx_string** %t2958
  %t2959 = getelementptr [13 x i8], [13 x i8]* @.str314, i32 0, i32 0
  %t2960 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str314.c, i8* %t2959, i64 12)
  %t2961 = call i8* @nyx_string_to_cstr(%nyx_string* %t2960)
  %t2962 = call %nyx_string* @nyx_getenv(i8* %t2961)
  %t2963 = getelementptr [1 x i8], [1 x i8]* @.str315, i32 0, i32 0
  %t2964 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str315.c, i8* %t2963, i64 0)
  %t2965 = call i1 @nyx_string_equals(%nyx_string* %t2962, %nyx_string* %t2964)
  %t2966 = xor i1 %t2965, true
  br i1 %t2966, label %then704, label %else705
then704:
  %t2967 = getelementptr [1 x i8], [1 x i8]* @.str316, i32 0, i32 0
  %t2968 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str316.c, i8* %t2967, i64 0)
  %t2969 = call %nyx_string* @marca_cierre(%nyx_string* %t2968)
  store %nyx_string* %t2969, %nyx_string** %t2958
  br label %merge706
else705:
  br label %merge706
merge706:
  %t2970 = load %nyx_string*, %nyx_string** %t2906
  %t2971 = load %nyx_string*, %nyx_string** %t2239
  %t2972 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2970, %nyx_string* %t2971)
  %t2973 = load i8*, i8** %t2316
  %t2974 = call %nyx_string* @nyx_sb_to_string(i8* %t2973)
  %t2975 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2972, %nyx_string* %t2974)
  %t2976 = load %nyx_string*, %nyx_string** %t2958
  %t2977 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2975, %nyx_string* %t2976)
  %t2978 = getelementptr [11 x i8], [11 x i8]* @.str317, i32 0, i32 0
  %t2979 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str317.c, i8* %t2978, i64 10)
  %t2980 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2977, %nyx_string* %t2979)
  %t2981 = load %nyx_string*, %nyx_string** %t2565
  %t2982 = call %nyx_string* @nyx_string_concat(%nyx_string* %t2980, %nyx_string* %t2981)
  ret %nyx_string* %t2982
}

define %nyx_string* @nyx_msg(
%nyx_string* %es.param, %nyx_string* %en.param) {
  %es.ptr = alloca %nyx_string*
  %en.ptr = alloca %nyx_string*
  %t2987 = alloca %nyx_string*
  store %nyx_string* %es.param, %nyx_string** %es.ptr
  store %nyx_string* %en.param, %nyx_string** %en.ptr
  %t2983 = getelementptr [9 x i8], [9 x i8]* @.str318, i32 0, i32 0
  %t2984 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str318.c, i8* %t2983, i64 8)
  %t2985 = call i8* @nyx_string_to_cstr(%nyx_string* %t2984)
  %t2986 = call %nyx_string* @nyx_getenv(i8* %t2985)
  store %nyx_string* %t2986, %nyx_string** %t2987
  %t2988 = load %nyx_string*, %nyx_string** %t2987
  %t2989 = getelementptr [3 x i8], [3 x i8]* @.str319, i32 0, i32 0
  %t2990 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str319.c, i8* %t2989, i64 2)
  %t2991 = call i1 @nyx_string_equals(%nyx_string* %t2988, %nyx_string* %t2990)
  br i1 %t2991, label %then707, label %else708
then707:
  %t2992 = load %nyx_string*, %nyx_string** %es.ptr
  ret %nyx_string* %t2992
else708:
  br label %merge709
merge709:
  %t2993 = load %nyx_string*, %nyx_string** %en.ptr
  ret %nyx_string* %t2993
}

define internal %nyx_string* @import_levenshtein_best(
%nyx_string* %target.param, { i64, i8* }* %candidates.param) {
  %target.ptr = alloca %nyx_string*
  %candidates.ptr = alloca { i64, i8* }*
  %t2996 = alloca i64
  %t3003 = alloca %nyx_string*
  %t3004 = alloca i64
  %t3005 = alloca i64
  %t3014 = alloca %nyx_string*
  %t3017 = alloca i64
  %t3019 = alloca { i64, i8* }*
  %t3020 = alloca i64
  %t3028 = alloca i64
  %t3033 = alloca { i64, i8* }*
  %t3041 = alloca i64
  %t3050 = alloca i64
  %t3051 = alloca i64
  %t3060 = alloca i64
  %t3065 = alloca i64
  %t3072 = alloca i64
  %t3074 = alloca i64
  %t3093 = alloca i64
  %t3094 = alloca i64
  %t3097 = alloca i64
  store %nyx_string* %target.param, %nyx_string** %target.ptr
  store { i64, i8* }* %candidates.param, { i64, i8* }** %candidates.ptr
  %t2994 = load %nyx_string*, %nyx_string** %target.ptr
  %t2995 = call i64 @nyx_string_byte_length(%nyx_string* %t2994)
  store i64 %t2995, i64* %t2996
  %t2997 = load i64, i64* %t2996
  %t2998 = icmp eq i64 %t2997, 0
  br i1 %t2998, label %then710, label %else711
then710:
  %t2999 = getelementptr [1 x i8], [1 x i8]* @.str320, i32 0, i32 0
  %t3000 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str320.c, i8* %t2999, i64 0)
  ret %nyx_string* %t3000
else711:
  br label %merge712
merge712:
  %t3001 = getelementptr [1 x i8], [1 x i8]* @.str321, i32 0, i32 0
  %t3002 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str321.c, i8* %t3001, i64 0)
  store %nyx_string* %t3002, %nyx_string** %t3003
  store i64 999, i64* %t3004
  store i64 0, i64* %t3005
  br label %while_cond713
while_cond713:
  %t3006 = load i64, i64* %t3005
  %t3007 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %t3008 = call i64 @nyx_array_length({ i64, i8* }* %t3007)
  %t3009 = icmp slt i64 %t3006, %t3008
  br i1 %t3009, label %while_body714, label %while_end715
while_body714:
  %t3010 = load { i64, i8* }*, { i64, i8* }** %candidates.ptr
  %t3011 = load i64, i64* %t3005
  %t3012 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3010, i64 %t3011, i64 2)
  %t3013 = inttoptr i64 %t3012 to %nyx_string*
  store %nyx_string* %t3013, %nyx_string** %t3014
  %t3015 = load %nyx_string*, %nyx_string** %t3014
  %t3016 = call i64 @nyx_string_byte_length(%nyx_string* %t3015)
  store i64 %t3016, i64* %t3017
  %t3018 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3018, { i64, i8* }** %t3019
  store i64 0, i64* %t3020
  br label %while_cond716
while_cond716:
  %t3021 = load i64, i64* %t3020
  %t3022 = load i64, i64* %t3017
  %t3023 = icmp sle i64 %t3021, %t3022
  br i1 %t3023, label %while_body717, label %while_end718
while_body717:
  %t3024 = load { i64, i8* }*, { i64, i8* }** %t3019
  %t3025 = load i64, i64* %t3020
  call void @nyx_array_push_tagged({ i64, i8* }* %t3024, i64 %t3025, i64 1)
  %t3026 = load i64, i64* %t3020
  %t3027 = add i64 %t3026, 1
  store i64 %t3027, i64* %t3020
  br label %while_cond716
while_end718:
  store i64 1, i64* %t3028
  br label %while_cond719
while_cond719:
  %t3029 = load i64, i64* %t3028
  %t3030 = load i64, i64* %t2996
  %t3031 = icmp sle i64 %t3029, %t3030
  br i1 %t3031, label %while_body720, label %while_end721
while_body720:
  %t3032 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3032, { i64, i8* }** %t3033
  %t3034 = load { i64, i8* }*, { i64, i8* }** %t3033
  %t3035 = load i64, i64* %t3028
  call void @nyx_array_push_tagged({ i64, i8* }* %t3034, i64 %t3035, i64 1)
  %t3036 = load %nyx_string*, %nyx_string** %target.ptr
  %t3037 = load i64, i64* %t3028
  %t3038 = sub i64 %t3037, 1
  %t3039 = call i8 @nyx_string_char_at(%nyx_string* %t3036, i64 %t3038)
  %t3040 = zext i8 %t3039 to i64
  store i64 %t3040, i64* %t3041
  store i64 1, i64* %t3020
  br label %while_cond722
while_cond722:
  %t3042 = load i64, i64* %t3020
  %t3043 = load i64, i64* %t3017
  %t3044 = icmp sle i64 %t3042, %t3043
  br i1 %t3044, label %while_body723, label %while_end724
while_body723:
  %t3045 = load %nyx_string*, %nyx_string** %t3014
  %t3046 = load i64, i64* %t3020
  %t3047 = sub i64 %t3046, 1
  %t3048 = call i8 @nyx_string_char_at(%nyx_string* %t3045, i64 %t3047)
  %t3049 = zext i8 %t3048 to i64
  store i64 %t3049, i64* %t3050
  store i64 1, i64* %t3051
  %t3052 = load i64, i64* %t3041
  %t3053 = load i64, i64* %t3050
  %t3054 = icmp eq i64 %t3052, %t3053
  br i1 %t3054, label %then725, label %else726
then725:
  store i64 0, i64* %t3051
  br label %merge727
else726:
  br label %merge727
merge727:
  %t3055 = load { i64, i8* }*, { i64, i8* }** %t3033
  %t3056 = load i64, i64* %t3020
  %t3057 = sub i64 %t3056, 1
  %t3058 = call i64 @nyx_array_get({ i64, i8* }* %t3055, i64 %t3057)
  %t3059 = add i64 %t3058, 1
  store i64 %t3059, i64* %t3060
  %t3061 = load { i64, i8* }*, { i64, i8* }** %t3019
  %t3062 = load i64, i64* %t3020
  %t3063 = call i64 @nyx_array_get({ i64, i8* }* %t3061, i64 %t3062)
  %t3064 = add i64 %t3063, 1
  store i64 %t3064, i64* %t3065
  %t3066 = load { i64, i8* }*, { i64, i8* }** %t3019
  %t3067 = load i64, i64* %t3020
  %t3068 = sub i64 %t3067, 1
  %t3069 = call i64 @nyx_array_get({ i64, i8* }* %t3066, i64 %t3068)
  %t3070 = load i64, i64* %t3051
  %t3071 = add i64 %t3069, %t3070
  store i64 %t3071, i64* %t3072
  %t3073 = load i64, i64* %t3060
  store i64 %t3073, i64* %t3074
  %t3075 = load i64, i64* %t3065
  %t3076 = load i64, i64* %t3074
  %t3077 = icmp slt i64 %t3075, %t3076
  br i1 %t3077, label %then728, label %else729
then728:
  %t3078 = load i64, i64* %t3065
  store i64 %t3078, i64* %t3074
  br label %merge730
else729:
  br label %merge730
merge730:
  %t3079 = load i64, i64* %t3072
  %t3080 = load i64, i64* %t3074
  %t3081 = icmp slt i64 %t3079, %t3080
  br i1 %t3081, label %then731, label %else732
then731:
  %t3082 = load i64, i64* %t3072
  store i64 %t3082, i64* %t3074
  br label %merge733
else732:
  br label %merge733
merge733:
  %t3083 = load { i64, i8* }*, { i64, i8* }** %t3033
  %t3084 = load i64, i64* %t3074
  call void @nyx_array_push_tagged({ i64, i8* }* %t3083, i64 %t3084, i64 1)
  %t3085 = load i64, i64* %t3020
  %t3086 = add i64 %t3085, 1
  store i64 %t3086, i64* %t3020
  br label %while_cond722
while_end724:
  %t3087 = load { i64, i8* }*, { i64, i8* }** %t3033
  store { i64, i8* }* %t3087, { i64, i8* }** %t3019
  %t3088 = load i64, i64* %t3028
  %t3089 = add i64 %t3088, 1
  store i64 %t3089, i64* %t3028
  br label %while_cond719
while_end721:
  %t3090 = load { i64, i8* }*, { i64, i8* }** %t3019
  %t3091 = load i64, i64* %t3017
  %t3092 = call i64 @nyx_slot_as_int_checked({ i64, i8* }* %t3090, i64 %t3091)
  store i64 %t3092, i64* %t3093
  store i64 3, i64* %t3094
  %t3095 = load i64, i64* %t2996
  %t3096 = sdiv i64 %t3095, 2
  store i64 %t3096, i64* %t3097
  %t3098 = load i64, i64* %t3097
  %t3099 = load i64, i64* %t3094
  %t3100 = icmp slt i64 %t3098, %t3099
  br i1 %t3100, label %then734, label %else735
then734:
  %t3101 = load i64, i64* %t3097
  store i64 %t3101, i64* %t3094
  br label %merge736
else735:
  br label %merge736
merge736:
  %t3102 = load i64, i64* %t3094
  %t3103 = icmp slt i64 %t3102, 1
  br i1 %t3103, label %then737, label %else738
then737:
  store i64 1, i64* %t3094
  br label %merge739
else738:
  br label %merge739
merge739:
  %t3104 = load i64, i64* %t3093
  %t3105 = load i64, i64* %t3094
  %t3106 = icmp sle i64 %t3104, %t3105
  br i1 %t3106, label %then740, label %else741
then740:
  %t3107 = load i64, i64* %t3093
  %t3108 = load i64, i64* %t3004
  %t3109 = icmp slt i64 %t3107, %t3108
  br i1 %t3109, label %then743, label %else744
then743:
  %t3110 = load i64, i64* %t3093
  store i64 %t3110, i64* %t3004
  %t3111 = load %nyx_string*, %nyx_string** %t3014
  store %nyx_string* %t3111, %nyx_string** %t3003
  br label %merge745
else744:
  br label %merge745
merge745:
  br label %merge742
else741:
  br label %merge742
merge742:
  %t3112 = load i64, i64* %t3005
  %t3113 = add i64 %t3112, 1
  store i64 %t3113, i64* %t3005
  br label %while_cond713
while_end715:
  %t3114 = load %nyx_string*, %nyx_string** %t3003
  ret %nyx_string* %t3114
}

define internal %nyx_string* @find_std_dir(
) {
  %t3125 = alloca %nyx_string*
  %t3126 = alloca i1
  %t3144 = alloca %nyx_string*
  %t3145 = alloca i1
  %t3115 = getelementptr [4 x i8], [4 x i8]* @.str322, i32 0, i32 0
  %t3116 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str322.c, i8* %t3115, i64 3)
  %t3117 = call i8* @nyx_string_to_cstr(%nyx_string* %t3116)
  %t3118 = call i1 @nyx_file_exists(i8* %t3117)
  br i1 %t3118, label %then746, label %else747
then746:
  %t3119 = getelementptr [4 x i8], [4 x i8]* @.str323, i32 0, i32 0
  %t3120 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str323.c, i8* %t3119, i64 3)
  ret %nyx_string* %t3120
else747:
  br label %merge748
merge748:
  %t3121 = getelementptr [9 x i8], [9 x i8]* @.str324, i32 0, i32 0
  %t3122 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str324.c, i8* %t3121, i64 8)
  %t3123 = call i8* @nyx_string_to_cstr(%nyx_string* %t3122)
  %t3124 = call %nyx_string* @nyx_getenv(i8* %t3123)
  store %nyx_string* %t3124, %nyx_string** %t3125
  store i1 false, i1* %t3126
  %t3127 = load %nyx_string*, %nyx_string** %t3125
  %t3128 = getelementptr [1 x i8], [1 x i8]* @.str325, i32 0, i32 0
  %t3129 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str325.c, i8* %t3128, i64 0)
  %t3130 = call i1 @nyx_string_equals(%nyx_string* %t3127, %nyx_string* %t3129)
  %t3131 = xor i1 %t3130, true
  br i1 %t3131, label %sc_and_rhs749, label %sc_and_end750
sc_and_rhs749:
  %t3132 = load %nyx_string*, %nyx_string** %t3125
  %t3133 = getelementptr [5 x i8], [5 x i8]* @.str326, i32 0, i32 0
  %t3134 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str326.c, i8* %t3133, i64 4)
  %t3135 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3132, %nyx_string* %t3134)
  %t3136 = call i8* @nyx_string_to_cstr(%nyx_string* %t3135)
  %t3137 = call i1 @nyx_file_exists(i8* %t3136)
  store i1 %t3137, i1* %t3126
  br label %sc_and_end750
sc_and_end750:
  %t3138 = load i1, i1* %t3126
  br i1 %t3138, label %then751, label %else752
then751:
  %t3139 = load %nyx_string*, %nyx_string** %t3125
  %t3140 = getelementptr [5 x i8], [5 x i8]* @.str327, i32 0, i32 0
  %t3141 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str327.c, i8* %t3140, i64 4)
  %t3142 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3139, %nyx_string* %t3141)
  ret %nyx_string* %t3142
else752:
  br label %merge753
merge753:
  %t3143 = call %nyx_string* @dir_usuario_res()
  store %nyx_string* %t3143, %nyx_string** %t3144
  store i1 false, i1* %t3145
  %t3146 = load %nyx_string*, %nyx_string** %t3144
  %t3147 = getelementptr [1 x i8], [1 x i8]* @.str328, i32 0, i32 0
  %t3148 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str328.c, i8* %t3147, i64 0)
  %t3149 = call i1 @nyx_string_equals(%nyx_string* %t3146, %nyx_string* %t3148)
  %t3150 = xor i1 %t3149, true
  br i1 %t3150, label %sc_and_rhs754, label %sc_and_end755
sc_and_rhs754:
  %t3151 = load %nyx_string*, %nyx_string** %t3144
  %t3152 = getelementptr [10 x i8], [10 x i8]* @.str329, i32 0, i32 0
  %t3153 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str329.c, i8* %t3152, i64 9)
  %t3154 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3151, %nyx_string* %t3153)
  %t3155 = call i8* @nyx_string_to_cstr(%nyx_string* %t3154)
  %t3156 = call i1 @nyx_file_exists(i8* %t3155)
  store i1 %t3156, i1* %t3145
  br label %sc_and_end755
sc_and_end755:
  %t3157 = load i1, i1* %t3145
  br i1 %t3157, label %then756, label %else757
then756:
  %t3158 = load %nyx_string*, %nyx_string** %t3144
  %t3159 = getelementptr [10 x i8], [10 x i8]* @.str330, i32 0, i32 0
  %t3160 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str330.c, i8* %t3159, i64 9)
  %t3161 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3158, %nyx_string* %t3160)
  ret %nyx_string* %t3161
else757:
  br label %merge758
merge758:
  %t3162 = getelementptr [1 x i8], [1 x i8]* @.str331, i32 0, i32 0
  %t3163 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str331.c, i8* %t3162, i64 0)
  ret %nyx_string* %t3163
}

define internal { i64, i8* }* @nx_basenames_in(
%nyx_string* %dir.param) {
  %dir.ptr = alloca %nyx_string*
  %t3165 = alloca { i64, i8* }*
  %t3166 = alloca i1
  %t3180 = alloca { i64, i8* }*
  %t3181 = alloca i64
  %t3184 = alloca %nyx_string*
  %t3193 = alloca %nyx_string*
  store %nyx_string* %dir.param, %nyx_string** %dir.ptr
  %t3164 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3164, { i64, i8* }** %t3165
  store i1 true, i1* %t3166
  %t3167 = load %nyx_string*, %nyx_string** %dir.ptr
  %t3168 = getelementptr [1 x i8], [1 x i8]* @.str332, i32 0, i32 0
  %t3169 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str332.c, i8* %t3168, i64 0)
  %t3170 = call i1 @nyx_string_equals(%nyx_string* %t3167, %nyx_string* %t3169)
  br i1 %t3170, label %sc_or_end760, label %sc_or_rhs759
sc_or_rhs759:
  %t3171 = load %nyx_string*, %nyx_string** %dir.ptr
  %t3172 = call i8* @nyx_string_to_cstr(%nyx_string* %t3171)
  %t3173 = call i1 @nyx_file_exists(i8* %t3172)
  %t3174 = xor i1 %t3173, true
  store i1 %t3174, i1* %t3166
  br label %sc_or_end760
sc_or_end760:
  %t3175 = load i1, i1* %t3166
  br i1 %t3175, label %then761, label %else762
then761:
  %t3176 = load { i64, i8* }*, { i64, i8* }** %t3165
  ret { i64, i8* }* %t3176
else762:
  br label %merge763
merge763:
  %t3177 = load %nyx_string*, %nyx_string** %dir.ptr
  %t3178 = call i8* @nyx_string_to_cstr(%nyx_string* %t3177)
  %t3179 = call { i64, i8* }* @nyx_readdir(i8* %t3178)
  store { i64, i8* }* %t3179, { i64, i8* }** %t3180
  store i64 0, i64* %t3181
  %t3182 = getelementptr [4 x i8], [4 x i8]* @.str333, i32 0, i32 0
  %t3183 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str333.c, i8* %t3182, i64 3)
  store %nyx_string* %t3183, %nyx_string** %t3184
  br label %while_cond764
while_cond764:
  %t3185 = load i64, i64* %t3181
  %t3186 = load { i64, i8* }*, { i64, i8* }** %t3180
  %t3187 = call i64 @nyx_array_length({ i64, i8* }* %t3186)
  %t3188 = icmp slt i64 %t3185, %t3187
  br i1 %t3188, label %while_body765, label %while_end766
while_body765:
  %t3189 = load { i64, i8* }*, { i64, i8* }** %t3180
  %t3190 = load i64, i64* %t3181
  %t3191 = call i64 @nyx_array_get_checked({ i64, i8* }* %t3189, i64 %t3190, i64 2)
  %t3192 = inttoptr i64 %t3191 to %nyx_string*
  store %nyx_string* %t3192, %nyx_string** %t3193
  %t3194 = load %nyx_string*, %nyx_string** %t3193
  %t3195 = load %nyx_string*, %nyx_string** %t3184
  %t3196 = call i1 @nyx_string_ends_with(%nyx_string* %t3194, %nyx_string* %t3195)
  br i1 %t3196, label %then767, label %else768
then767:
  %t3197 = load { i64, i8* }*, { i64, i8* }** %t3165
  %t3198 = load %nyx_string*, %nyx_string** %t3193
  %t3199 = load %nyx_string*, %nyx_string** %t3193
  %t3200 = call i64 @nyx_string_byte_length(%nyx_string* %t3199)
  %t3201 = sub i64 %t3200, 3
  %t3202 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3198, i64 0, i64 %t3201)
  %t3203 = ptrtoint %nyx_string* %t3202 to i64
  call void @nyx_array_push_tagged({ i64, i8* }* %t3197, i64 %t3203, i64 2)
  br label %merge769
else768:
  br label %merge769
merge769:
  %t3204 = load i64, i64* %t3181
  %t3205 = add i64 %t3204, 1
  store i64 %t3205, i64* %t3181
  br label %while_cond764
while_end766:
  %t3206 = load { i64, i8* }*, { i64, i8* }** %t3165
  ret { i64, i8* }* %t3206
}

define internal %nyx_string* @nyx_json_escape(
%nyx_string* %s.param) {
  %s.ptr = alloca %nyx_string*
  %t3209 = alloca %nyx_string*
  %t3210 = alloca i64
  %t3211 = alloca i64
  %t3214 = alloca i64
  %t3217 = alloca %nyx_string*
  %t3220 = alloca %nyx_string*
  %t3223 = alloca %nyx_string*
  %t3226 = alloca %nyx_string*
  %t3229 = alloca %nyx_string*
  %t3232 = alloca %nyx_string*
  %t3240 = alloca i64
  %t3242 = alloca %nyx_string*
  store %nyx_string* %s.param, %nyx_string** %s.ptr
  %t3207 = getelementptr [1 x i8], [1 x i8]* @.str334, i32 0, i32 0
  %t3208 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str334.c, i8* %t3207, i64 0)
  store %nyx_string* %t3208, %nyx_string** %t3209
  store i64 0, i64* %t3210
  store i64 0, i64* %t3211
  %t3212 = load %nyx_string*, %nyx_string** %s.ptr
  %t3213 = call i64 @nyx_string_byte_length(%nyx_string* %t3212)
  store i64 %t3213, i64* %t3214
  %t3215 = getelementptr [1 x i8], [1 x i8]* @.str335, i32 0, i32 0
  %t3216 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str335.c, i8* %t3215, i64 0)
  store %nyx_string* %t3216, %nyx_string** %t3217
  %t3218 = getelementptr [3 x i8], [3 x i8]* @.str336, i32 0, i32 0
  %t3219 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str336.c, i8* %t3218, i64 2)
  store %nyx_string* %t3219, %nyx_string** %t3220
  %t3221 = getelementptr [3 x i8], [3 x i8]* @.str337, i32 0, i32 0
  %t3222 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str337.c, i8* %t3221, i64 2)
  store %nyx_string* %t3222, %nyx_string** %t3223
  %t3224 = getelementptr [3 x i8], [3 x i8]* @.str338, i32 0, i32 0
  %t3225 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str338.c, i8* %t3224, i64 2)
  store %nyx_string* %t3225, %nyx_string** %t3226
  %t3227 = getelementptr [3 x i8], [3 x i8]* @.str339, i32 0, i32 0
  %t3228 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str339.c, i8* %t3227, i64 2)
  store %nyx_string* %t3228, %nyx_string** %t3229
  %t3230 = getelementptr [3 x i8], [3 x i8]* @.str340, i32 0, i32 0
  %t3231 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str340.c, i8* %t3230, i64 2)
  store %nyx_string* %t3231, %nyx_string** %t3232
  br label %while_cond770
while_cond770:
  %t3233 = load i64, i64* %t3211
  %t3234 = load i64, i64* %t3214
  %t3235 = icmp slt i64 %t3233, %t3234
  br i1 %t3235, label %while_body771, label %while_end772
while_body771:
  %t3236 = load %nyx_string*, %nyx_string** %s.ptr
  %t3237 = load i64, i64* %t3211
  %t3238 = call i8 @nyx_string_char_at(%nyx_string* %t3236, i64 %t3237)
  %t3239 = zext i8 %t3238 to i64
  store i64 %t3239, i64* %t3240
  %t3241 = load %nyx_string*, %nyx_string** %t3217
  store %nyx_string* %t3241, %nyx_string** %t3242
  %t3243 = load i64, i64* %t3240
  %t3244 = icmp eq i64 %t3243, 34
  br i1 %t3244, label %then773, label %else774
then773:
  %t3245 = load %nyx_string*, %nyx_string** %t3220
  store %nyx_string* %t3245, %nyx_string** %t3242
  br label %merge775
else774:
  br label %merge775
merge775:
  %t3246 = load i64, i64* %t3240
  %t3247 = icmp eq i64 %t3246, 92
  br i1 %t3247, label %then776, label %else777
then776:
  %t3248 = load %nyx_string*, %nyx_string** %t3223
  store %nyx_string* %t3248, %nyx_string** %t3242
  br label %merge778
else777:
  br label %merge778
merge778:
  %t3249 = load i64, i64* %t3240
  %t3250 = icmp eq i64 %t3249, 10
  br i1 %t3250, label %then779, label %else780
then779:
  %t3251 = load %nyx_string*, %nyx_string** %t3226
  store %nyx_string* %t3251, %nyx_string** %t3242
  br label %merge781
else780:
  br label %merge781
merge781:
  %t3252 = load i64, i64* %t3240
  %t3253 = icmp eq i64 %t3252, 13
  br i1 %t3253, label %then782, label %else783
then782:
  %t3254 = load %nyx_string*, %nyx_string** %t3229
  store %nyx_string* %t3254, %nyx_string** %t3242
  br label %merge784
else783:
  br label %merge784
merge784:
  %t3255 = load i64, i64* %t3240
  %t3256 = icmp eq i64 %t3255, 9
  br i1 %t3256, label %then785, label %else786
then785:
  %t3257 = load %nyx_string*, %nyx_string** %t3232
  store %nyx_string* %t3257, %nyx_string** %t3242
  br label %merge787
else786:
  br label %merge787
merge787:
  %t3258 = load %nyx_string*, %nyx_string** %t3242
  %t3259 = load %nyx_string*, %nyx_string** %t3217
  %t3260 = call i1 @nyx_string_equals(%nyx_string* %t3258, %nyx_string* %t3259)
  %t3261 = xor i1 %t3260, true
  br i1 %t3261, label %then788, label %else789
then788:
  %t3262 = load %nyx_string*, %nyx_string** %t3209
  %t3263 = load %nyx_string*, %nyx_string** %s.ptr
  %t3264 = load i64, i64* %t3210
  %t3265 = load i64, i64* %t3211
  %t3266 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3263, i64 %t3264, i64 %t3265)
  %t3267 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3262, %nyx_string* %t3266)
  %t3268 = load %nyx_string*, %nyx_string** %t3242
  %t3269 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3267, %nyx_string* %t3268)
  store %nyx_string* %t3269, %nyx_string** %t3209
  %t3270 = load i64, i64* %t3211
  %t3271 = add i64 %t3270, 1
  store i64 %t3271, i64* %t3210
  br label %merge790
else789:
  br label %merge790
merge790:
  %t3272 = load i64, i64* %t3211
  %t3273 = add i64 %t3272, 1
  store i64 %t3273, i64* %t3211
  br label %while_cond770
while_end772:
  %t3274 = load i64, i64* %t3210
  %t3275 = icmp eq i64 %t3274, 0
  br i1 %t3275, label %then791, label %else792
then791:
  %t3276 = load %nyx_string*, %nyx_string** %s.ptr
  ret %nyx_string* %t3276
else792:
  br label %merge793
merge793:
  %t3277 = load %nyx_string*, %nyx_string** %t3209
  %t3278 = load %nyx_string*, %nyx_string** %s.ptr
  %t3279 = load i64, i64* %t3210
  %t3280 = load i64, i64* %t3214
  %t3281 = call %nyx_string* @nyx_string_substring(%nyx_string* %t3278, i64 %t3279, i64 %t3280)
  %t3282 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3277, %nyx_string* %t3281)
  ret %nyx_string* %t3282
}

define i64 @set_resolve_soft_errors(
i1 %on.param) {
  %on.ptr = alloca i1
  store i1 %on.param, i1* %on.ptr
  %t3283 = load i1, i1* %on.ptr
  store i1 %t3283, i1* @g_resolve_soft
  store i64 0, i64* @g_resolve_errors
  ret i64 0
}

define i64 @get_resolve_error_count(
) {
  %t3284 = load i64, i64* @g_resolve_errors
  ret i64 %t3284
}

define internal i64 @import_not_found(
%nyx_string* %path.param) {
  %path.ptr = alloca %nyx_string*
  %t3287 = alloca %nyx_string*
  %t3289 = alloca { i64, i8* }*
  %t3291 = alloca { i64, i8* }*
  %t3296 = alloca %nyx_string*
  %t3330 = alloca { i64, i8* }*
  %t3331 = alloca i64
  %t3360 = alloca %nyx_string*
  %t3361 = alloca i1
  %t3376 = alloca %nyx_string*
  %t3420 = alloca i1
  %t3442 = alloca %nyx_string*
  %t3445 = alloca %nyx_string*
  store %nyx_string* %path.param, %nyx_string** %path.ptr
  %t3285 = load %nyx_string*, %nyx_string** %path.ptr
  %t3286 = call %nyx_string* @base_name_from_path(%nyx_string* %t3285)
  store %nyx_string* %t3286, %nyx_string** %t3287
  %t3288 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3288, { i64, i8* }** %t3289
  %t3290 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3290, { i64, i8* }** %t3291
  %t3292 = getelementptr [16 x i8], [16 x i8]* @.str341, i32 0, i32 0
  %t3293 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str341.c, i8* %t3292, i64 15)
  %t3294 = call i8* @nyx_string_to_cstr(%nyx_string* %t3293)
  %t3295 = call %nyx_string* @nyx_getenv(i8* %t3294)
  store %nyx_string* %t3295, %nyx_string** %t3296
  %t3297 = load %nyx_string*, %nyx_string** %path.ptr
  %t3298 = getelementptr [5 x i8], [5 x i8]* @.str342, i32 0, i32 0
  %t3299 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str342.c, i8* %t3298, i64 4)
  %t3300 = call i1 @nyx_string_starts_with(%nyx_string* %t3297, %nyx_string* %t3299)
  br i1 %t3300, label %then794, label %else795
then794:
  %t3301 = call %nyx_string* @find_std_dir()
  %t3302 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %t3301)
  store { i64, i8* }* %t3302, { i64, i8* }** %t3289
  br label %merge796
else795:
  %t3303 = load %nyx_string*, %nyx_string** %path.ptr
  %t3304 = getelementptr [5 x i8], [5 x i8]* @.str343, i32 0, i32 0
  %t3305 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str343.c, i8* %t3304, i64 4)
  %t3306 = call i1 @nyx_string_starts_with(%nyx_string* %t3303, %nyx_string* %t3305)
  br i1 %t3306, label %then797, label %else798
then797:
  %t3307 = load %nyx_string*, %nyx_string** %t3296
  %t3308 = getelementptr [1 x i8], [1 x i8]* @.str344, i32 0, i32 0
  %t3309 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str344.c, i8* %t3308, i64 0)
  %t3310 = call i1 @nyx_string_equals(%nyx_string* %t3307, %nyx_string* %t3309)
  %t3311 = xor i1 %t3310, true
  br i1 %t3311, label %then800, label %else801
then800:
  %t3312 = load %nyx_string*, %nyx_string** %t3296
  %t3313 = getelementptr [5 x i8], [5 x i8]* @.str345, i32 0, i32 0
  %t3314 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str345.c, i8* %t3313, i64 4)
  %t3315 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3312, %nyx_string* %t3314)
  %t3316 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %t3315)
  store { i64, i8* }* %t3316, { i64, i8* }** %t3291
  br label %merge802
else801:
  br label %merge802
merge802:
  br label %merge799
else798:
  %t3317 = call %nyx_string* @find_std_dir()
  %t3318 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %t3317)
  store { i64, i8* }* %t3318, { i64, i8* }** %t3289
  %t3319 = load %nyx_string*, %nyx_string** %t3296
  %t3320 = getelementptr [1 x i8], [1 x i8]* @.str346, i32 0, i32 0
  %t3321 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str346.c, i8* %t3320, i64 0)
  %t3322 = call i1 @nyx_string_equals(%nyx_string* %t3319, %nyx_string* %t3321)
  %t3323 = xor i1 %t3322, true
  br i1 %t3323, label %then803, label %else804
then803:
  %t3324 = load %nyx_string*, %nyx_string** %t3296
  %t3325 = getelementptr [5 x i8], [5 x i8]* @.str347, i32 0, i32 0
  %t3326 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str347.c, i8* %t3325, i64 4)
  %t3327 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3324, %nyx_string* %t3326)
  %t3328 = call { i64, i8* }* @nx_basenames_in(%nyx_string* %t3327)
  store { i64, i8* }* %t3328, { i64, i8* }** %t3291
  br label %merge805
else804:
  br label %merge805
merge805:
  br label %merge799
merge799:
  br label %merge796
merge796:
  %t3329 = call { i64, i8* }* @nyx_array_new_ptr()
  store { i64, i8* }* %t3329, { i64, i8* }** %t3330
  store i64 0, i64* %t3331
  br label %while_cond806
while_cond806:
  %t3332 = load i64, i64* %t3331
  %t3333 = load { i64, i8* }*, { i64, i8* }** %t3289
  %t3334 = call i64 @nyx_array_length({ i64, i8* }* %t3333)
  %t3335 = icmp slt i64 %t3332, %t3334
  br i1 %t3335, label %while_body807, label %while_end808
while_body807:
  %t3336 = load { i64, i8* }*, { i64, i8* }** %t3330
  %t3337 = load { i64, i8* }*, { i64, i8* }** %t3289
  %t3338 = load i64, i64* %t3331
  %t3339 = call i64 @nyx_array_get({ i64, i8* }* %t3337, i64 %t3338)
  %t3340 = load { i64, i8* }*, { i64, i8* }** %t3289
  %t3341 = load i64, i64* %t3331
  %t3342 = call i64 @nyx_array_get_tag({ i64, i8* }* %t3340, i64 %t3341)
  call void @nyx_array_push_tagged({ i64, i8* }* %t3336, i64 %t3339, i64 %t3342)
  %t3343 = load i64, i64* %t3331
  %t3344 = add i64 %t3343, 1
  store i64 %t3344, i64* %t3331
  br label %while_cond806
while_end808:
  store i64 0, i64* %t3331
  br label %while_cond809
while_cond809:
  %t3345 = load i64, i64* %t3331
  %t3346 = load { i64, i8* }*, { i64, i8* }** %t3291
  %t3347 = call i64 @nyx_array_length({ i64, i8* }* %t3346)
  %t3348 = icmp slt i64 %t3345, %t3347
  br i1 %t3348, label %while_body810, label %while_end811
while_body810:
  %t3349 = load { i64, i8* }*, { i64, i8* }** %t3330
  %t3350 = load { i64, i8* }*, { i64, i8* }** %t3291
  %t3351 = load i64, i64* %t3331
  %t3352 = call i64 @nyx_array_get({ i64, i8* }* %t3350, i64 %t3351)
  %t3353 = load { i64, i8* }*, { i64, i8* }** %t3291
  %t3354 = load i64, i64* %t3331
  %t3355 = call i64 @nyx_array_get_tag({ i64, i8* }* %t3353, i64 %t3354)
  call void @nyx_array_push_tagged({ i64, i8* }* %t3349, i64 %t3352, i64 %t3355)
  %t3356 = load i64, i64* %t3331
  %t3357 = add i64 %t3356, 1
  store i64 %t3357, i64* %t3331
  br label %while_cond809
while_end811:
  %t3358 = getelementptr [1 x i8], [1 x i8]* @.str348, i32 0, i32 0
  %t3359 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str348.c, i8* %t3358, i64 0)
  store %nyx_string* %t3359, %nyx_string** %t3360
  store i1 false, i1* %t3361
  %t3362 = load %nyx_string*, %nyx_string** %t3287
  %t3363 = getelementptr [1 x i8], [1 x i8]* @.str349, i32 0, i32 0
  %t3364 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str349.c, i8* %t3363, i64 0)
  %t3365 = call i1 @nyx_string_equals(%nyx_string* %t3362, %nyx_string* %t3364)
  %t3366 = xor i1 %t3365, true
  br i1 %t3366, label %sc_and_rhs812, label %sc_and_end813
sc_and_rhs812:
  %t3367 = load { i64, i8* }*, { i64, i8* }** %t3330
  %t3368 = call i64 @nyx_array_length({ i64, i8* }* %t3367)
  %t3369 = icmp sgt i64 %t3368, 0
  store i1 %t3369, i1* %t3361
  br label %sc_and_end813
sc_and_end813:
  %t3370 = load i1, i1* %t3361
  br i1 %t3370, label %then814, label %else815
then814:
  %t3371 = load %nyx_string*, %nyx_string** %t3287
  %t3372 = load { i64, i8* }*, { i64, i8* }** %t3330
  %t3373 = call %nyx_string* @import_levenshtein_best(%nyx_string* %t3371, { i64, i8* }* %t3372)
  store %nyx_string* %t3373, %nyx_string** %t3360
  br label %merge816
else815:
  br label %merge816
merge816:
  %t3374 = getelementptr [1 x i8], [1 x i8]* @.str350, i32 0, i32 0
  %t3375 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str350.c, i8* %t3374, i64 0)
  store %nyx_string* %t3375, %nyx_string** %t3376
  %t3377 = load %nyx_string*, %nyx_string** %path.ptr
  %t3378 = getelementptr [5 x i8], [5 x i8]* @.str351, i32 0, i32 0
  %t3379 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str351.c, i8* %t3378, i64 4)
  %t3380 = call i1 @nyx_string_starts_with(%nyx_string* %t3377, %nyx_string* %t3379)
  %t3381 = xor i1 %t3380, true
  br i1 %t3381, label %then817, label %else818
then817:
  %t3382 = getelementptr [5 x i8], [5 x i8]* @.str352, i32 0, i32 0
  %t3383 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str352.c, i8* %t3382, i64 4)
  %t3384 = load %nyx_string*, %nyx_string** %path.ptr
  %t3385 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3383, %nyx_string* %t3384)
  store %nyx_string* %t3385, %nyx_string** %t3376
  br label %merge819
else818:
  br label %merge819
merge819:
  %t3386 = load %nyx_string*, %nyx_string** %t3360
  %t3387 = getelementptr [1 x i8], [1 x i8]* @.str353, i32 0, i32 0
  %t3388 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str353.c, i8* %t3387, i64 0)
  %t3389 = call i1 @nyx_string_equals(%nyx_string* %t3386, %nyx_string* %t3388)
  %t3390 = xor i1 %t3389, true
  br i1 %t3390, label %then820, label %else821
then820:
  %t3391 = load %nyx_string*, %nyx_string** %path.ptr
  %t3392 = getelementptr [5 x i8], [5 x i8]* @.str354, i32 0, i32 0
  %t3393 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str354.c, i8* %t3392, i64 4)
  %t3394 = call i1 @nyx_string_starts_with(%nyx_string* %t3391, %nyx_string* %t3393)
  br i1 %t3394, label %then823, label %else824
then823:
  %t3395 = getelementptr [5 x i8], [5 x i8]* @.str355, i32 0, i32 0
  %t3396 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str355.c, i8* %t3395, i64 4)
  %t3397 = load %nyx_string*, %nyx_string** %t3360
  %t3398 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3396, %nyx_string* %t3397)
  store %nyx_string* %t3398, %nyx_string** %t3376
  br label %merge825
else824:
  %t3399 = load %nyx_string*, %nyx_string** %path.ptr
  %t3400 = getelementptr [5 x i8], [5 x i8]* @.str356, i32 0, i32 0
  %t3401 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str356.c, i8* %t3400, i64 4)
  %t3402 = call i1 @nyx_string_starts_with(%nyx_string* %t3399, %nyx_string* %t3401)
  br i1 %t3402, label %then826, label %else827
then826:
  %t3403 = getelementptr [5 x i8], [5 x i8]* @.str357, i32 0, i32 0
  %t3404 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str357.c, i8* %t3403, i64 4)
  %t3405 = load %nyx_string*, %nyx_string** %t3360
  %t3406 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3404, %nyx_string* %t3405)
  store %nyx_string* %t3406, %nyx_string** %t3376
  br label %merge828
else827:
  %t3407 = load { i64, i8* }*, { i64, i8* }** %t3289
  %t3408 = load %nyx_string*, %nyx_string** %t3360
  %t3409 = ptrtoint %nyx_string* %t3408 to i64
  %t3410 = call i64 @nyx_array_contains_tagged({ i64, i8* }* %t3407, i64 %t3409, i64 2)
  %t3411 = trunc i64 %t3410 to i1
  br i1 %t3411, label %then829, label %else830
then829:
  %t3412 = getelementptr [5 x i8], [5 x i8]* @.str358, i32 0, i32 0
  %t3413 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str358.c, i8* %t3412, i64 4)
  %t3414 = load %nyx_string*, %nyx_string** %t3360
  %t3415 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3413, %nyx_string* %t3414)
  store %nyx_string* %t3415, %nyx_string** %t3376
  br label %merge831
else830:
  %t3416 = getelementptr [5 x i8], [5 x i8]* @.str359, i32 0, i32 0
  %t3417 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str359.c, i8* %t3416, i64 4)
  %t3418 = load %nyx_string*, %nyx_string** %t3360
  %t3419 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3417, %nyx_string* %t3418)
  store %nyx_string* %t3419, %nyx_string** %t3376
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
  store i1 1, i1* %t3420
  %t3421 = load %nyx_string*, %nyx_string** %t3376
  %t3422 = load %nyx_string*, %nyx_string** %path.ptr
  %t3423 = call i1 @nyx_string_equals(%nyx_string* %t3421, %nyx_string* %t3422)
  br i1 %t3423, label %then832, label %else833
then832:
  store i1 0, i1* %t3420
  br label %merge834
else833:
  br label %merge834
merge834:
  %t3424 = load %nyx_string*, %nyx_string** %t3376
  %t3425 = getelementptr [1 x i8], [1 x i8]* @.str360, i32 0, i32 0
  %t3426 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str360.c, i8* %t3425, i64 0)
  %t3427 = call i1 @nyx_string_equals(%nyx_string* %t3424, %nyx_string* %t3426)
  br i1 %t3427, label %then835, label %else836
then835:
  store i1 0, i1* %t3420
  br label %merge837
else836:
  br label %merge837
merge837:
  %t3428 = getelementptr [9 x i8], [9 x i8]* @.str361, i32 0, i32 0
  %t3429 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str361.c, i8* %t3428, i64 8)
  %t3430 = call i8* @nyx_string_to_cstr(%nyx_string* %t3429)
  %t3431 = call %nyx_string* @nyx_getenv(i8* %t3430)
  %t3432 = getelementptr [5 x i8], [5 x i8]* @.str362, i32 0, i32 0
  %t3433 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str362.c, i8* %t3432, i64 4)
  %t3434 = call i1 @nyx_string_equals(%nyx_string* %t3431, %nyx_string* %t3433)
  br i1 %t3434, label %then838, label %else839
then838:
  %t3435 = getelementptr [27 x i8], [27 x i8]* @.str363, i32 0, i32 0
  %t3436 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str363.c, i8* %t3435, i64 26)
  %t3437 = load %nyx_string*, %nyx_string** %path.ptr
  %t3438 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3436, %nyx_string* %t3437)
  %t3439 = getelementptr [44 x i8], [44 x i8]* @.str364, i32 0, i32 0
  %t3440 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str364.c, i8* %t3439, i64 43)
  %t3441 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3438, %nyx_string* %t3440)
  store %nyx_string* %t3441, %nyx_string** %t3442
  %t3443 = getelementptr [55 x i8], [55 x i8]* @.str365, i32 0, i32 0
  %t3444 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str365.c, i8* %t3443, i64 54)
  store %nyx_string* %t3444, %nyx_string** %t3445
  %t3446 = load %nyx_string*, %nyx_string** %t3445
  %t3447 = getelementptr [13 x i8], [13 x i8]* @.str366, i32 0, i32 0
  %t3448 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str366.c, i8* %t3447, i64 12)
  %t3449 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3446, %nyx_string* %t3448)
  %t3450 = load %nyx_string*, %nyx_string** %t3442
  %t3451 = call %nyx_string* @nyx_json_escape(%nyx_string* %t3450)
  %t3452 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3449, %nyx_string* %t3451)
  %t3453 = getelementptr [2 x i8], [2 x i8]* @.str367, i32 0, i32 0
  %t3454 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str367.c, i8* %t3453, i64 1)
  %t3455 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3452, %nyx_string* %t3454)
  store %nyx_string* %t3455, %nyx_string** %t3445
  %t3456 = load i1, i1* %t3420
  br i1 %t3456, label %then841, label %else842
then841:
  %t3457 = load %nyx_string*, %nyx_string** %t3445
  %t3458 = getelementptr [16 x i8], [16 x i8]* @.str368, i32 0, i32 0
  %t3459 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str368.c, i8* %t3458, i64 15)
  %t3460 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3457, %nyx_string* %t3459)
  %t3461 = load %nyx_string*, %nyx_string** %t3376
  %t3462 = call %nyx_string* @nyx_json_escape(%nyx_string* %t3461)
  %t3463 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3460, %nyx_string* %t3462)
  %t3464 = getelementptr [2 x i8], [2 x i8]* @.str369, i32 0, i32 0
  %t3465 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str369.c, i8* %t3464, i64 1)
  %t3466 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3463, %nyx_string* %t3465)
  store %nyx_string* %t3466, %nyx_string** %t3445
  br label %merge843
else842:
  br label %merge843
merge843:
  %t3467 = load %nyx_string*, %nyx_string** %t3445
  %t3468 = getelementptr [2 x i8], [2 x i8]* @.str370, i32 0, i32 0
  %t3469 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str370.c, i8* %t3468, i64 1)
  %t3470 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3467, %nyx_string* %t3469)
  store %nyx_string* %t3470, %nyx_string** %t3445
  %t3471 = load %nyx_string*, %nyx_string** %t3445
  %t3472 = call i8* @nyx_string_to_cstr(%nyx_string* %t3471)
  call void @nyx_print_string(i8* %t3472)
  %t3473 = load i64, i64* @g_resolve_errors
  %t3474 = add i64 %t3473, 1
  store i64 %t3474, i64* @g_resolve_errors
  %t3475 = load i1, i1* @g_resolve_soft
  %t3476 = xor i1 %t3475, true
  br i1 %t3476, label %then844, label %else845
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
  %t3477 = getelementptr [49 x i8], [49 x i8]* @.str371, i32 0, i32 0
  %t3478 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str371.c, i8* %t3477, i64 48)
  %t3479 = load %nyx_string*, %nyx_string** %path.ptr
  %t3480 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3478, %nyx_string* %t3479)
  %t3481 = getelementptr [41 x i8], [41 x i8]* @.str372, i32 0, i32 0
  %t3482 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str372.c, i8* %t3481, i64 40)
  %t3483 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3480, %nyx_string* %t3482)
  %t3484 = getelementptr [44 x i8], [44 x i8]* @.str373, i32 0, i32 0
  %t3485 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str373.c, i8* %t3484, i64 43)
  %t3486 = load %nyx_string*, %nyx_string** %path.ptr
  %t3487 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3485, %nyx_string* %t3486)
  %t3488 = getelementptr [44 x i8], [44 x i8]* @.str374, i32 0, i32 0
  %t3489 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str374.c, i8* %t3488, i64 43)
  %t3490 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3487, %nyx_string* %t3489)
  %t3491 = call %nyx_string* @nyx_msg(%nyx_string* %t3483, %nyx_string* %t3490)
  %t3492 = call i8* @nyx_string_to_cstr(%nyx_string* %t3491)
  call void @nyx_print_string(i8* %t3492)
  %t3493 = load i1, i1* %t3420
  br i1 %t3493, label %then847, label %else848
then847:
  %t3494 = getelementptr [26 x i8], [26 x i8]* @.str375, i32 0, i32 0
  %t3495 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str375.c, i8* %t3494, i64 25)
  %t3496 = load %nyx_string*, %nyx_string** %t3376
  %t3497 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3495, %nyx_string* %t3496)
  %t3498 = getelementptr [3 x i8], [3 x i8]* @.str376, i32 0, i32 0
  %t3499 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str376.c, i8* %t3498, i64 2)
  %t3500 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3497, %nyx_string* %t3499)
  %t3501 = getelementptr [22 x i8], [22 x i8]* @.str377, i32 0, i32 0
  %t3502 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str377.c, i8* %t3501, i64 21)
  %t3503 = load %nyx_string*, %nyx_string** %t3376
  %t3504 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3502, %nyx_string* %t3503)
  %t3505 = getelementptr [3 x i8], [3 x i8]* @.str378, i32 0, i32 0
  %t3506 = call %nyx_string* @nyx_intern_ptr(%nyx_string** @.str378.c, i8* %t3505, i64 2)
  %t3507 = call %nyx_string* @nyx_string_concat(%nyx_string* %t3504, %nyx_string* %t3506)
  %t3508 = call %nyx_string* @nyx_msg(%nyx_string* %t3500, %nyx_string* %t3507)
  %t3509 = call i8* @nyx_string_to_cstr(%nyx_string* %t3508)
  call void @nyx_print_string(i8* %t3509)
  br label %merge849
else848:
  br label %merge849
merge849:
  %t3510 = load i64, i64* @g_resolve_errors
  %t3511 = add i64 %t3510, 1
  store i64 %t3511, i64* @g_resolve_errors
  %t3512 = load i1, i1* @g_resolve_soft
  %t3513 = xor i1 %t3512, true
  br i1 %t3513, label %then850, label %else851
then850:
  call void @nyx_exit(i64 1)
  br label %merge852
else851:
  br label %merge852
merge852:
  ret i64 1
}


attributes #0 = { returns_twice }

