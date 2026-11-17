.class public Lcom/fusepowered/as/utils/VASTUtils;
.super Ljava/lang/Object;
.source "VASTUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMillisecondsBeforeClosable(Lcom/fusepowered/as/model/ad/VASTProviderAd;I)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getCloseOffset()Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 78
    const-string v2, "^[0-9]?([1-9]|[0-9](\\.\\d+))%$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const-string v0, "%"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 81
    int-to-float v1, p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    const-string v2, "^((2[0-3]|[0-1]\\d):)?[0-5]\\d:[0-5]\\d(\\.\\d+)?$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v0, Lcom/fusepowered/as/utils/TimeSpan;

    invoke-direct {v0, v1}, Lcom/fusepowered/as/utils/TimeSpan;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lcom/fusepowered/as/utils/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOrElse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method public static normalizeSequenceEnabled(Ljava/util/TreeSet;Ljava/lang/Class;)Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<+",
            "Lcom/fusepowered/as/model/vast/SequenceEnabled;",
            ">;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/fusepowered/as/model/vast/SequenceEnabled;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v1, Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/SequenceEnabled;

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/fusepowered/as/model/vast/SequenceEnabled;->getSequencePosition()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/fusepowered/as/model/vast/SequenceEnabled;->getSequencePosition()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/fusepowered/as/model/vast/SequenceEnabled;->getSequencePosition()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 38
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 40
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int v1, v0

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/SequenceEnabled;

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v3, v1, :cond_2

    .line 46
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_3
    return-object v2

    .line 52
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/model/vast/SequenceEnabled;

    .line 53
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static safeToInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 98
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method
