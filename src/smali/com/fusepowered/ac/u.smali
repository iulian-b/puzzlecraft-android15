.class Lcom/fusepowered/ac/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fusepowered/ac/ADCDownload$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/ac/u$a;
    }
.end annotation


# instance fields
.field a:Lcom/fusepowered/ac/d;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ac/u$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ac/u$a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/u;->c:Ljava/util/ArrayList;

    .line 11
    iput v1, p0, Lcom/fusepowered/ac/u;->d:I

    .line 12
    iput-boolean v1, p0, Lcom/fusepowered/ac/u;->e:Z

    .line 17
    iput-object p1, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    .line 18
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/fusepowered/ac/u;->b()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/ac/u;->d:I

    .line 166
    return-void
.end method

.method a(DLcom/fusepowered/ac/AdColonyAd;)V
    .locals 17

    .prologue
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    .line 133
    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/fusepowered/ac/AdColonyAd;->m:D

    .line 134
    cmpg-double v6, p1, v4

    if-gez v6, :cond_0

    .line 160
    :goto_0
    return-void

    .line 135
    :cond_0
    cmpg-double v6, v4, v8

    if-gez v6, :cond_1

    cmpl-double v6, p1, v8

    if-ltz v6, :cond_1

    .line 137
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/fusepowered/ac/AdColonyAd;->g:Ljava/lang/String;

    invoke-static {v6}, Lcom/fusepowered/ac/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/fusepowered/ac/AdColonyAd;->k:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "native_first_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 140
    :cond_1
    :goto_1
    cmpg-double v6, v4, v10

    if-gez v6, :cond_2

    cmpl-double v6, p1, v10

    if-ltz v6, :cond_2

    .line 142
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/fusepowered/ac/AdColonyAd;->g:Ljava/lang/String;

    invoke-static {v6}, Lcom/fusepowered/ac/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/fusepowered/ac/AdColonyAd;->k:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "native_midpoint"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 145
    :cond_2
    :goto_2
    cmpg-double v6, v4, v12

    if-gez v6, :cond_3

    cmpl-double v6, p1, v12

    if-ltz v6, :cond_3

    .line 147
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/fusepowered/ac/AdColonyAd;->g:Ljava/lang/String;

    invoke-static {v6}, Lcom/fusepowered/ac/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/fusepowered/ac/AdColonyAd;->k:Ljava/lang/String;

    const-string v7, "native"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "native_third_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 150
    :cond_3
    :goto_3
    cmpg-double v4, v4, v14

    if-gez v4, :cond_4

    cmpl-double v4, p1, v14

    if-ltz v4, :cond_4

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/fusepowered/ac/AdColonyAd;->k:Ljava/lang/String;

    const-string v5, "native"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 152
    sget-object v4, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v5, "Tracking ad event - complete"

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    .line 153
    new-instance v4, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v4}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 154
    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/fusepowered/ac/AdColonyAd;->q:Z

    if-eqz v5, :cond_8

    const-string v5, "ad_slot"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v6, v6, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v6, v6, Lcom/fusepowered/ac/ag;->d:I

    invoke-virtual {v4, v5, v6}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 156
    :goto_4
    const-string v5, "replay"

    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/fusepowered/ac/AdColonyAd;->r:Z

    invoke-virtual {v4, v5, v6}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 157
    const-string v5, "complete"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v4, v1}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 159
    :cond_4
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/fusepowered/ac/AdColonyAd;->m:D

    goto/16 :goto_0

    .line 138
    :cond_5
    const-string v6, "first_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    goto/16 :goto_1

    .line 143
    :cond_6
    const-string v6, "midpoint"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    goto/16 :goto_2

    .line 148
    :cond_7
    const-string v6, "third_quartile"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Lcom/fusepowered/ac/u;->b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    goto :goto_3

    .line 155
    :cond_8
    const-string v5, "ad_slot"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v6, v6, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v6, v6, Lcom/fusepowered/ac/ag;->d:I

    invoke-virtual {v4, v5, v6}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    goto :goto_4
.end method

