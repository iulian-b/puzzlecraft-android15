.class Lcom/fusepowered/ac/n$q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/fusepowered/ac/n$j;

.field d:Lcom/fusepowered/ac/n$p;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1490
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v2, p0, Lcom/fusepowered/ac/n$q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return v0

    .line 1491
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/n$q;->c:Lcom/fusepowered/ac/n$j;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1492
    iget-object v1, p0, Lcom/fusepowered/ac/n$q;->d:Lcom/fusepowered/ac/n$p;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1493
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1498
    const-string v1, "background_image"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$q;->a:Ljava/lang/String;

    .line 1499
    const-string v1, "background_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$q;->b:Ljava/lang/String;

    .line 1501
    sget-object v1, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ac/n$q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v1, Lcom/fusepowered/ac/n$j;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$j;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$q;->c:Lcom/fusepowered/ac/n$j;

    .line 1504
    iget-object v1, p0, Lcom/fusepowered/ac/n$q;->c:Lcom/fusepowered/ac/n$j;

    const-string v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$j;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return v0

    .line 1506
    :cond_1
    new-instance v1, Lcom/fusepowered/ac/n$p;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$p;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$q;->d:Lcom/fusepowered/ac/n$p;

    .line 1507
    iget-object v1, p0, Lcom/fusepowered/ac/n$q;->d:Lcom/fusepowered/ac/n$p;

    const-string v2, "dialog"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$p;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1509
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1514
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$q;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/fusepowered/ac/n$q;->d:Lcom/fusepowered/ac/n$p;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$p;->b()V

    .line 1516
    return-void
.end method
