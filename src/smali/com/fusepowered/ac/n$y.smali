.class Lcom/fusepowered/ac/n$y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "y"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Z

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/fusepowered/ac/n$z;

.field i:Lcom/fusepowered/ac/n$d;

.field j:Lcom/fusepowered/ac/n$aa;

.field k:Lcom/fusepowered/ac/ag;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(II)I
    .locals 1

    .prologue
    .line 616
    if-gtz p2, :cond_1

    const/4 p2, 0x0

    .line 620
    :cond_0
    :goto_0
    return p2

    .line 618
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 620
    if-ge p1, p2, :cond_2

    :goto_1
    move p2, p1

    goto :goto_0

    :cond_2
    move p1, p2

    goto :goto_1
.end method

.method declared-synchronized a(Lcom/fusepowered/ac/n$a;)I
    .locals 10

    .prologue
    .line 638
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/t;->b(Ljava/lang/String;)I

    move-result v1

    .line 640
    const/4 v0, -0x1

    .line 643
    iget-object v2, p1, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    iget v2, v2, Lcom/fusepowered/ac/n$l;->g:I

    .line 644
    if-eqz v2, :cond_1

    sget-wide v4, Lcom/fusepowered/ac/a;->X:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/fusepowered/ac/a;->X:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->c()V

    .line 647
    const/4 v0, 0x7

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 648
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "The volatile expiration for this ad has been hit."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 741
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 652
    :cond_1
    :try_start_1
    iget-object v2, p1, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    iget v2, v2, Lcom/fusepowered/ac/n$l;->h:I

    .line 653
    if-lez v2, :cond_2

    sget-object v3, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v3, v3, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    iget v4, p1, Lcom/fusepowered/ac/n$a;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/fusepowered/ac/a;->X:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-double v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/fusepowered/ac/t;->a(ID)I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v0, v3}, Lcom/fusepowered/ac/n$y;->a(II)I

    move-result v0

    .line 654
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 656
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->c()V

    .line 657
    const/4 v0, 0x7

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 658
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad is not ready to be played due to the volatile play cap."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 662
    :cond_3
    iget v2, p0, Lcom/fusepowered/ac/n$y;->c:I

    .line 663
    if-lez v2, :cond_4

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/fusepowered/ac/n$y;->a(II)I

    move-result v0

    .line 664
    :cond_4
    if-nez v0, :cond_5

    .line 666
    const/4 v0, 0x5

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 667
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready to be played due to the daily play cap for zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 670
    :cond_5
    iget v2, p0, Lcom/fusepowered/ac/n$y;->d:I

    .line 671
    if-lez v2, :cond_6

    sget-object v3, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v3, v3, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    iget-object v4, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fusepowered/ac/t;->a(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/fusepowered/ac/n$y;->a(II)I

    move-result v0

    .line 672
    :cond_6
    if-nez v0, :cond_7

    .line 674
    const/4 v0, 0x3

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 675
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready to be played due to the session play cap for zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 679
    :cond_7
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget-boolean v2, v2, Lcom/fusepowered/ac/n$aa;->a:Z

    if-eqz v2, :cond_b

    .line 681
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget-object v2, v2, Lcom/fusepowered/ac/n$aa;->b:Lcom/fusepowered/ac/n$w;

    iget v2, v2, Lcom/fusepowered/ac/n$w;->a:I

    .line 682
    if-lez v2, :cond_8

    sub-int v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/n$y;->a(II)I

    move-result v0

    .line 683
    :cond_8
    if-nez v0, :cond_9

    .line 685
    const/4 v0, 0x4

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 686
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad is not ready to be played due to the V4VC daily play cap."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 689
    :cond_9
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget-object v1, v1, Lcom/fusepowered/ac/n$aa;->b:Lcom/fusepowered/ac/n$w;

    iget v1, v1, Lcom/fusepowered/ac/n$w;->c:I

    .line 690
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    iget-object v2, v2, Lcom/fusepowered/ac/n$aa;->b:Lcom/fusepowered/ac/n$w;

    iget v2, v2, Lcom/fusepowered/ac/n$w;->b:I

    .line 691
    if-lez v2, :cond_a

    sget-object v3, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v3, v3, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    iget-object v4, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    int-to-double v6, v1

    invoke-virtual {v3, v4, v6, v7}, Lcom/fusepowered/ac/t;->a(Ljava/lang/String;D)I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/n$y;->a(II)I

    move-result v0

    .line 692
    :cond_a
    if-nez v0, :cond_b

    .line 694
    const/4 v0, 0x4

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 695
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad is not ready to be played due to the V4VC custom play cap."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 700
    :cond_b
    iget v1, p1, Lcom/fusepowered/ac/n$a;->d:I

    .line 701
    iget-object v2, p1, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    iget v2, v2, Lcom/fusepowered/ac/n$l;->a:I

    .line 702
    if-lez v2, :cond_c

    sget-object v3, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v3, v3, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v3, v1}, Lcom/fusepowered/ac/t;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/fusepowered/ac/n$y;->a(II)I

    move-result v0

    .line 703
    :cond_c
    if-nez v0, :cond_d

    .line 705
    const/4 v0, 0x7

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 706
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->c()V

    .line 707
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad is not ready to be played due to the daily play cap."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 710
    :cond_d
    iget-object v2, p1, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    iget v2, v2, Lcom/fusepowered/ac/n$l;->f:I

    .line 711
    if-lez v2, :cond_e

    sget-object v3, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v3, v3, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v3, v1}, Lcom/fusepowered/ac/t;->b(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/fusepowered/ac/n$y;->a(II)I

    move-result v0

    .line 712
    :cond_e
    if-nez v0, :cond_f

    .line 714
    const/4 v0, 0x7

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 715
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->c()V

    .line 716
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad is not ready to be played due to the weekly play cap."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 719
    :cond_f
    iget-object v2, p1, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    iget v2, v2, Lcom/fusepowered/ac/n$l;->e:I

    .line 720
    if-lez v2, :cond_10

    sget-object v3, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v3, v3, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v3, v1}, Lcom/fusepowered/ac/t;->c(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/fusepowered/ac/n$y;->a(II)I

    move-result v0

    .line 721
    :cond_10
    if-nez v0, :cond_11

    .line 723
    const/4 v0, 0x7

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 724
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->c()V

    .line 725
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad is not ready to be played due to the monthly play cap."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 728
    :cond_11
    iget-object v2, p1, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    iget v2, v2, Lcom/fusepowered/ac/n$l;->d:I

    .line 729
    if-lez v2, :cond_12

    sget-object v3, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v3, v3, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    invoke-virtual {v3, v1}, Lcom/fusepowered/ac/t;->d(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/fusepowered/ac/n$y;->a(II)I

    move-result v0

    .line 730
    :cond_12
    if-nez v0, :cond_13

    .line 732
    const/4 v0, 0x7

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 733
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->c()V

    .line 734
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad is not ready to be played due to the half-year play cap."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->c(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 737
    :cond_13
    iget-object v2, p1, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    iget v2, v2, Lcom/fusepowered/ac/n$l;->c:I

    .line 738
    iget-object v3, p1, Lcom/fusepowered/ac/n$a;->p:Lcom/fusepowered/ac/n$l;

    iget v3, v3, Lcom/fusepowered/ac/n$l;->b:I

    .line 739
    if-lez v3, :cond_0

    sget-object v4, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v4, v4, Lcom/fusepowered/ac/d;->h:Lcom/fusepowered/ac/t;

    int-to-double v6, v2

    invoke-virtual {v4, v1, v6, v7}, Lcom/fusepowered/ac/t;->a(ID)I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/n$y;->a(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto/16 :goto_0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()Z
    .locals 2

    .prologue
    .line 529
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/ac/n$y;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method a(Lcom/fusepowered/ac/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 850
    if-nez p1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return v0

    .line 851
    :cond_1
    const-string v2, "uuid"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    .line 854
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ac/n$y;->e:Z

    .line 855
    const-string v2, "active"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fusepowered/ac/n$y;->f:Z

    .line 856
    iget-boolean v2, p0, Lcom/fusepowered/ac/n$y;->e:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/fusepowered/ac/n$y;->f:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 858
    :cond_3
    const-string v2, "play_interval"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fusepowered/ac/n$y;->b:I

    .line 859
    const-string v2, "daily_play_cap"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fusepowered/ac/n$y;->c:I

    .line 860
    const-string v2, "session_play_cap"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->g(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fusepowered/ac/n$y;->d:I

    .line 862
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    .line 863
    const-string v2, "play_order"

    invoke-virtual {p1, v2}, Lcom/fusepowered/ac/ADCData$g;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 865
    new-instance v2, Lcom/fusepowered/ac/n$z;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$z;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$y;->h:Lcom/fusepowered/ac/n$z;

    .line 866
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->h:Lcom/fusepowered/ac/n$z;

    const-string v3, "tracking"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$z;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    new-instance v2, Lcom/fusepowered/ac/n$d;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$d;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    .line 870
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    const-string v3, "ads"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->c(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$d;->a(Lcom/fusepowered/ac/ADCData$c;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    new-instance v2, Lcom/fusepowered/ac/n$aa;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$aa;-><init>()V

    iput-object v2, p0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    .line 873
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->j:Lcom/fusepowered/ac/n$aa;

    const-string v3, "v4vc"

    invoke-virtual {p1, v3}, Lcom/fusepowered/ac/ADCData$g;->b(Ljava/lang/String;)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$aa;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->g:Lcom/fusepowered/ac/ah;

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/fusepowered/ac/ah;->a(Ljava/lang/String;)Lcom/fusepowered/ac/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    move v0, v1

    .line 879
    goto/16 :goto_0
.end method

.method a(Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 572
    if-nez p1, :cond_0

    invoke-static {}, Lcom/fusepowered/ac/a;->h()V

    .line 574
    :cond_0
    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->f:Z

    if-nez v1, :cond_2

    .line 594
    :cond_1
    :goto_0
    return v0

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->a()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 579
    const/4 v2, 0x0

    move v3, v0

    .line 580
    :goto_1
    if-ge v3, v4, :cond_4

    .line 582
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->i()Lcom/fusepowered/ac/n$a;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_1

    .line 584
    invoke-virtual {v1}, Lcom/fusepowered/ac/n$a;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 592
    :goto_2
    if-eqz v1, :cond_1

    .line 594
    invoke-virtual {p0, v1}, Lcom/fusepowered/ac/n$y;->a(Lcom/fusepowered/ac/n$a;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 589
    :cond_3
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->k()V

    .line 580
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method a(ZZ)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 533
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/n$y;->a(Z)Z

    move-result v0

    .line 567
    :cond_0
    :goto_0
    return v0

    .line 535
    :cond_1
    iget-boolean v2, p0, Lcom/fusepowered/ac/n$y;->e:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/fusepowered/ac/n$y;->f:Z

    if-nez v2, :cond_3

    .line 537
    :cond_2
    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 538
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready to be played, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled or inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 541
    :cond_3
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v2}, Lcom/fusepowered/ac/n$d;->a()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 543
    :cond_4
    const/4 v0, 0x5

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 544
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready to be played, as AdColony currently has no videos available to be played in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 547
    :cond_5
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 548
    const/4 v3, 0x0

    move v4, v1

    .line 549
    :goto_1
    if-ge v4, v5, :cond_9

    .line 551
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->i()Lcom/fusepowered/ac/n$a;

    move-result-object v2

    .line 552
    if-nez v2, :cond_6

    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad is not ready to be played due to an unknown error."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 553
    :cond_6
    invoke-virtual {v2}, Lcom/fusepowered/ac/n$a;->a()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 561
    :goto_2
    if-nez v2, :cond_8

    .line 563
    const/4 v0, 0x6

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 564
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    const-string v1, "Ad is not ready to be played as required assets are still downloading or otherwise missing."

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 558
    :cond_7
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->k()V

    .line 549
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 567
    :cond_8
    invoke-virtual {p0, v2}, Lcom/fusepowered/ac/n$y;->a(Lcom/fusepowered/ac/n$a;)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move-object v2, v3

    goto :goto_2
.end method

.method b()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 599
    iget v2, p0, Lcom/fusepowered/ac/n$y;->b:I

    if-gt v2, v1, :cond_1

    .line 611
    :cond_0
    :goto_0
    return v0

    .line 604
    :cond_1
    sget-object v2, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v2, v2, Lcom/fusepowered/ac/d;->g:Lcom/fusepowered/ac/ah;

    iput-boolean v1, v2, Lcom/fusepowered/ac/ah;->b:Z

    .line 605
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v3, v2, Lcom/fusepowered/ac/ag;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/fusepowered/ac/ag;->b:I

    if-eqz v3, :cond_0

    .line 610
    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v2, v2, Lcom/fusepowered/ac/ag;->b:I

    iget v3, p0, Lcom/fusepowered/ac/n$y;->b:I

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iput v0, v2, Lcom/fusepowered/ac/ag;->b:I

    :cond_2
    move v0, v1

    .line 611
    goto :goto_0
.end method

.method b(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 751
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->f()Z

    move-result v0

    .line 769
    :cond_0
    :goto_0
    return v0

    .line 752
    :cond_1
    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->e:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->f:Z

    if-nez v1, :cond_3

    .line 754
    :cond_2
    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 755
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled or inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 757
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->a()I

    move-result v1

    if-nez v1, :cond_4

    .line 759
    const/4 v0, 0x5

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 760
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as there are currently no ads to play in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 762
    :cond_4
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->b()Lcom/fusepowered/ac/n$a;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    iget-boolean v1, v1, Lcom/fusepowered/ac/n$c;->a:Z

    if-eqz v1, :cond_0

    .line 764
    const/16 v0, 0xe

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 765
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is V4VC enabled and must be played using an AdColonyV4VCAd object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 625
    sget-object v0, Lcom/fusepowered/ac/a;->l:Lcom/fusepowered/ac/d;

    iget-object v0, v0, Lcom/fusepowered/ac/d;->b:Lcom/fusepowered/ac/b;

    invoke-virtual {v0}, Lcom/fusepowered/ac/b;->e()V

    .line 626
    return-void
.end method

.method c(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 793
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->h()Z

    move-result v0

    .line 811
    :cond_0
    :goto_0
    return v0

    .line 794
    :cond_1
    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->e:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->f:Z

    if-nez v1, :cond_3

    .line 796
    :cond_2
    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 797
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled or inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 799
    :cond_3
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->a()I

    move-result v1

    if-nez v1, :cond_4

    .line 801
    const/4 v0, 0x5

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 802
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as there are currently no ads to play in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 804
    :cond_4
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->b()Lcom/fusepowered/ac/n$a;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    iget-boolean v1, v1, Lcom/fusepowered/ac/n$c;->a:Z

    if-nez v1, :cond_0

    .line 810
    const/16 v0, 0xf

    sput v0, Lcom/fusepowered/ac/a;->Y:I

    .line 811
    sget-object v0, Lcom/fusepowered/ac/l;->c:Lcom/fusepowered/ac/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not V4VC enabled and must be played using an AdColonyVideoAd object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method declared-synchronized d()I
    .locals 1

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/ac/n$y;->i()Lcom/fusepowered/ac/n$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/n$y;->a(Lcom/fusepowered/ac/n$a;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/n$y;->b(Z)Z

    move-result v0

    return v0
.end method

.method f()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 774
    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->f:Z

    if-nez v1, :cond_1

    .line 782
    :cond_0
    :goto_0
    return v0

    .line 775
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->a()I

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->b()Lcom/fusepowered/ac/n$a;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    iget-boolean v1, v1, Lcom/fusepowered/ac/n$c;->a:Z

    if-nez v1, :cond_0

    .line 782
    const/4 v0, 0x1

    goto :goto_0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/n$y;->c(Z)Z

    move-result v0

    return v0
.end method

.method h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 816
    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fusepowered/ac/n$y;->f:Z

    if-nez v1, :cond_1

    .line 824
    :cond_0
    :goto_0
    return v0

    .line 817
    :cond_1
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->a()I

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->b()Lcom/fusepowered/ac/n$a;

    move-result-object v1

    iget-object v1, v1, Lcom/fusepowered/ac/n$a;->s:Lcom/fusepowered/ac/n$c;

    iget-boolean v1, v1, Lcom/fusepowered/ac/n$c;->a:Z

    if-eqz v1, :cond_0

    .line 820
    const/4 v0, 0x1

    goto :goto_0
.end method

.method i()Lcom/fusepowered/ac/n$a;
    .locals 4

    .prologue
    .line 830
    iget-object v0, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    iget-object v0, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v2, v2, Lcom/fusepowered/ac/ag;->c:I

    iget-object v3, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/n$d;->a(Ljava/lang/String;)Lcom/fusepowered/ac/n$a;

    move-result-object v0

    .line 831
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()Lcom/fusepowered/ac/n$a;
    .locals 3

    .prologue
    .line 836
    iget-object v0, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v1, v1, Lcom/fusepowered/ac/ag;->c:I

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/n$d;->b(I)Lcom/fusepowered/ac/n$a;

    move-result-object v0

    .line 837
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()V
    .locals 3

    .prologue
    .line 842
    iget-object v0, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v1, v1, Lcom/fusepowered/ac/ag;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/fusepowered/ac/n$y;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/fusepowered/ac/ag;->c:I

    .line 846
    :cond_0
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/fusepowered/ac/n$y;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/ac/n$y;->f:Z

    if-nez v0, :cond_1

    .line 890
    :cond_0
    return-void

    .line 886
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$d;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/fusepowered/ac/n$y;->i:Lcom/fusepowered/ac/n$d;

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/n$d;->a(I)Lcom/fusepowered/ac/n$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/ac/n$a;->b()V

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