.method a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->k:Lcom/fusepowered/ac/n$f;

    .line 44
    if-eqz v0, :cond_0

    .line 46
    iget-object v0, v0, Lcom/fusepowered/ac/n$f;->h:Lcom/fusepowered/ac/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->l:Lcom/fusepowered/ac/n$u;

    .line 50
    if-eqz v0, :cond_1

    .line 52
    iget-object v0, v0, Lcom/fusepowered/ac/n$u;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 2

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 65
    sget-object v0, Lcom/fusepowered/ac/l;->d:Lcom/fusepowered/ac/l;

    const-string v1, "No such event type:"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 75
    :goto_0
    return-void

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance p2, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {p2}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 71
    const-string v0, "replay"

    iget-boolean v1, p3, Lcom/fusepowered/ac/AdColonyAd;->r:Z

    invoke-virtual {p2, v0, v1}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 73
    :cond_1
    iget-object v0, p3, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->t:Lcom/fusepowered/ac/n$b;

    iget-object v0, v0, Lcom/fusepowered/ac/n$b;->C:Lcom/fusepowered/ac/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 74
    iget-object v0, p3, Lcom/fusepowered/ac/AdColonyAd;->i:Lcom/fusepowered/ac/n$a;

    iget-object v0, v0, Lcom/fusepowered/ac/n$a;->q:Lcom/fusepowered/ac/n$v;

    iget-object v0, v0, Lcom/fusepowered/ac/n$v;->B:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    .line 26
    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Ad request for zone "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 29
    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    iget-object v0, v0, Lcom/fusepowered/ac/b;->j:Lcom/fusepowered/ac/n$e;

    iget-object v0, v0, Lcom/fusepowered/ac/n$e;->n:Lcom/fusepowered/ac/n$ab;

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/n$ab;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$y;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/fusepowered/ac/n$y;->h:Lcom/fusepowered/ac/n$z;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/fusepowered/ac/n$y;->h:Lcom/fusepowered/ac/n$z;

    iget-object v1, v1, Lcom/fusepowered/ac/n$z;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v1}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 33
    sget v2, Lcom/fusepowered/ac/a;->Y:I

    if-nez v2, :cond_2

    const-string v2, "request_denied"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 35
    :goto_1
    const-string v2, "request_denied_reason"

    sget v3, Lcom/fusepowered/ac/a;->Y:I

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 36
    const-string v2, "request"

    iget-object v3, v0, Lcom/fusepowered/ac/n$y;->h:Lcom/fusepowered/ac/n$z;

    iget-object v3, v3, Lcom/fusepowered/ac/n$z;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 37
    sget-object v1, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "Tracking ad request - URL : "

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v1

    iget-object v0, v0, Lcom/fusepowered/ac/n$y;->h:Lcom/fusepowered/ac/n$z;

    iget-object v0, v0, Lcom/fusepowered/ac/n$z;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    goto :goto_0

    .line 34
    :cond_2
    const-string v2, "request_denied"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 80
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 83
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {p3}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 86
    :cond_2
    invoke-static {}, Lcom/fusepowered/ac/ab;->b()Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz p4, :cond_3

    const-string v1, "asi"

    iget-object v2, p4, Lcom/fusepowered/ac/AdColonyAd;->l:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_3
    const-string v1, "sid"

    iget-object v2, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->e:Lcom/fusepowered/ac/v;

    iget-object v2, v2, Lcom/fusepowered/ac/v;->i:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "guid"

    invoke-virtual {p3, v1, v0}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "guid_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DUBu6wJ27y6xs7VWmNDw67DD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/ac/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/fusepowered/ac/u$a;

    invoke-direct {v0}, Lcom/fusepowered/ac/u$a;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    .line 94
    iput-object p2, v0, Lcom/fusepowered/ac/u$a;->b:Ljava/lang/String;

    .line 95
    sget-object v1, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "EVENT ----------------------------"

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 96
    sget-object v1, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "EVENT - TYPE = "

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 97
    sget-object v1, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "EVENT - URL  = "

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 98
    invoke-virtual {p3}, Lcom/fusepowered/ac/ADCData$g;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fusepowered/ac/u$a;->c:Ljava/lang/String;

    .line 100
    const-string v1, "reward_v4vc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    const-string v1, "v4vc_name"

    invoke-virtual {p3, v1}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fusepowered/ac/u$a;->d:Ljava/lang/String;

    .line 103
    const-string v1, "v4vc_amount"

    invoke-virtual {p3, v1}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/fusepowered/ac/u$a;->h:I

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iput-boolean v3, p0, Lcom/fusepowered/ac/u;->e:Z

    .line 109
    sput-boolean v3, Lcom/fusepowered/ac/a;->r:Z

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 114
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 118
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    new-instance v2, Lcom/fusepowered/ac/u$a;

    invoke-direct {v2}, Lcom/fusepowered/ac/u$a;-><init>()V

    .line 121
    iput-object p1, v2, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    .line 122
    iput-object v0, v2, Lcom/fusepowered/ac/u$a;->b:Ljava/lang/String;

    .line 123
    iput-boolean v3, v2, Lcom/fusepowered/ac/u$a;->k:Z

    .line 124
    iget-object v0, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 127
    :cond_2
    iput-boolean v3, p0, Lcom/fusepowered/ac/u;->e:Z

    .line 128
    sput-boolean v3, Lcom/fusepowered/ac/a;->r:Z

    goto :goto_0
