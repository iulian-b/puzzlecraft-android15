.class Lcom/fusepowered/ac/n$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ac/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fusepowered/ac/n$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method a(I)Lcom/fusepowered/ac/n$a;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/n$a;

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/fusepowered/ac/n$a;
    .locals 3

    .prologue
    .line 938
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/n$a;

    .line 941
    iget-object v2, v0, Lcom/fusepowered/ac/n$a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    :goto_1
    return-object v0

    .line 938
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 943
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lcom/fusepowered/ac/n$a;)V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/fusepowered/ac/ADCData$c;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 917
    if-nez p1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 919
    :goto_1
    invoke-virtual {p1}, Lcom/fusepowered/ac/ADCData$c;->i()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 921
    new-instance v2, Lcom/fusepowered/ac/n$a;

    invoke-direct {v2}, Lcom/fusepowered/ac/n$a;-><init>()V

    .line 922
    invoke-virtual {p1, v0}, Lcom/fusepowered/ac/ADCData$c;->b(I)Lcom/fusepowered/ac/ADCData$g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/ac/n$a;->a(Lcom/fusepowered/ac/ADCData$g;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 923
    iget-object v3, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 925
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method b()Lcom/fusepowered/ac/n$a;
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/n$a;

    return-object v0
.end method

.method b(I)Lcom/fusepowered/ac/n$a;
    .locals 3

    .prologue
    .line 947
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 949
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/n$a;

    .line 950
    iget-object v1, v0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-boolean v1, v1, Lcom/fusepowered/ac/n$n;->a:Z

    if-eqz v1, :cond_1

    .line 958
    :cond_0
    :goto_1
    return-object v0

    .line 947
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 953
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 955
    iget-object v0, p0, Lcom/fusepowered/ac/n$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/ac/n$a;

    .line 956
    iget-object v2, v0, Lcom/fusepowered/ac/n$a;->w:Lcom/fusepowered/ac/n$n;

    iget-boolean v2, v2, Lcom/fusepowered/ac/n$n;->a:Z

    if-nez v2, :cond_0

    .line 953
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 958
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
