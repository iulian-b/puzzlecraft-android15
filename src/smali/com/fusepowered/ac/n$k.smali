.class Lcom/fusepowered/ac/n$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/fusepowered/ac/n$j;

.field i:Lcom/fusepowered/ac/n$g;

.field j:Lcom/fusepowered/ac/n$g;

.field k:Lcom/fusepowered/ac/n$g;

.field l:Lcom/fusepowered/ac/n$g;

.field m:Lcom/fusepowered/ac/n$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1217
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v2, p0, Lcom/fusepowered/ac/n$k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return v0

    .line 1218
    :cond_1
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v2, p0, Lcom/fusepowered/ac/n$k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v2, p0, Lcom/fusepowered/ac/n$k;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->h:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->i:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->j:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->k:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1225
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->l:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->m:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1228
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1233
    if-nez p1, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return v0

    .line 1235
    :cond_1
    const-string v1, "tiny_glow_image"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->a:Ljava/lang/String;

    .line 1236
    const-string v1, "tiny_glow_image_last_modified;"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->b:Ljava/lang/String;

    .line 1237
    const-string v1, "background_bar_image"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->c:Ljava/lang/String;

    .line 1238
    const-string v1, "background_bar_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->d:Ljava/lang/String;

    .line 1239
    const-string v1, "background_tile_image"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->e:Ljava/lang/String;

    .line 1240
    const-string v1, "background_tile_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->f:Ljava/lang/String;

    .line 1241
    const-string v1, "background_color"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->g:Ljava/lang/String;

    .line 1243
    sget-object v1, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ac/n$k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    sget-object v1, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ac/n$k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    sget-object v1, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ac/n$k;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    new-instance v1, Lcom/fusepowered/ac/n$j;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$j;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->h:Lcom/fusepowered/ac/n$j;

    .line 1249
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->h:Lcom/fusepowered/ac/n$j;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$j;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1252
    new-instance v1, Lcom/fusepowered/ac/n$j;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$j;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->h:Lcom/fusepowered/ac/n$j;

    .line 1253
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->h:Lcom/fusepowered/ac/n$j;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$j;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->i:Lcom/fusepowered/ac/n$g;

    .line 1255
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->i:Lcom/fusepowered/ac/n$g;

    const-string v2, "stop"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1256
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->j:Lcom/fusepowered/ac/n$g;

    .line 1257
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->j:Lcom/fusepowered/ac/n$g;

    const-string v2, "back"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->k:Lcom/fusepowered/ac/n$g;

    .line 1259
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->k:Lcom/fusepowered/ac/n$g;

    const-string v2, "close"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->l:Lcom/fusepowered/ac/n$g;

    .line 1261
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->l:Lcom/fusepowered/ac/n$g;

    const-string v2, "forward"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    new-instance v1, Lcom/fusepowered/ac/n$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$k;->m:Lcom/fusepowered/ac/n$g;

    .line 1263
    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->m:Lcom/fusepowered/ac/n$g;

    const-string v2, "reload"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1265
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1270
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$k;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/fusepowered/ac/n$k;->h:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$j;->b()V

    .line 1275
    iget-object v0, p0, Lcom/fusepowered/ac/n$k;->i:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 1276
    iget-object v0, p0, Lcom/fusepowered/ac/n$k;->j:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 1277
    iget-object v0, p0, Lcom/fusepowered/ac/n$k;->k:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 1278
    iget-object v0, p0, Lcom/fusepowered/ac/n$k;->l:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 1279
    iget-object v0, p0, Lcom/fusepowered/ac/n$k;->m:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 1280
    return-void
.end method
