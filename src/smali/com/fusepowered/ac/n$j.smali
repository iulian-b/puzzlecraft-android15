.class Lcom/fusepowered/ac/n$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    .line 1592
    iget-boolean v0, p0, Lcom/fusepowered/ac/n$j;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1593
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1598
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1610
    :goto_0
    return v0

    .line 1600
    :cond_0
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v0}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$j;->f:Z

    .line 1601
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$j;->a:I

    .line 1602
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$j;->b:I

    .line 1603
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$j;->c:I

    .line 1604
    const-string v1, "image"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$j;->d:Ljava/lang/String;

    .line 1605
    const-string v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$j;->e:Ljava/lang/String;

    .line 1606
    iget-object v1, p0, Lcom/fusepowered/ac/n$j;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$j;->e:Ljava/lang/String;

    .line 1608
    :cond_1
    sget-object v1, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ac/n$j;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1615
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$j;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    return-void
.end method
