.class final enum Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
.super Ljava/lang/Enum;
.source "NativeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/nativeads/NativeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum CALL_TO_ACTION:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum CLICK_DESTINATION:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum CLICK_TRACKER:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum FALLBACK:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum ICON_IMAGE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum IMPRESSION_TRACKER:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum MAIN_IMAGE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum STAR_RATING:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum TEXT:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field public static final enum TITLE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

.field static final requiredKeys:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/fusepowered/m2/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final required:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 41
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "IMPRESSION_TRACKER"

    const-string v6, "imptracker"

    invoke-direct {v4, v5, v8, v6, v9}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->IMPRESSION_TRACKER:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 42
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "CLICK_TRACKER"

    const-string v6, "clktracker"

    invoke-direct {v4, v5, v9, v6, v9}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->CLICK_TRACKER:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 44
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "TITLE"

    const-string v6, "title"

    invoke-direct {v4, v5, v10, v6, v8}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->TITLE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 45
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "TEXT"

    const-string v6, "text"

    invoke-direct {v4, v5, v11, v6, v8}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->TEXT:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 46
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "MAIN_IMAGE"

    const-string v6, "mainimage"

    invoke-direct {v4, v5, v12, v6, v8}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->MAIN_IMAGE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 47
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "ICON_IMAGE"

    const/4 v6, 0x5

    const-string v7, "iconimage"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->ICON_IMAGE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 49
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "CLICK_DESTINATION"

    const/4 v6, 0x6

    const-string v7, "clk"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->CLICK_DESTINATION:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 50
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "FALLBACK"

    const/4 v6, 0x7

    const-string v7, "fallback"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->FALLBACK:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 51
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "CALL_TO_ACTION"

    const/16 v6, 0x8

    const-string v7, "ctatext"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->CALL_TO_ACTION:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 52
    new-instance v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    const-string v5, "STAR_RATING"

    const/16 v6, 0x9

    const-string v7, "starrating"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->STAR_RATING:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 40
    const/16 v4, 0xa

    new-array v4, v4, [Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    sget-object v5, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->IMPRESSION_TRACKER:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v5, v4, v8

    sget-object v5, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->CLICK_TRACKER:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v5, v4, v9

    sget-object v5, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->TITLE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v5, v4, v10

    sget-object v5, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->TEXT:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v5, v4, v11

    sget-object v5, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->MAIN_IMAGE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->ICON_IMAGE:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->CLICK_DESTINATION:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->FALLBACK:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->CALL_TO_ACTION:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    sget-object v6, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->STAR_RATING:Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    aput-object v6, v4, v5

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->$VALUES:[Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    .line 75
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->requiredKeys:Ljava/util/Set;

    .line 77
    invoke-static {}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->values()[Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    move-result-object v0

    .local v0, "arr$":[Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 78
    .local v3, "parameter":Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    iget-boolean v4, v3, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->required:Z

    if-eqz v4, :cond_0

    .line 79
    sget-object v4, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->requiredKeys:Ljava/util/Set;

    iget-object v5, v3, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v3    # "parameter":Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "required"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    .line 59
    iput-boolean p4, p0, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->required:Z

    .line 60
    return-void
.end method

.method static from(Ljava/lang/String;)Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->values()[Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    move-result-object v0

    .local v0, "arr$":[Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 65
    .local v3, "parameter":Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    iget-object v4, v3, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    .end local v3    # "parameter":Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    :goto_1
    return-object v3

    .line 64
    .restart local v3    # "parameter":Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "parameter":Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->$VALUES:[Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    invoke-virtual {v0}, [Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/m2/nativeads/NativeResponse$Parameter;

    return-object v0
.end method
