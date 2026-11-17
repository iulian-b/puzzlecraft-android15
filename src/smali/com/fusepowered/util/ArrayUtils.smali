.class public Lcom/fusepowered/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toIntArray([Ljava/lang/String;)[I
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 8
    array-length v0, p0

    .line 9
    .local v0, "count":I
    new-array v2, v0, [I

    .line 10
    .local v2, "intValues":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 10
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    return-object v2
.end method
