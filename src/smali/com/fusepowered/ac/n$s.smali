.class Lcom/fusepowered/ac/n$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/fusepowered/ac/n$j;

.field d:Lcom/fusepowered/ac/n$r;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1386
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v2, p0, Lcom/fusepowered/ac/n$s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return v0

    .line 1387
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/n$s;->c:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$r;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1389
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1394
    const-string v1, "background_image"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$s;->a:Ljava/lang/String;

    .line 1395
    const-string v1, "background_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$s;->b:Ljava/lang/String;

    .line 1397
    new-instance v1, Lcom/fusepowered/ac/n$j;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$j;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$s;->c:Lcom/fusepowered/ac/n$j;

    .line 1398
    iget-object v1, p0, Lcom/fusepowered/ac/n$s;->c:Lcom/fusepowered/ac/n$j;

    const-string v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$j;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return v0

    .line 1400
    :cond_1
    new-instance v1, Lcom/fusepowered/ac/n$r;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$r;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    .line 1401
    iget-object v1, p0, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    const-string v2, "dialog"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$r;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1403
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1408
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$s;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/fusepowered/ac/n$s;->c:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$j;->b()V

    .line 1410
    iget-object v0, p0, Lcom/fusepowered/ac/n$s;->d:Lcom/fusepowered/ac/n$r;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$r;->b()V

    .line 1411
    return-void
.end method
