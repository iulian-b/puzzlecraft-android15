.class Lcom/fusepowered/ac/n$aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "aa"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/fusepowered/ac/n$w;

.field c:I

.field d:Ljava/lang/String;

.field e:Z

.field f:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1297
    if-nez p1, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return v0

    .line 1299
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ac/n$aa;->a:Z

    .line 1300
    iget-boolean v2, p0, Lcom/fusepowered/ac/n$aa;->a:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1302
    :cond_2
    new-instance v2, Lcom/fusepowered/ac/n$w;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$w;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$aa;->b:Lcom/fusepowered/ac/n$w;

    .line 1303
    iget-object v2, p0, Lcom/fusepowered/ac/n$aa;->b:Lcom/fusepowered/ac/n$w;

    const-string v3, "limits"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$w;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1305
    const-string v0, "reward_amount"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$aa;->c:I

    .line 1306
    const-string v0, "reward_name"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$aa;->d:Ljava/lang/String;

    .line 1307
    const-string v0, "client_side"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fusepowered/ac/n$aa;->e:Z

    .line 1308
    const-string v0, "videos_per_reward"

    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fusepowered/ac/n$aa;->f:I

    move v0, v1

    .line 1310
    goto :goto_0
.end method