.end method

.method b()V
    .locals 6

    .prologue
    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->r:Z

    .line 171
    new-instance v0, Lcom/fusepowered/ac/f;

    const-string v1, "tracking_info.txt"

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fusepowered/ac/k;->c(Lcom/fusepowered/ac/f;)Lcom/fusepowered/ac/ADCData$c;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/fusepowered/ac/ADCData$c;->i()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 177
    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/ADCData$c;->b(I)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v2

    .line 178
    new-instance v3, Lcom/fusepowered/ac/u$a;

    invoke-direct {v3}, Lcom/fusepowered/ac/u$a;-><init>()V

    .line 179
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    .line 180
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/ac/u$a;->b:Ljava/lang/String;

    .line 181
    const-string v4, "payload"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/ac/u$a;->c:Ljava/lang/String;

    .line 182
    const-string v4, "attempts"

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/fusepowered/ac/u$a;->f:I

    .line 183
    const-string v4, "third_party"

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/fusepowered/ac/u$a;->k:Z

    .line 185
    iget-object v4, v3, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    const-string v5, "reward_v4vc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    :cond_0
    const-string v4, "v4vc_name"

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/ac/u$a;->d:Ljava/lang/String;

    .line 188
    const-string v4, "v4vc_amount"

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/fusepowered/ac/u$a;->h:I

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_2
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Loaded "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(I)Lcom/fusepowered/ac/l;

    move-result-object v0

    const-string v1, " events"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 194
    return-void
.end method

