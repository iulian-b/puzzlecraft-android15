.class Lcom/fusepowered/ac/n$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "x"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:D

.field n:Lcom/fusepowered/ac/n$g;

.field o:Lcom/fusepowered/ac/n$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x9

    .line 1940
    iget-boolean v2, p0, Lcom/fusepowered/ac/n$x;->a:Z

    if-nez v2, :cond_1

    .line 1972
    :cond_0
    :goto_0
    return v0

    .line 1943
    :cond_1
    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v3, p0, Lcom/fusepowered/ac/n$x;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1946
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 1949
    :cond_3
    iget-object v2, p0, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$g;->a()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 1952
    :cond_4
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v1, v1, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v1, v1, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    const-string v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1954
    sput v4, Lcom/fusepowered/ac/a;->Y:I

    .line 1955
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Video not ready due to VIEW_FILTER_ONLINE"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1957
    :cond_5
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v1, v1, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v1, v1, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/fusepowered/ac/q;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1959
    sput v4, Lcom/fusepowered/ac/a;->Y:I

    .line 1960
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Video not ready due to VIEW_FILTER_WIFI"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1962
    :cond_6
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v1, v1, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v1, v1, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    const-string v2, "cell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/fusepowered/ac/q;->b()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1964
    sput v4, Lcom/fusepowered/ac/a;->Y:I

    .line 1965
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Video not ready due to VIEW_FILTER_CELL"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 1967
    :cond_7
    sget-object v1, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v1, v1, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v1, v1, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v1, v1, Lcom/fusepowered/ac/n$e;->i:Ljava/lang/String;

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1969
    sput v4, Lcom/fusepowered/ac/a;->Y:I

    .line 1970
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Video not ready due to VIEW_FILTER_OFFLINE"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1982
    if-nez p1, :cond_1

    .line 2008
    :cond_0
    :goto_0
    return v0

    .line 1984
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ac/n$x;->a:Z

    .line 1985
    iget-boolean v2, p0, Lcom/fusepowered/ac/n$x;->a:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1987
    :cond_2
    const-string v2, "width"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fusepowered/ac/n$x;->c:I

    .line 1988
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fusepowered/ac/n$x;->d:I

    .line 1989
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$x;->e:Ljava/lang/String;

    .line 1990
    sget-object v2, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fusepowered/ac/n$x;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    const-string v2, "last_modified"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$x;->g:Ljava/lang/String;

    .line 1992
    const-string v2, "video_frame_rate"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$x;->h:Ljava/lang/String;

    .line 1993
    const-string v2, "audio_channels"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$x;->i:Ljava/lang/String;

    .line 1994
    const-string v2, "audio_codec"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$x;->j:Ljava/lang/String;

    .line 1995
    const-string v2, "audio_sample_rate"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$x;->k:Ljava/lang/String;

    .line 1996
    const-string v2, "video_codec"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$x;->l:Ljava/lang/String;

    .line 1997
    const-string v2, "duration"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->f(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/fusepowered/ac/n$x;->m:D

    .line 2000
    new-instance v2, Lcom/fusepowered/ac/n$g;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    .line 2001
    iget-object v2, p0, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    const-string v3, "skip_video"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2004
    new-instance v2, Lcom/fusepowered/ac/n$g;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$g;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    .line 2005
    iget-object v2, p0, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    const-string v3, "in_video_engagement"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$g;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2008
    goto/16 :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1977
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$x;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 2013
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->c:Lcom/fusepowered/ac/o;

    iget-object v1, p0, Lcom/fusepowered/ac/n$x;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/n$x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/ac/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object v0, p0, Lcom/fusepowered/ac/n$x;->o:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 2015
    iget-object v0, p0, Lcom/fusepowered/ac/n$x;->n:Lcom/fusepowered/ac/n$g;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$g;->b()V

    .line 2016
    return-void
.end method
