.class Lcom/fusepowered/vast/util/DefaultMediaPicker$AreaComparator;
.super Ljava/lang/Object;
.source "DefaultMediaPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/vast/util/DefaultMediaPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fusepowered/vast/model/VASTMediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/vast/util/DefaultMediaPicker;


# direct methods
.method private constructor <init>(Lcom/fusepowered/vast/util/DefaultMediaPicker;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker$AreaComparator;->this$0:Lcom/fusepowered/vast/util/DefaultMediaPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/vast/util/DefaultMediaPicker;Lcom/fusepowered/vast/util/DefaultMediaPicker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/vast/util/DefaultMediaPicker;
    .param p2, "x1"    # Lcom/fusepowered/vast/util/DefaultMediaPicker$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/fusepowered/vast/util/DefaultMediaPicker$AreaComparator;-><init>(Lcom/fusepowered/vast/util/DefaultMediaPicker;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fusepowered/vast/model/VASTMediaFile;Lcom/fusepowered/vast/model/VASTMediaFile;)I
    .locals 6
    .param p1, "obj1"    # Lcom/fusepowered/vast/model/VASTMediaFile;
    .param p2, "obj2"    # Lcom/fusepowered/vast/model/VASTMediaFile;

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/fusepowered/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/fusepowered/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    mul-int v0, v4, v5

    .line 152
    .local v0, "obj1Area":I
    invoke-virtual {p2}, Lcom/fusepowered/vast/model/VASTMediaFile;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {p2}, Lcom/fusepowered/vast/model/VASTMediaFile;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    mul-int v2, v4, v5

    .line 155
    .local v2, "obj2Area":I
    iget-object v4, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker$AreaComparator;->this$0:Lcom/fusepowered/vast/util/DefaultMediaPicker;

    invoke-static {v4}, Lcom/fusepowered/vast/util/DefaultMediaPicker;->access$100(Lcom/fusepowered/vast/util/DefaultMediaPicker;)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 156
    .local v1, "obj1Diff":I
    iget-object v4, p0, Lcom/fusepowered/vast/util/DefaultMediaPicker$AreaComparator;->this$0:Lcom/fusepowered/vast/util/DefaultMediaPicker;

    invoke-static {v4}, Lcom/fusepowered/vast/util/DefaultMediaPicker;->access$100(Lcom/fusepowered/vast/util/DefaultMediaPicker;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 160
    .local v3, "obj2Diff":I
    if-ge v1, v3, :cond_0

    .line 161
    const/4 v4, -0x1

    .line 165
    :goto_0
    return v4

    .line 162
    :cond_0
    if-le v1, v3, :cond_1

    .line 163
    const/4 v4, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 146
    check-cast p1, Lcom/fusepowered/vast/model/VASTMediaFile;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/fusepowered/vast/model/VASTMediaFile;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/fusepowered/vast/util/DefaultMediaPicker$AreaComparator;->compare(Lcom/fusepowered/vast/model/VASTMediaFile;Lcom/fusepowered/vast/model/VASTMediaFile;)I

    move-result v0

    return v0
.end method