.method b(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/fusepowered/ac/u;->a(Ljava/lang/String;Lcom/fusepowered/ac/ADCData$g;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 59
    return-void
.end method

.method c()V
    .locals 6

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fusepowered/ac/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v0, p0, Lcom/fusepowered/ac/u;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v0, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    new-instance v2, Lcom/fusepowered/ac/ADCData$c;

    invoke-direct {v2}, Lcom/fusepowered/ac/ADCData$c;-><init>()V

    .line 202
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ac/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/fusepowered/ac/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/u$a;

    .line 205
    iget-boolean v3, v0, Lcom/fusepowered/ac/u$a;->i:Z

    if-nez v3, :cond_3

    .line 207
    iget-object v3, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v3, Lcom/fusepowered/ac/ADCData$g;

    invoke-direct {v3}, Lcom/fusepowered/ac/ADCData$g;-><init>()V

    .line 210
    const-string v4, "type"

    iget-object v5, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "url"

    iget-object v5, v0, Lcom/fusepowered/ac/u$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v4, v0, Lcom/fusepowered/ac/u$a;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "payload"

    iget-object v5, v0, Lcom/fusepowered/ac/u$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    const-string v4, "attempts"

    iget v5, v0, Lcom/fusepowered/ac/u$a;->f:I

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 214
    iget-object v4, v0, Lcom/fusepowered/ac/u$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 216
    const-string v4, "v4vc_name"

    iget-object v5, v0, Lcom/fusepowered/ac/u$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v4, "v4vc_amount"

    iget v5, v0, Lcom/fusepowered/ac/u$a;->h:I

    invoke-virtual {v3, v4, v5}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;I)V

    .line 219
    :cond_1
    iget-boolean v0, v0, Lcom/fusepowered/ac/u$a;->k:Z

    if-eqz v0, :cond_2

    const-string v0, "third_party"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;Z)V

    .line 220
    :cond_2
    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/ADCData$c;->a(Lcom/fusepowered/ac/ADCData$i;)Lcom/fusepowered/ac/ADCData$c;

    .line 202
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/fusepowered/ac/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "Saving tracking_info ("

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(I)Lcom/fusepowered/ac/l;

    move-result-object v0

    const-string v1, " events)"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 226
    new-instance v0, Lcom/fusepowered/ac/f;

    const-string v1, "tracking_info.txt"

    invoke-direct {v0, v1}, Lcom/fusepowered/ac/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/fusepowered/ac/k;->a(Lcom/fusepowered/ac/f;Lcom/fusepowered/ac/ADCData$c;)V

    .line 227
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/fusepowered/ac/u;->e:Z

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/ac/u;->e:Z

    .line 234
    invoke-virtual {p0}, Lcom/fusepowered/ac/u;->c()V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/ac/u;->e()V

    .line 237
    return-void
.end method

