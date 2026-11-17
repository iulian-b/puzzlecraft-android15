.class Lcom/fusepowered/ac/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Lcom/fusepowered/ac/n$l;

.field q:Lcom/fusepowered/ac/n$v;

.field r:Lcom/fusepowered/ac/n$k;

.field s:Lcom/fusepowered/ac/n$c;

.field t:Lcom/fusepowered/ac/n$b;

.field u:Lcom/fusepowered/ac/n$h;

.field v:Lcom/fusepowered/ac/n$x;

.field w:Lcom/fusepowered/ac/n$n;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 994
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$k;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return v0

    .line 997
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    iget-boolean v1, v1, Lcom/fusepowered/ac/n$c;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-boolean v1, v1, Lcom/fusepowered/ac/n$n;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    iget-boolean v1, v1, Lcom/fusepowered/ac/n$h;->d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    :cond_4
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$x;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1007
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1012
    if-nez p1, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return v0

    .line 1013
    :cond_1
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->a:Ljava/lang/String;

    .line 1016
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->b:Ljava/lang/String;

    .line 1017
    const-string v1, "ad_campaign_id"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$a;->c:I

    .line 1018
    const-string v1, "ad_id"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$a;->d:I

    .line 1019
    const-string v1, "ad_group_id"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$a;->e:I

    .line 1020
    const-string v1, "cpcv_bid"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$a;->f:I

    .line 1021
    const-string v1, "net_earnings"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$a;->g:I

    .line 1022
    const-string v1, "expires"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fusepowered/ac/n$a;->h:I

    .line 1023
    const-string v1, "enable_in_app_store"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$a;->i:Z

    .line 1024
    const-string v1, "video_events_on_replays"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$a;->j:Z

    .line 1025
    const-string v1, "test_ad"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$a;->k:Z

    .line 1026
    const-string v1, "fullscreen"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$a;->l:Z

    .line 1027
    const-string v1, "house_ad"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$a;->m:Z

    .line 1028
    const-string v1, "contracted"

    invoke-virtual {p1, v1}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fusepowered/ac/n$a;->n:Z

    .line 1031
    new-instance v1, Lcom/fusepowered/ac/n$l;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$l;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    .line 1032
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    const-string v2, "limits"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$l;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    new-instance v1, Lcom/fusepowered/ac/n$v;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$v;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->q:Lcom/fusepowered/ac/n$v;

    .line 1036
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->q:Lcom/fusepowered/ac/n$v;

    const-string v2, "third_party_tracking"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$v;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    new-instance v1, Lcom/fusepowered/ac/n$k;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$k;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    .line 1040
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    const-string v2, "in_app_browser"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$k;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    new-instance v1, Lcom/fusepowered/ac/n$n;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$n;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    .line 1043
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    const-string v2, "native"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$n;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    new-instance v1, Lcom/fusepowered/ac/n$c;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$c;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    .line 1047
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    const-string v2, "v4vc"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$c;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    new-instance v1, Lcom/fusepowered/ac/n$b;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$b;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->t:Lcom/fusepowered/ac/n$b;

    .line 1051
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->t:Lcom/fusepowered/ac/n$b;

    const-string v2, "ad_tracking"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$b;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    new-instance v1, Lcom/fusepowered/ac/n$h;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$h;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    .line 1055
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    const-string v2, "companion_ad"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$h;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    new-instance v1, Lcom/fusepowered/ac/n$x;

    invoke-direct {v1}, Lcom/fusepowered/ac/n$x;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    .line 1059
    iget-object v1, p0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    const-string v2, "video"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/n$x;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$c;->b()V

    .line 1069
    iget-object v0, p0, Lcom/fusepowered/ac/n$a;->r:Lcom/fusepowered/ac/n$k;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$k;->b()V

    .line 1070
    iget-object v0, p0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$n;->b()V

    .line 1071
    iget-object v0, p0, Lcom/fusepowered/ac/n$a;->u:Lcom/fusepowered/ac/n$h;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$h;->b()V

    .line 1072
    iget-object v0, p0, Lcom/fusepowered/ac/n$a;->v:Lcom/fusepowered/ac/n$x;

    invoke-virtual {v0}, Lcom/fusepowered/ac/n$x;->c()V

    .line 1073
    return-void
.end method
