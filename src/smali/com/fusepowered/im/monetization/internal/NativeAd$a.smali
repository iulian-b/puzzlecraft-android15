.class final enum Lcom/fusepowered/im/monetization/internal/NativeAd$a;
.super Ljava/lang/Enum;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/im/monetization/internal/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/im/monetization/internal/NativeAd$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

.field public static final enum b:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

.field public static final enum c:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

.field public static final enum d:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

.field public static final enum e:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

.field public static final enum f:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

.field private static final synthetic g:[Lcom/fusepowered/im/monetization/internal/NativeAd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/im/monetization/internal/NativeAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->a:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    new-instance v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/im/monetization/internal/NativeAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->b:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    new-instance v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    const-string v1, "READY"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/im/monetization/internal/NativeAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->c:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    new-instance v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    const-string v1, "ATTACHED"

    invoke-direct {v0, v1, v6}, Lcom/fusepowered/im/monetization/internal/NativeAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->d:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    new-instance v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lcom/fusepowered/im/monetization/internal/NativeAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->e:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    new-instance v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/im/monetization/internal/NativeAd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->f:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    sget-object v1, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->a:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->b:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->c:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->d:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->e:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->f:Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->g:[Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/im/monetization/internal/NativeAd$a;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/im/monetization/internal/NativeAd$a;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/fusepowered/im/monetization/internal/NativeAd$a;->g:[Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    invoke-virtual {v0}, [Lcom/fusepowered/im/monetization/internal/NativeAd$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/im/monetization/internal/NativeAd$a;

    return-object v0
.end method