.method e()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 241
    iget-object v0, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    return-void

    .line 243
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {}, Lcom/fusepowered/ac/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/fusepowered/ac/ab;->c()D

    move-result-wide v2

    .line 248
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/u$a;

    .line 251
    iget-wide v4, v0, Lcom/fusepowered/ac/u$a;->e:D

    cmpg-double v4, v4, v2

    if-gez v4, :cond_6

    iget-boolean v4, v0, Lcom/fusepowered/ac/u$a;->j:Z

    if-nez v4, :cond_6

    .line 253
    iget v4, p0, Lcom/fusepowered/ac/u;->d:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 254
    iget v4, p0, Lcom/fusepowered/ac/u;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fusepowered/ac/u;->d:I

    .line 255
    iput-boolean v7, v0, Lcom/fusepowered/ac/u$a;->j:Z

    .line 257
    iget-object v4, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/fusepowered/ac/a;->V:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/fusepowered/ac/u$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_3
    new-instance v4, Lcom/fusepowered/ac/ADCDownload;

    iget-object v5, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v6, v0, Lcom/fusepowered/ac/u$a;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6, p0}, Lcom/fusepowered/ac/ADCDownload;-><init>(Lcom/fusepowered/ac/d;Ljava/lang/String;Lcom/fusepowered/ac/ADCDownload$Listener;)V

    invoke-virtual {v4, v0}, Lcom/fusepowered/ac/ADCDownload;->a(Ljava/lang/Object;)Lcom/fusepowered/ac/ADCDownload;

    move-result-object v4

    .line 259
    iget-boolean v5, v0, Lcom/fusepowered/ac/u$a;->k:Z

    if-eqz v5, :cond_4

    iput-boolean v7, v4, Lcom/fusepowered/ac/ADCDownload;->h:Z

    .line 260
    :cond_4
    iget-object v5, v0, Lcom/fusepowered/ac/u$a;->c:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 262
    const-string v5, "application/json"

    iget-object v6, v0, Lcom/fusepowered/ac/u$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/fusepowered/ac/ADCDownload;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/ac/ADCDownload;

    .line 265
    :cond_5
    sget-object v5, Lcom/fusepowered/ac/l;->b:Lcom/fusepowered/ac/l;

    const-string v6, "Submitting \'"

    invoke-virtual {v5, v6}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v5

    iget-object v0, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    const-string v5, "\' event."

    invoke-virtual {v0, v5}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 266
    invoke-virtual {v4}, Lcom/fusepowered/ac/ADCDownload;->b()V

    .line 267
    sput-boolean v7, Lcom/fusepowered/ac/a;->r:Z

    .line 248
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public on_download_finished(Lcom/fusepowered/ac/ADCDownload;)V
    .locals 9
    .param p1, "download"    # Lcom/fusepowered/ac/ADCDownload;

    .prologue
    const/16 v1, 0x2710

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 274
    sput-boolean v7, Lcom/fusepowered/ac/a;->r:Z

    .line 275
    iput-boolean v7, p0, Lcom/fusepowered/ac/u;->e:Z

    .line 276
    iget v0, p0, Lcom/fusepowered/ac/u;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fusepowered/ac/u;->d:I

    .line 277
    iget-object v0, p1, Lcom/fusepowered/ac/ADCDownload;->e:Ljava/lang/Object;

    check-cast v0, Lcom/fusepowered/ac/u$a;

    .line 278
    sget-object v2, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v4, "on_download_finished - event.type = "

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    iget-object v4, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 279
    iput-boolean v3, v0, Lcom/fusepowered/ac/u$a;->j:Z

    .line 281
    iget-boolean v2, p1, Lcom/fusepowered/ac/ADCDownload;->i:Z

    .line 282
    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/fusepowered/ac/u$a;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 284
    iget-object v2, p1, Lcom/fusepowered/ac/ADCDownload;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/fusepowered/ac/k;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v4

    .line 285
    if-eqz v4, :cond_8

    .line 287
    const-string v2, "status"

    invoke-virtual {v4, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 288
    if-eqz v2, :cond_0

    .line 290
    iget-object v5, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    const-string v6, "reward_v4vc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    const-string v5, "v4vc_status"

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 294
    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 298
    new-instance v5, Lcom/fusepowered/ac/u$a;

    invoke-direct {v5}, Lcom/fusepowered/ac/u$a;-><init>()V

    .line 299
    const-string v6, "v4vc_callback"

    iput-object v6, v5, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    .line 300
    iput-object v4, v5, Lcom/fusepowered/ac/u$a;->b:Ljava/lang/String;

    .line 301
    iget-object v4, v0, Lcom/fusepowered/ac/u$a;->d:Ljava/lang/String;

    iput-object v4, v5, Lcom/fusepowered/ac/u$a;->d:Ljava/lang/String;

    .line 302
    iget v4, v0, Lcom/fusepowered/ac/u$a;->h:I

    iput v4, v5, Lcom/fusepowered/ac/u$a;->h:I

    .line 303
    iget-object v4, p0, Lcom/fusepowered/ac/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    iget-object v4, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    sget-object v4, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v5, "v4vc_callback response:"

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    move-result-object v4

    iget-object v5, p1, Lcom/fusepowered/ac/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 329
    iget-object v4, p1, Lcom/fusepowered/ac/ADCDownload;->n:Ljava/lang/String;

    const-string v5, "vc_success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_9

    .line 331
    sget-object v4, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    iput-boolean v7, v4, Lcom/fusepowered/ac/ADCVideo;->o:Z

    .line 332
    :cond_1
    sget-object v4, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v5, "v4vc_callback success"

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 333
    iget-object v4, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v5, v0, Lcom/fusepowered/ac/u$a;->d:Ljava/lang/String;

    iget v6, v0, Lcom/fusepowered/ac/u$a;->h:I

    invoke-virtual {v4, v7, v5, v6}, Lcom/fusepowered/ac/d;->a(ZLjava/lang/String;I)V

    .line 348
    :cond_2
    :goto_1
    if-eqz v2, :cond_c

    .line 350
    sget-object v1, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v2, "Event submission SUCCESS for type: "

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v1

    iget-object v2, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 351
    iput-boolean v7, v0, Lcom/fusepowered/ac/u$a;->i:Z

    .line 376
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->e:Lcom/fusepowered/ac/v;

    iget-boolean v0, v0, Lcom/fusepowered/ac/v;->b:Z

    if-nez v0, :cond_4

    .line 378
    invoke-virtual {p0}, Lcom/fusepowered/ac/u;->c()V

    .line 380
    :cond_4
    return-void

    .line 308
    :cond_5
    sget-object v4, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/fusepowered/ac/a;->I:Lcom/fusepowered/ac/ADCVideo;

    iput-boolean v7, v4, Lcom/fusepowered/ac/ADCVideo;->o:Z

    .line 309
    :cond_6
    sget-object v4, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v5, "Client-side V4VC success"

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    goto :goto_0

    .line 315
    :cond_7
    sget-object v4, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v5, "Client-side V4VC failure"

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    goto :goto_0

    :cond_8
    move v2, v3

    .line 322
    goto :goto_0

    .line 335
    :cond_9
    iget-object v4, p1, Lcom/fusepowered/ac/ADCDownload;->n:Ljava/lang/String;

    const-string v5, "vc_decline"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_a

    iget-object v4, p1, Lcom/fusepowered/ac/ADCDownload;->n:Ljava/lang/String;

    const-string v5, "vc_noreward"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_b

    .line 337
    :cond_a
    sget-object v4, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v5, "Server-side V4VC failure: "

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v4

    iget-object v5, p1, Lcom/fusepowered/ac/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 338
    sget-object v4, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v5, "v4vc_callback declined"

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 339
    iget-object v4, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    const-string v5, ""

    invoke-virtual {v4, v3, v5, v3}, Lcom/fusepowered/ac/d;->a(ZLjava/lang/String;I)V

    goto :goto_1

    .line 343
    :cond_b
    sget-object v2, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v4, "Server-side V4VC failure: "

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    iget-object v4, p1, Lcom/fusepowered/ac/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    move v2, v3

    .line 344
    goto :goto_1

    .line 355
    :cond_c
    sget-object v2, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v4, "Event submission FAILED for type: "

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    iget-object v4, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    const-string v4, " on try "

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    iget v4, v0, Lcom/fusepowered/ac/u$a;->f:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/fusepowered/ac/l;->b(I)Lcom/fusepowered/ac/l;

    .line 356
    iget v2, v0, Lcom/fusepowered/ac/u$a;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/fusepowered/ac/u$a;->f:I

    .line 358
    iget v2, v0, Lcom/fusepowered/ac/u$a;->f:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_d

    .line 360
    sget-object v1, Lcom/fusepowered/ac/l;->d:Lcom/fusepowered/ac/l;

    const-string v2, "Discarding event after 24 attempts to report."

    invoke-virtual {v1, v2}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 361
    iput-boolean v7, v0, Lcom/fusepowered/ac/u$a;->i:Z

    .line 363
    iget-object v0, v0, Lcom/fusepowered/ac/u$a;->a:Ljava/lang/String;

    const-string v1, "v4vc_callback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fusepowered/ac/u;->a:Lcom/fusepowered/ac/d;

    const-string v1, ""

    invoke-virtual {v0, v3, v1, v3}, Lcom/fusepowered/ac/d;->a(ZLjava/lang/String;I)V

    goto/16 :goto_2

    .line 367
    :cond_d
    const/16 v2, 0x14

    .line 368
    iget v3, v0, Lcom/fusepowered/ac/u$a;->g:I

    if-lez v3, :cond_e

    iget v2, v0, Lcom/fusepowered/ac/u$a;->g:I

    mul-int/lit8 v2, v2, 0x3

    .line 369
    :cond_e
    if-le v2, v1, :cond_f

    .line 370
    :goto_3
    sget-object v2, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v3, "Retrying in "

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fusepowered/ac/l;->a(I)Lcom/fusepowered/ac/l;

    move-result-object v2

    const-string v3, " seconds (attempt "

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v2

    iget v3, v0, Lcom/fusepowered/ac/u$a;->f:I

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/l;->a(I)Lcom/fusepowered/ac/l;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 371
    iput v1, v0, Lcom/fusepowered/ac/u$a;->g:I

    .line 372
    invoke-static {}, Lcom/fusepowered/ac/ab;->c()D

    move-result-wide v2

    int-to-double v4, v1

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/fusepowered/ac/u$a;->e:D

    goto/16 :goto_2

    :cond_f
    move v1, v2

    goto :goto_3
.end method
