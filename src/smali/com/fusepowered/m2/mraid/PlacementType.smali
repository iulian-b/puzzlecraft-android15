.class public final enum Lcom/fusepowered/m2/mraid/PlacementType;
.super Ljava/lang/Enum;
.source "PlacementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/mraid/PlacementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/m2/mraid/PlacementType;

.field public static final enum INLINE:Lcom/fusepowered/m2/mraid/PlacementType;

.field public static final enum INTERSTITIAL:Lcom/fusepowered/m2/mraid/PlacementType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/fusepowered/m2/mraid/PlacementType;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/m2/mraid/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mraid/PlacementType;->INLINE:Lcom/fusepowered/m2/mraid/PlacementType;

    .line 7
    new-instance v0, Lcom/fusepowered/m2/mraid/PlacementType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/m2/mraid/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/m2/mraid/PlacementType;->INTERSTITIAL:Lcom/fusepowered/m2/mraid/PlacementType;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/m2/mraid/PlacementType;

    sget-object v1, Lcom/fusepowered/m2/mraid/PlacementType;->INLINE:Lcom/fusepowered/m2/mraid/PlacementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/m2/mraid/PlacementType;->INTERSTITIAL:Lcom/fusepowered/m2/mraid/PlacementType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/m2/mraid/PlacementType;->$VALUES:[Lcom/fusepowered/m2/mraid/PlacementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/mraid/PlacementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/fusepowered/m2/mraid/PlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/mraid/PlacementType;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/m2/mraid/PlacementType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/fusepowered/m2/mraid/PlacementType;->$VALUES:[Lcom/fusepowered/m2/mraid/PlacementType;

    invoke-virtual {v0}, [Lcom/fusepowered/m2/mraid/PlacementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/m2/mraid/PlacementType;

    return-object v0
.end method


# virtual methods
.method toJavascriptString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/fusepowered/m2/mraid/PlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
