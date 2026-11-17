.class Lcom/fusepowered/ac/n$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Z

.field g:D

.field h:Lcom/fusepowered/ac/n$t;

.field i:Lcom/fusepowered/ac/n$i;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1699
    iget-object v2, p0, Lcom/fusepowered/ac/n$h;->i:Lcom/fusepowered/ac/n$i;

    iget-boolean v2, v2, Lcom/fusepowered/ac/n$i;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/ac/n$h;->i:Lcom/fusepowered/ac/n$i;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$i;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1702
    :cond_0
    :goto_0
    return v0

    .line 1700
    :cond_1
    iget-boolean v2, p0, Lcom/fusepowered/ac/n$h;->d:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1701
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/ac/n$h;->h:Lcom/fusepowered/ac/n$t;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$t;->a()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/fusepowered/ac/n$h;->i:Lcom/fusepowered/ac/n$i;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1702
    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1707
    if-nez p1, :cond_1

    .line 1727
    :cond_0
    :goto_0
    return v0

    .line 1709
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ac/n$h;->d:Z

    .line 1710
    iget-boolean v2, p0, Lcom/fusepowered/ac/n$h;->d:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1712
    :cond_2
    const-string v2, "uuid"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$h;->a:Ljava/lang/String;

    .line 1713
    const-string v2, "ad_id"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fusepowered/ac/n$h;->b:I

    .line 1714
    const-string v2, "ad_campaign_id"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fusepowered/ac/n$h;->c:I

    .line 1715
    const-string v2, "dissolve"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ac/n$h;->e:Z

    .line 1716
    const-string v2, "enable_in_app_store"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ac/n$h;->f:Z

    .line 1717
    const-string v2, "dissolve_delay"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->f(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/ac/n$h;->g:D

    .line 1720
    new-instance v2, Lcom/fusepowered/ac/n$t;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$t;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$h;->h:Lcom/fusepowered/ac/n$t;

    .line 1721
    iget-object v2, p0, Lcom/fusepowered/ac/n$h;->h:Lcom/fusepowered/ac/n$t;

    const-string v3, "static"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$t;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1724
    new-instance v2, Lcom/fusepowered/ac/n$i;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$i;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$h;->i:Lcom/fusepowered/ac/n$i;

    .line 1725
    iget-object v2, p0, Lcom/fusepowered/ac/n$h;->i:Lcom/fusepowered/ac/n$i;

    const-string v3, "html5"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$i;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1727
    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 1732
    iget-boolean v0, p0, Lcom/fusepowered/ac/n$h;->d:Z

    if-nez v0, :cond_0

    .line 1735
    :goto_0
    return-void

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/n$h;->h:Lcom/fusepowered/ac/n$t;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$t;->b()V

    .line 1734
    iget-object v0, p0, Lcom/fusepowered/ac/n$h;->i:Lcom/fusepowered/ac/n$i;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$i;->b()V

    goto :goto_0
.end method
