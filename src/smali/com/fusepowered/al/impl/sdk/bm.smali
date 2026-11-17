.class final enum Lcom/fusepowered/al/impl/sdk/bm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/fusepowered/al/impl/sdk/bm;

.field public static final enum b:Lcom/fusepowered/al/impl/sdk/bm;

.field private static final synthetic c:[Lcom/fusepowered/al/impl/sdk/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/fusepowered/al/impl/sdk/bm;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/al/impl/sdk/bm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/al/impl/sdk/bm;->a:Lcom/fusepowered/al/impl/sdk/bm;

    new-instance v0, Lcom/fusepowered/al/impl/sdk/bm;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/al/impl/sdk/bm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/al/impl/sdk/bm;->b:Lcom/fusepowered/al/impl/sdk/bm;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/al/impl/sdk/bm;

    sget-object v1, Lcom/fusepowered/al/impl/sdk/bm;->a:Lcom/fusepowered/al/impl/sdk/bm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/al/impl/sdk/bm;->b:Lcom/fusepowered/al/impl/sdk/bm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/al/impl/sdk/bm;->c:[Lcom/fusepowered/al/impl/sdk/bm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
